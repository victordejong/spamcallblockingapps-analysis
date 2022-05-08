package androidx.work.impl.utils.futures;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture.class */
public abstract class AbstractFuture<V> implements ListenableFuture<V> {
    static final AtomicHelper ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    @Nullable
    volatile Listener listeners;
    @Nullable
    volatile Object value;
    @Nullable
    volatile Waiter waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    private static final Logger log = Logger.getLogger(AbstractFuture.class.getName());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$AtomicHelper.class */
    public static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean casListeners(AbstractFuture<?> abstractFuture, Listener listener, Listener listener2);

        abstract boolean casValue(AbstractFuture<?> abstractFuture, Object obj, Object obj2);

        abstract boolean casWaiters(AbstractFuture<?> abstractFuture, Waiter waiter, Waiter waiter2);

        abstract void putNext(Waiter waiter, Waiter waiter2);

        abstract void putThread(Waiter waiter, Thread thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Cancellation.class */
    public static final class Cancellation {
        static final Cancellation CAUSELESS_CANCELLED;
        static final Cancellation CAUSELESS_INTERRUPTED;
        @Nullable
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
                return;
            }
            CAUSELESS_CANCELLED = new Cancellation(false, null);
            CAUSELESS_INTERRUPTED = new Cancellation(true, null);
        }

