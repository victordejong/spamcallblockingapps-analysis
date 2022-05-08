package kotlinx.coroutines.test;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.test.TestCoroutineContext;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15045e;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001:\u0001<B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u0019J$\u0010\u001d\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J$\u0010\"\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J*\u0010#\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u00032\u0018\u0010\u001f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0004\u0012\u00020!0 J$\u0010$\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u00032\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020!0 J\u0006\u0010%\u001a\u00020\u001bJ\u0014\u0010&\u001a\u00020\u001b2\n\u0010'\u001a\u00060(j\u0002`)H\u0002J5\u0010*\u001a\u0002H+\"\u0004\b��\u0010+2\u0006\u0010,\u001a\u0002H+2\u0018\u0010-\u001a\u0014\u0012\u0004\u0012\u0002H+\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002H+0.H\u0016¢\u0006\u0002\u00100J(\u00101\u001a\u0004\u0018\u0001H2\"\b\b��\u00102*\u00020/2\f\u00103\u001a\b\u0012\u0004\u0012\u0002H204H\u0096\u0002¢\u0006\u0002\u00105J\u0014\u00106\u001a\u00020\u00012\n\u00103\u001a\u0006\u0012\u0002\b\u000304H\u0016J\u0010\u00107\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u0019J\u001c\u00108\u001a\u00020\u00122\n\u0010'\u001a\u00060(j\u0002`)2\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\b\u00109\u001a\u00020\u0006H\u0002J\b\u0010:\u001a\u00020\u0003H\u0016J\u0006\u0010;\u001a\u00020\u001bJ\u0010\u0010;\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00060\bR\u00020��X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u0015X\u0082\u0004¢\u0006\u0002\n��¨\u0006="}, m815d2 = {"Lkotlinx/coroutines/test/TestCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "name", "", "(Ljava/lang/String;)V", "counter", "", "ctxDispatcher", "Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;", "ctxHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "exceptions", "", "", "getExceptions", "()Ljava/util/List;", "queue", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/test/TimedRunnableObsolete;", "time", "uncaughtExceptions", "", "advanceTimeBy", "delayTime", "unit", "Ljava/util/concurrent/TimeUnit;", "advanceTimeTo", "", "targetTime", "assertAllUnhandledExceptions", "message", "predicate", "Lkotlin/Function1;", "", "assertAnyUnhandledException", "assertExceptions", "assertUnhandledException", "cancelAllActions", "enqueue", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", ExifInterface.LONGITUDE_EAST, Person.KEY_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "now", "postDelayed", "processNextEvent", "toString", "triggerActions", "Dispatcher", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContext.class */
public final class TestCoroutineContext implements AbstractC15049g {
    public long counter;
    public final Dispatcher ctxDispatcher;
    public final CoroutineExceptionHandler ctxHandler;
    public final String name;
    public final ThreadSafeHeap<TimedRunnableObsolete> queue;
    public long time;
    public final List<Throwable> uncaughtExceptions;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\b\u0082\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0016J\u001c\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u001e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0017"}, m815d2 = {"Lkotlinx/coroutines/test/TestCoroutineContext$Dispatcher;", "Lkotlinx/coroutines/EventLoop;", "Lkotlinx/coroutines/Delay;", "(Lkotlinx/coroutines/test/TestCoroutineContext;)V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "", "processNextEvent", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "shouldBeProcessedFromContext", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/test/TestCoroutineContext$Dispatcher.class */
    public final class Dispatcher extends EventLoop implements Delay {
        public Dispatcher() {
            EventLoop.incrementUseCount$default(this, false, 1, null);
        }

        @Override // kotlinx.coroutines.Delay
        public Object delay(long j, AbstractC15044d<? super C14989s> dVar) {
            return Delay.DefaultImpls.delay(this, j, dVar);
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public void dispatch(AbstractC15049g gVar, Runnable runnable) {
            TestCoroutineContext.this.enqueue(runnable);
        }

        @Override // kotlinx.coroutines.Delay
        public DisposableHandle invokeOnTimeout(long j, Runnable runnable) {
            final TimedRunnableObsolete postDelayed = TestCoroutineContext.this.postDelayed(runnable, j);
            return new DisposableHandle() { // from class: kotlinx.coroutines.test.TestCoroutineContext$Dispatcher$invokeOnTimeout$1
                @Override // kotlinx.coroutines.DisposableHandle
                public void dispose() {
                    ThreadSafeHeap threadSafeHeap;
                    threadSafeHeap = TestCoroutineContext.this.queue;
                    threadSafeHeap.remove(postDelayed);
                }
            };
        }

        @Override // kotlinx.coroutines.EventLoop
        public long processNextEvent() {
            return TestCoroutineContext.this.processNextEvent();
        }

        @Override // kotlinx.coroutines.Delay
        public void scheduleResumeAfterDelay(long j, final CancellableContinuation<? super C14989s> cancellableContinuation) {
            TestCoroutineContext.this.postDelayed(new Runnable() { // from class: kotlinx.coroutines.test.TestCoroutineContext$Dispatcher$scheduleResumeAfterDelay$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    cancellableContinuation.resumeUndispatched(TestCoroutineContext.Dispatcher.this, C14989s.f33022a);
                }
            }, j);
        }

        @Override // kotlinx.coroutines.EventLoop
        public boolean shouldBeProcessedFromContext() {
            return true;
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public String toString() {
            return "Dispatcher(" + TestCoroutineContext.this + ')';
        }
    }

    public TestCoroutineContext() {
        this(null, 1, null);
    }

    public TestCoroutineContext(String str) {
        this.name = str;
        this.uncaughtExceptions = new ArrayList();
        this.ctxDispatcher = new Dispatcher();
        this.ctxHandler = new C14872x96bc1e17(CoroutineExceptionHandler.Key, this);
        this.queue = new ThreadSafeHeap<>();
    }

    public /* synthetic */ TestCoroutineContext(String str, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str);
    }

    public static /* synthetic */ long advanceTimeBy$default(TestCoroutineContext testCoroutineContext, long j, TimeUnit timeUnit, int i, Object obj) {
        if ((i & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return testCoroutineContext.advanceTimeBy(j, timeUnit);
    }

    public static /* synthetic */ void advanceTimeTo$default(TestCoroutineContext testCoroutineContext, long j, TimeUnit timeUnit, int i, Object obj) {
        if ((i & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        testCoroutineContext.advanceTimeTo(j, timeUnit);
    }

    public static /* synthetic */ void assertAllUnhandledExceptions$default(TestCoroutineContext testCoroutineContext, String str, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        testCoroutineContext.assertAllUnhandledExceptions(str, lVar);
    }

    public static /* synthetic */ void assertAnyUnhandledException$default(TestCoroutineContext testCoroutineContext, String str, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        testCoroutineContext.assertAnyUnhandledException(str, lVar);
    }

    public static /* synthetic */ void assertExceptions$default(TestCoroutineContext testCoroutineContext, String str, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        testCoroutineContext.assertExceptions(str, lVar);
    }

    public static /* synthetic */ void assertUnhandledException$default(TestCoroutineContext testCoroutineContext, String str, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        testCoroutineContext.assertUnhandledException(str, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enqueue(Runnable runnable) {
        ThreadSafeHeap<TimedRunnableObsolete> threadSafeHeap = this.queue;
        long j = this.counter;
        this.counter = 1 + j;
        threadSafeHeap.addLast(new TimedRunnableObsolete(runnable, j, 0L, 4, null));
    }

    public static /* synthetic */ long now$default(TestCoroutineContext testCoroutineContext, TimeUnit timeUnit, int i, Object obj) {
        if ((i & 1) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return testCoroutineContext.now(timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TimedRunnableObsolete postDelayed(Runnable runnable, long j) {
        long j2 = this.counter;
        this.counter = 1 + j2;
        TimedRunnableObsolete timedRunnableObsolete = new TimedRunnableObsolete(runnable, j2, this.time + TimeUnit.MILLISECONDS.toNanos(j));
        this.queue.addLast(timedRunnableObsolete);
        return timedRunnableObsolete;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long processNextEvent() {
        TimedRunnableObsolete peek = this.queue.peek();
        if (peek != null) {
            triggerActions(peek.time);
        }
        return this.queue.isEmpty() ? Long.MAX_VALUE : 0L;
    }

    private final void triggerActions(long j) {
        TimedRunnableObsolete timedRunnableObsolete;
        while (true) {
            ThreadSafeHeap<TimedRunnableObsolete> threadSafeHeap = this.queue;
            synchronized (threadSafeHeap) {
                TimedRunnableObsolete firstImpl = threadSafeHeap.firstImpl();
                timedRunnableObsolete = null;
                timedRunnableObsolete = null;
                if (firstImpl != null) {
                    if (firstImpl.time <= j) {
                        timedRunnableObsolete = threadSafeHeap.removeAtImpl(0);
                    }
                }
            }
            TimedRunnableObsolete timedRunnableObsolete2 = timedRunnableObsolete;
            if (timedRunnableObsolete2 != null) {
                long j2 = timedRunnableObsolete2.time;
                if (j2 != 0) {
                    this.time = j2;
                }
                timedRunnableObsolete2.run();
            } else {
                return;
            }
        }
    }

    public final long advanceTimeBy(long j, TimeUnit timeUnit) {
        long j2 = this.time;
        advanceTimeTo(timeUnit.toNanos(j) + j2, TimeUnit.NANOSECONDS);
        return timeUnit.convert(this.time - j2, TimeUnit.NANOSECONDS);
    }

    public final void advanceTimeTo(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        triggerActions(nanos);
        if (nanos > this.time) {
            this.time = nanos;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void assertAllUnhandledExceptions(String str, AbstractC15118l<? super Throwable, Boolean> lVar) {
        boolean z;
        List<Throwable> list = this.uncaughtExceptions;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!lVar.invoke(it.next()).booleanValue()) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        if (z) {
            this.uncaughtExceptions.clear();
            return;
        }
        throw new AssertionError(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void assertAnyUnhandledException(String str, AbstractC15118l<? super Throwable, Boolean> lVar) {
        boolean z;
        List<Throwable> list = this.uncaughtExceptions;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (lVar.invoke(it.next()).booleanValue()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            this.uncaughtExceptions.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public final void assertExceptions(String str, AbstractC15118l<? super List<? extends Throwable>, Boolean> lVar) {
        if (lVar.invoke(this.uncaughtExceptions).booleanValue()) {
            this.uncaughtExceptions.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public final void assertUnhandledException(String str, AbstractC15118l<? super Throwable, Boolean> lVar) {
        if (this.uncaughtExceptions.size() != 1 || !lVar.invoke(this.uncaughtExceptions.get(0)).booleanValue()) {
            throw new AssertionError(str);
        }
        this.uncaughtExceptions.clear();
    }

    public final void cancelAllActions() {
        if (!this.queue.isEmpty()) {
            this.queue.clear();
        }
    }

    @Override // p626l.p634w.AbstractC15049g
    public <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
        return (R) pVar.invoke((Object) pVar.invoke(r, this.ctxDispatcher), this.ctxHandler);
    }

    @Override // p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        E e;
        if (cVar == AbstractC15045e.f33077M) {
            e = this.ctxDispatcher;
            if (e == null) {
                throw new C14986p("null cannot be cast to non-null type E");
            }
        } else if (cVar == CoroutineExceptionHandler.Key) {
            e = this.ctxHandler;
            if (e == null) {
                throw new C14986p("null cannot be cast to non-null type E");
            }
        } else {
            e = null;
        }
        return e;
    }

    public final List<Throwable> getExceptions() {
        return this.uncaughtExceptions;
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        return cVar == AbstractC15045e.f33077M ? this.ctxHandler : cVar == CoroutineExceptionHandler.Key ? this.ctxDispatcher : this;
    }

    public final long now(TimeUnit timeUnit) {
        return timeUnit.convert(this.time, TimeUnit.NANOSECONDS);
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g plus(AbstractC15049g gVar) {
        return AbstractC15049g.C15050a.m488a(this, gVar);
    }

    public String toString() {
        String str = this.name;
        if (str == null) {
            str = "TestCoroutineContext@" + DebugStringsKt.getHexAddress(this);
        }
        return str;
    }

    public final void triggerActions() {
        triggerActions(this.time);
    }
}