        Cancellation(boolean z, @Nullable Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Failure.class */
    public static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
        final Throwable exception;

        Failure(Throwable th) {
            this.exception = (Throwable) AbstractFuture.checkNotNull(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Listener.class */
    public static final class Listener {
        static final Listener TOMBSTONE = new Listener(null, null);
        final Executor executor;
        @Nullable
        Listener next;
        final Runnable task;

        Listener(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$SafeAtomicHelper.class */
    private static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractFuture, Waiter> waitersUpdater;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casListeners(AbstractFuture<?> abstractFuture, Listener listener, Listener listener2) {
            return this.listenersUpdater.compareAndSet(abstractFuture, listener, listener2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casValue(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(abstractFuture, obj, obj2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casWaiters(AbstractFuture<?> abstractFuture, Waiter waiter, Waiter waiter2) {
            return this.waitersUpdater.compareAndSet(abstractFuture, waiter, waiter2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            this.waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            this.waiterThreadUpdater.lazySet(waiter, thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$SetFuture.class */
    public static final class SetFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractFuture<V> owner;

        SetFuture(AbstractFuture<V> abstractFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value == this) {
                if (AbstractFuture.ATOMIC_HELPER.casValue(this.owner, this, AbstractFuture.getFutureValue(this.future))) {
                    AbstractFuture.complete(this.owner);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper.class */
    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casListeners(AbstractFuture<?> abstractFuture, Listener listener, Listener listener2) {
            synchronized (abstractFuture) {
                if (abstractFuture.listeners != listener) {
                    return false;
                }
                abstractFuture.listeners = listener2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casValue(AbstractFuture<?> abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                if (abstractFuture.value != obj) {
                    return false;
                }
                abstractFuture.value = obj2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        boolean casWaiters(AbstractFuture<?> abstractFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractFuture) {
                if (abstractFuture.waiters != waiter) {
                    return false;
                }
                abstractFuture.waiters = waiter2;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            waiter.next = waiter2;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            waiter.thread = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/futures/AbstractFuture$Waiter.class */
    public static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);
        @Nullable
        volatile Waiter next;
        @Nullable
        volatile Thread thread;

        Waiter() {
            AbstractFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
        }

        Waiter(boolean z) {
        }

        void setNext(Waiter waiter) {
            AbstractFuture.ATOMIC_HELPER.putNext(this, waiter);
        }

        void unpark() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        Throwable th;
        AtomicHelper atomicHelper;
        try {
            atomicHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "next"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Waiter.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Listener.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, FirebaseAnalytics.Param.VALUE));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            atomicHelper = new SynchronizedHelper();
        }
        ATOMIC_HELPER = atomicHelper;
        if (th != null) {
            log.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        NULL = new Object();
    }

    private void addDoneString(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append("SUCCESS, result=[");
            sb.append(userObjectToString(uninterruptibly));
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    private static CancellationException cancellationExceptionWithCause(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    @NonNull
    static <T> T checkNotNull(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    private Listener clearListeners(Listener listener) {
        do {
            listener = this.listeners;
        } while (!ATOMIC_HELPER.casListeners(this, listener, Listener.TOMBSTONE));
        while (listener != null) {
            listener = listener.next;
            listener.next = listener;
        }
        return listener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.work.impl.utils.futures.AbstractFuture, androidx.work.impl.utils.futures.AbstractFuture<V>] */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.work.impl.utils.futures.AbstractFuture$AtomicHelper] */
    static void complete(AbstractFuture<?> abstractFuture) {
        Listener listener;
        AbstractFuture<V> abstractFuture2;
        Listener listener2 = null;
        while (true) {
            abstractFuture.releaseWaiters();
            abstractFuture.afterDone();
            Listener clearListeners = abstractFuture.clearListeners(listener2);
            while (clearListeners != null) {
                listener = clearListeners.next;
                Runnable runnable = clearListeners.task;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractFuture2 = setFuture.owner;
                    if (abstractFuture2.value == setFuture) {
                        if (ATOMIC_HELPER.casValue(abstractFuture2, setFuture, getFutureValue(setFuture.future))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    executeListener(runnable, clearListeners.executor);
                }
                clearListeners = listener;
            }
            return;
            listener2 = listener;
            abstractFuture = abstractFuture2;
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = log;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V getDoneValue(Object obj) throws ExecutionException {
        if (obj instanceof Cancellation) {
            throw cancellationExceptionWithCause("Task was cancelled.", ((Cancellation) obj).cause);
        } else if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).exception);
        } else if (obj == NULL) {
            return null;
        } else {
            return obj;
        }
    }

    static Object getFutureValue(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) listenableFuture).value;
            Object obj2 = obj;
            if (obj instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) obj;
                obj2 = obj;
                if (cancellation.wasInterrupted) {
                    obj2 = cancellation.cause != null ? new Cancellation(false, cancellation.cause) : Cancellation.CAUSELESS_CANCELLED;
                }
            }
            return obj2;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && isCancelled) {
            return Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object uninterruptibly = getUninterruptibly(listenableFuture);
            Object obj3 = uninterruptibly;
            if (uninterruptibly == null) {
                obj3 = NULL;
            }
            return obj3;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new Cancellation(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    private static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private void releaseWaiters() {
        Waiter waiter;
        do {
            waiter = this.waiters;
        } while (!ATOMIC_HELPER.casWaiters(this, waiter, Waiter.TOMBSTONE));
        while (waiter != null) {
            waiter.unpark();
            waiter = waiter.next;
        }
    }

    private void removeWaiter(Waiter waiter) {
        waiter.thread = null;
        while (true) {
            Waiter waiter2 = this.waiters;
            if (waiter2 != Waiter.TOMBSTONE) {
                Waiter waiter3 = null;
                while (waiter2 != null) {
                    Waiter waiter4 = waiter2.next;
                    if (waiter2.thread != null) {
                        waiter3 = waiter2;
                    } else if (waiter3 != null) {
                        waiter3.next = waiter4;
                        waiter3 = waiter3;
                        if (waiter3.thread == null) {
                            break;
                        }
                    } else {
                        waiter3 = waiter3;
                        if (!ATOMIC_HELPER.casWaiters(this, waiter2, waiter4)) {
                            break;
                        }
                    }
                    waiter2 = waiter4;
                }
                return;
            }
            return;
        }
    }

    private String userObjectToString(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        Listener listener;
        checkNotNull(runnable);
        checkNotNull(executor);
        Listener listener2 = this.listeners;
        if (listener2 != Listener.TOMBSTONE) {
            Listener listener3 = new Listener(runnable, executor);
            do {
                listener3.next = listener2;
                if (!ATOMIC_HELPER.casListeners(this, listener2, listener3)) {
                    listener = this.listeners;
                    listener2 = listener;
                } else {
                    return;
                }
            } while (listener != Listener.TOMBSTONE);
            executeListener(runnable, executor);
        }
        executeListener(runnable, executor);
    }

    protected void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.value;
        if ((obj == null) || (obj instanceof SetFuture)) {
            Cancellation cancellation = GENERATE_CANCELLATION_CAUSES ? new Cancellation(z, new CancellationException("Future.cancel() was called.")) : z ? Cancellation.CAUSELESS_INTERRUPTED : Cancellation.CAUSELESS_CANCELLED;
            z2 = false;
            AbstractFuture<V> abstractFuture = this;
            while (true) {
                if (ATOMIC_HELPER.casValue(abstractFuture, obj, cancellation)) {
                    if (z) {
                        abstractFuture.interruptTask();
                    }
                    complete(abstractFuture);
                    z2 = true;
                    if (!(obj instanceof SetFuture)) {
                        break;
                    }
                    ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj).future;
                    if (!(listenableFuture instanceof AbstractFuture)) {
                        listenableFuture.cancel(z);
                        z2 = true;
                        break;
                    }
                    abstractFuture = (AbstractFuture) listenableFuture;
                    obj = abstractFuture.value;
                    z2 = true;
                    if (!(obj == null) && !(obj instanceof SetFuture)) {
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = abstractFuture.value;
                    obj = obj2;
                    if (!(obj2 instanceof SetFuture)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0060, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0067, code lost:
        if (java.lang.Thread.interrupted() == false) goto L_0x0078;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
        removeWaiter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0077, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
        r0 = r5.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
        if (r0 == null) goto L_0x0086;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0086, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
        if ((r0 instanceof androidx.work.impl.utils.futures.AbstractFuture.SetFuture) != false) goto L_0x0094;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008f, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
        if ((r7 & r8) == false) goto L_0x0060;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a1, code lost:
        return getDoneValue(r0);
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get() throws java.lang.InterruptedException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.AbstractFuture.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0097, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a0, code lost:
        if (java.lang.Thread.interrupted() == false) goto L_0x00b1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
        removeWaiter(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b0, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
        r0 = r6.value;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b9, code lost:
        if (r0 == null) goto L_0x00c2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c2, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ca, code lost:
        if ((r0 instanceof androidx.work.impl.utils.futures.AbstractFuture.SetFuture) != false) goto L_0x00d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d3, code lost:
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00db, code lost:
        if ((r13 & r14) == false) goto L_0x00e5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e4, code lost:
        return getDoneValue(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e5, code lost:
        r17 = r15 - java.lang.System.nanoTime();
        r10 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f7, code lost:
        if (r17 >= 1000) goto L_0x0097;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00fa, code lost:
        removeWaiter(r0);
        r17 = r17;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v6, types: [long] */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(long r7, java.util.concurrent.TimeUnit r9) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException, java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.AbstractFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    protected void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.value;
        boolean z = false;
        boolean z2 = obj != null;
        if (!(obj instanceof SetFuture)) {
            z = true;
        }
        return z2 & z;
    }

    final void maybePropagateCancellationTo(@Nullable Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    @Nullable
    protected String pendingToString() {
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            return "setFuture=[" + userObjectToString(((SetFuture) obj).future) + "]";
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean set(@Nullable V v) {
        Object obj = v;
        if (v == null) {
            obj = NULL;
        }
        if (!ATOMIC_HELPER.casValue(this, null, obj)) {
            return false;
        }
        complete(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setException(Throwable th) {
        if (!ATOMIC_HELPER.casValue(this, null, new Failure((Throwable) checkNotNull(th)))) {
            return false;
        }
        complete(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        checkNotNull(listenableFuture);
        Object obj = this.value;
        Object obj2 = obj;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!ATOMIC_HELPER.casValue(this, null, getFutureValue(listenableFuture))) {
                    return false;
                }
                complete(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, listenableFuture);
            if (ATOMIC_HELPER.casValue(this, null, setFuture)) {
                try {
                    listenableFuture.addListener(setFuture, DirectExecutor.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable th2) {
                        failure = Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.casValue(this, setFuture, failure);
                    return true;
                }
            } else {
                obj2 = this.value;
            }
        }
        if (!(obj2 instanceof Cancellation)) {
            return false;
        }
        listenableFuture.cancel(((Cancellation) obj2).wasInterrupted);
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            addDoneString(sb);
        } else {
            try {
                str = pendingToString();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                addDoneString(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    protected final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof Cancellation) && ((Cancellation) obj).wasInterrupted;
    }
}
