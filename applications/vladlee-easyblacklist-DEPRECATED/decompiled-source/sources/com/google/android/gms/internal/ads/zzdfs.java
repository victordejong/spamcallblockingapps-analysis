package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.security.AccessController;
import java.security.PrivilegedActionException;
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
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs.class */
public class zzdfs<V> extends zzdhv implements zzdhe<V> {

    /* renamed from: a */
    private static final boolean f14259a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: b */
    private static final Logger f14260b = Logger.getLogger(zzdfs.class.getName());

    /* renamed from: c */
    private static final AbstractC2430a f14261c;

    /* renamed from: d */
    private static final Object f14262d;
    @NullableDecl

    /* renamed from: e */
    private volatile Object f14263e;
    @NullableDecl

    /* renamed from: f */
    private volatile C2433d f14264f;
    @NullableDecl

    /* renamed from: g */
    private volatile C2440k f14265g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$a.class */
    public static abstract class AbstractC2430a {
        private AbstractC2430a() {
        }

        /* synthetic */ AbstractC2430a(byte b) {
            this();
        }

        /* renamed from: a */
        abstract void mo3553a(C2440k kVar, C2440k kVar2);

        /* renamed from: a */
        abstract void mo3552a(C2440k kVar, Thread thread);

        /* renamed from: a */
        abstract boolean mo3551a(zzdfs<?> zzdfsVar, C2433d dVar, C2433d dVar2);

        /* renamed from: a */
        abstract boolean mo3550a(zzdfs<?> zzdfsVar, C2440k kVar, C2440k kVar2);

        /* renamed from: a */
        abstract boolean mo3549a(zzdfs<?> zzdfsVar, Object obj, Object obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$b.class */
    public static final class C2431b {

        /* renamed from: a */
        static final C2431b f14266a = new C2431b(new abu("Failure occurred while trying to finish a future."));

        /* renamed from: b */
        final Throwable f14267b;

        C2431b(Throwable th) {
            this.f14267b = (Throwable) zzdei.checkNotNull(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$c.class */
    public static final class C2432c {

        /* renamed from: a */
        static final C2432c f14268a;

        /* renamed from: b */
        static final C2432c f14269b;

        /* renamed from: c */
        final boolean f14270c;
        @NullableDecl

        /* renamed from: d */
        final Throwable f14271d;

        static {
            if (zzdfs.f14259a) {
                f14269b = null;
                f14268a = null;
                return;
            }
            f14269b = new C2432c(false, null);
            f14268a = new C2432c(true, null);
        }

        C2432c(boolean z, @NullableDecl Throwable th) {
            this.f14270c = z;
            this.f14271d = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$d.class */
    public static final class C2433d {

        /* renamed from: a */
        static final C2433d f14272a = new C2433d(null, null);

        /* renamed from: b */
        final Runnable f14273b;

        /* renamed from: c */
        final Executor f14274c;
        @NullableDecl

        /* renamed from: d */
        C2433d f14275d;

        C2433d(Runnable runnable, Executor executor) {
            this.f14273b = runnable;
            this.f14274c = executor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$e.class */
    public static final class RunnableC2434e<V> implements Runnable {

        /* renamed from: a */
        final zzdfs<V> f14276a;

        /* renamed from: b */
        final zzdhe<? extends V> f14277b;

        RunnableC2434e(zzdfs<V> zzdfsVar, zzdhe<? extends V> zzdheVar) {
            this.f14276a = zzdfsVar;
            this.f14277b = zzdheVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((zzdfs) this.f14276a).f14263e == this) {
                if (zzdfs.f14261c.mo3549a((zzdfs<?>) this.f14276a, (Object) this, zzdfs.m3559c(this.f14277b))) {
                    zzdfs.m3556e(this.f14276a);
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdfs$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$f.class */
    static final class C2435f extends AbstractC2430a {

        /* renamed from: a */
        final AtomicReferenceFieldUpdater<C2440k, Thread> f14278a;

        /* renamed from: b */
        final AtomicReferenceFieldUpdater<C2440k, C2440k> f14279b;

        /* renamed from: c */
        final AtomicReferenceFieldUpdater<zzdfs, C2440k> f14280c;

        /* renamed from: d */
        final AtomicReferenceFieldUpdater<zzdfs, C2433d> f14281d;

        /* renamed from: e */
        final AtomicReferenceFieldUpdater<zzdfs, Object> f14282e;

        C2435f(AtomicReferenceFieldUpdater<C2440k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C2440k, C2440k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<zzdfs, C2440k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<zzdfs, C2433d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<zzdfs, Object> atomicReferenceFieldUpdater5) {
            super((byte) 0);
            this.f14278a = atomicReferenceFieldUpdater;
            this.f14279b = atomicReferenceFieldUpdater2;
            this.f14280c = atomicReferenceFieldUpdater3;
            this.f14281d = atomicReferenceFieldUpdater4;
            this.f14282e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3553a(C2440k kVar, C2440k kVar2) {
            this.f14279b.lazySet(kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3552a(C2440k kVar, Thread thread) {
            this.f14278a.lazySet(kVar, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3551a(zzdfs<?> zzdfsVar, C2433d dVar, C2433d dVar2) {
            return this.f14281d.compareAndSet(zzdfsVar, dVar, dVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3550a(zzdfs<?> zzdfsVar, C2440k kVar, C2440k kVar2) {
            return this.f14280c.compareAndSet(zzdfsVar, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3549a(zzdfs<?> zzdfsVar, Object obj, Object obj2) {
            return this.f14282e.compareAndSet(zzdfsVar, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$g.class */
    public interface AbstractC2436g<V> extends zzdhe<V> {
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdfs$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$h.class */
    static final class C2437h extends AbstractC2430a {
        private C2437h() {
            super((byte) 0);
        }

        /* synthetic */ C2437h(byte b) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3553a(C2440k kVar, C2440k kVar2) {
            kVar.f14291c = kVar2;
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3552a(C2440k kVar, Thread thread) {
            kVar.f14290b = thread;
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3551a(zzdfs<?> zzdfsVar, C2433d dVar, C2433d dVar2) {
            synchronized (zzdfsVar) {
                if (((zzdfs) zzdfsVar).f14264f != dVar) {
                    return false;
                }
                ((zzdfs) zzdfsVar).f14264f = dVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3550a(zzdfs<?> zzdfsVar, C2440k kVar, C2440k kVar2) {
            synchronized (zzdfsVar) {
                if (((zzdfs) zzdfsVar).f14265g != kVar) {
                    return false;
                }
                ((zzdfs) zzdfsVar).f14265g = kVar2;
                return true;
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3549a(zzdfs<?> zzdfsVar, Object obj, Object obj2) {
            synchronized (zzdfsVar) {
                if (((zzdfs) zzdfsVar).f14263e != obj) {
                    return false;
                }
                ((zzdfs) zzdfsVar).f14263e = obj2;
                return true;
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdfs$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$i.class */
    static final class C2438i extends AbstractC2430a {

        /* renamed from: a */
        static final Unsafe f14283a;

        /* renamed from: b */
        static final long f14284b;

        /* renamed from: c */
        static final long f14285c;

        /* renamed from: d */
        static final long f14286d;

        /* renamed from: e */
        static final long f14287e;

        /* renamed from: f */
        static final long f14288f;

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new abv());
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            }
            try {
                f14285c = unsafe.objectFieldOffset(zzdfs.class.getDeclaredField("waiters"));
                f14284b = unsafe.objectFieldOffset(zzdfs.class.getDeclaredField("listeners"));
                f14286d = unsafe.objectFieldOffset(zzdfs.class.getDeclaredField(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                f14287e = unsafe.objectFieldOffset(C2440k.class.getDeclaredField("b"));
                f14288f = unsafe.objectFieldOffset(C2440k.class.getDeclaredField("c"));
                f14283a = unsafe;
            } catch (Exception e3) {
                zzdem.zzg(e3);
                throw new RuntimeException(e3);
            }
        }

        private C2438i() {
            super((byte) 0);
        }

        /* synthetic */ C2438i(byte b) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3553a(C2440k kVar, C2440k kVar2) {
            f14283a.putObject(kVar, f14288f, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final void mo3552a(C2440k kVar, Thread thread) {
            f14283a.putObject(kVar, f14287e, thread);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3551a(zzdfs<?> zzdfsVar, C2433d dVar, C2433d dVar2) {
            return f14283a.compareAndSwapObject(zzdfsVar, f14284b, dVar, dVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3550a(zzdfs<?> zzdfsVar, C2440k kVar, C2440k kVar2) {
            return f14283a.compareAndSwapObject(zzdfsVar, f14285c, kVar, kVar2);
        }

        @Override // com.google.android.gms.internal.ads.zzdfs.AbstractC2430a
        /* renamed from: a */
        final boolean mo3549a(zzdfs<?> zzdfsVar, Object obj, Object obj2) {
            return f14283a.compareAndSwapObject(zzdfsVar, f14286d, obj, obj2);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.zzdfs$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$j.class */
    static class C2439j<V> extends zzdfs<V> implements AbstractC2436g<V> {
        @Override // com.google.android.gms.internal.ads.zzdfs, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) {
            return (V) zzdfs.super.get(j, timeUnit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzdfs$k */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfs$k.class */
    public static final class C2440k {

        /* renamed from: a */
        static final C2440k f14289a = new C2440k();
        @NullableDecl

        /* renamed from: b */
        volatile Thread f14290b;
        @NullableDecl

        /* renamed from: c */
        volatile C2440k f14291c;

        private C2440k() {
        }

        C2440k(byte b) {
            zzdfs.f14261c.mo3552a(this, Thread.currentThread());
        }

        /* renamed from: a */
        final void m3548a(C2440k kVar) {
            zzdfs.f14261c.mo3553a(this, kVar);
        }
    }

    static {
        Throwable th;
        Throwable th2;
        AbstractC2430a aVar;
        try {
            aVar = new C2438i((byte) 0);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th = th3;
            try {
                aVar = new C2435f(AtomicReferenceFieldUpdater.newUpdater(C2440k.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(C2440k.class, C2440k.class, "c"), AtomicReferenceFieldUpdater.newUpdater(zzdfs.class, C2440k.class, "g"), AtomicReferenceFieldUpdater.newUpdater(zzdfs.class, C2433d.class, "f"), AtomicReferenceFieldUpdater.newUpdater(zzdfs.class, Object.class, "e"));
                th2 = null;
            } catch (Throwable th4) {
                th2 = th4;
                aVar = new C2437h((byte) 0);
            }
        }
        f14261c = aVar;
        if (th2 != null) {
            f14260b.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            f14260b.logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th2);
        }
        f14262d = new Object();
    }

    /* renamed from: a */
    private static V m3570a(Object obj) {
        if (obj instanceof C2432c) {
            Throwable th = ((C2432c) obj).f14271d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (!(obj instanceof C2431b)) {
            V v = (V) obj;
            if (obj == f14262d) {
                v = null;
            }
            return v;
        } else {
            throw new ExecutionException(((C2431b) obj).f14267b);
        }
    }

    /* renamed from: a */
    private final void m3576a(C2440k kVar) {
        kVar.f14290b = null;
        while (true) {
            C2440k kVar2 = this.f14265g;
            if (kVar2 != C2440k.f14289a) {
                kVar2 = null;
                while (kVar2 != null) {
                    C2440k kVar3 = kVar2.f14291c;
                    if (kVar2.f14290b == null) {
                        if (kVar2 != null) {
                            kVar2.f14291c = kVar3;
                            kVar2 = kVar2;
                            if (kVar2.f14290b == null) {
                                break;
                            }
                        } else if (f14261c.mo3550a((zzdfs<?>) this, kVar2, kVar3)) {
                            kVar2 = kVar2;
                        }
                    }
                    kVar2 = kVar3;
                }
                return;
            }
            return;
        }
    }

    /* renamed from: a */
    private static void m3569a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f14260b;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    /* renamed from: a */
    private final void m3568a(StringBuilder sb) {
        try {
            Object b = m3562b((Future<Object>) this);
            sb.append("SUCCESS, result=[");
            sb.append(m3563b(b));
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

    /* renamed from: b */
    private static <V> V m3562b(Future<V> future) {
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

    /* renamed from: b */
    private final String m3563b(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static Object m3559c(zzdhe<?> zzdheVar) {
        Throwable zza;
        if (zzdheVar instanceof AbstractC2436g) {
            Object obj = ((zzdfs) zzdheVar).f14263e;
            Object obj2 = obj;
            if (obj instanceof C2432c) {
                C2432c cVar = (C2432c) obj;
                obj2 = obj;
                if (cVar.f14270c) {
                    obj2 = cVar.f14271d != null ? new C2432c(false, cVar.f14271d) : C2432c.f14269b;
                }
            }
            return obj2;
        } else if ((zzdheVar instanceof zzdhv) && (zza = zzdhy.zza((zzdhv) zzdheVar)) != null) {
            return new C2431b(zza);
        } else {
            boolean isCancelled = zzdheVar.isCancelled();
            if ((!f14259a) && isCancelled) {
                return C2432c.f14269b;
            }
            try {
                Object b = m3562b((Future<Object>) zzdheVar);
                if (!isCancelled) {
                    return b == null ? f14262d : b;
                }
                String valueOf = String.valueOf(zzdheVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new C2432c(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new C2432c(false, e);
                }
                String valueOf2 = String.valueOf(zzdheVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 77);
                sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
                sb2.append(valueOf2);
                return new C2431b(new IllegalArgumentException(sb2.toString(), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new C2431b(e2.getCause());
                }
                String valueOf3 = String.valueOf(zzdheVar);
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 84);
                sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb3.append(valueOf3);
                return new C2432c(false, new IllegalArgumentException(sb3.toString(), e2));
            } catch (Throwable th) {
                return new C2431b(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.zzdfs$a] */
    /* renamed from: e */
    public static void m3556e(zzdfs<?> zzdfsVar) {
        C2433d dVar;
        C2433d dVar2;
        C2433d dVar3 = null;
        zzdfs zzdfsVar2 = zzdfsVar;
        while (true) {
            C2440k kVar = zzdfsVar2.f14265g;
            if (f14261c.mo3550a((zzdfs<?>) zzdfsVar2, kVar, C2440k.f14289a)) {
                while (kVar != null) {
                    Thread thread = kVar.f14290b;
                    if (thread != null) {
                        kVar.f14290b = null;
                        LockSupport.unpark(thread);
                    }
                    kVar = kVar.f14291c;
                }
                zzdfsVar2.mo3566b();
                do {
                    dVar = zzdfsVar2.f14264f;
                } while (!f14261c.mo3551a((zzdfs<?>) zzdfsVar2, dVar, C2433d.f14272a));
                C2433d dVar4 = dVar;
                while (true) {
                    dVar2 = dVar3;
                    if (dVar4 != null) {
                        dVar4 = dVar4.f14275d;
                        dVar4.f14275d = dVar3;
                        dVar3 = dVar4;
                    }
                }
                while (dVar2 != null) {
                    C2433d dVar5 = dVar2.f14275d;
                    Runnable runnable = dVar2.f14273b;
                    if (runnable instanceof RunnableC2434e) {
                        RunnableC2434e eVar = (RunnableC2434e) runnable;
                        zzdfs zzdfsVar3 = (zzdfs<V>) eVar.f14276a;
                        if (zzdfsVar3.f14263e == eVar) {
                            dVar3 = dVar5;
                            zzdfsVar2 = zzdfsVar3;
                            if (!f14261c.mo3549a(zzdfsVar3, eVar, m3559c(eVar.f14277b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m3569a(runnable, dVar2.f14274c);
                    }
                    dVar2 = dVar5;
                }
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NullableDecl
    /* renamed from: a */
    public String mo3577a() {
        Object obj = this.f14263e;
        if (obj instanceof RunnableC2434e) {
            String b = m3563b((Object) ((RunnableC2434e) obj).f14277b);
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 12);
            sb.append("setFuture=[");
            sb.append(b);
            sb.append("]");
            return sb.toString();
        } else if (!(this instanceof ScheduledFuture)) {
            return null;
        } else {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("remaining delay=[");
            sb2.append(delay);
            sb2.append(" ms]");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3567a(@NullableDecl Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m3558d());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m3571a(zzdhe<? extends V> zzdheVar) {
        C2431b bVar;
        zzdei.checkNotNull(zzdheVar);
        Object obj = this.f14263e;
        Object obj2 = obj;
        if (obj == null) {
            if (zzdheVar.isDone()) {
                if (!f14261c.mo3549a((zzdfs<?>) this, (Object) null, m3559c(zzdheVar))) {
                    return false;
                }
                m3556e(this);
                return true;
            }
            RunnableC2434e eVar = new RunnableC2434e(this, zzdheVar);
            if (f14261c.mo3549a((zzdfs<?>) this, (Object) null, (Object) eVar)) {
                try {
                    zzdheVar.addListener(eVar, acj.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        bVar = new C2431b(th);
                    } catch (Throwable th2) {
                        bVar = C2431b.f14266a;
                    }
                    f14261c.mo3549a((zzdfs<?>) this, (Object) eVar, (Object) bVar);
                    return true;
                }
            } else {
                obj2 = this.f14263e;
            }
        }
        if (!(obj2 instanceof C2432c)) {
            return false;
        }
        zzdheVar.cancel(((C2432c) obj2).f14270c);
        return false;
    }

    public void addListener(Runnable runnable, Executor executor) {
        C2433d dVar;
        zzdei.checkNotNull(runnable, "Runnable was null.");
        zzdei.checkNotNull(executor, "Executor was null.");
        if (!isDone()) {
            C2433d dVar2 = this.f14264f;
            if (dVar2 != C2433d.f14272a) {
                C2433d dVar3 = new C2433d(runnable, executor);
                do {
                    dVar3.f14275d = dVar2;
                    if (!f14261c.mo3551a((zzdfs<?>) this, dVar2, dVar3)) {
                        dVar = this.f14264f;
                        dVar2 = dVar;
                    } else {
                        return;
                    }
                } while (dVar != C2433d.f14272a);
            }
        }
        m3569a(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo3566b() {
    }

    /* renamed from: c */
    protected void mo3561c() {
    }

    public boolean cancel(boolean z) {
        boolean z2;
        Object obj = this.f14263e;
        if ((obj == null) || (obj instanceof RunnableC2434e)) {
            C2432c cVar = f14259a ? new C2432c(z, new CancellationException("Future.cancel() was called.")) : z ? C2432c.f14268a : C2432c.f14269b;
            z2 = false;
            zzdfs<V> zzdfsVar = this;
            while (true) {
                if (f14261c.mo3549a((zzdfs<?>) zzdfsVar, obj, (Object) cVar)) {
                    if (z) {
                        zzdfsVar.mo3561c();
                    }
                    m3556e(zzdfsVar);
                    z2 = true;
                    if (!(obj instanceof RunnableC2434e)) {
                        break;
                    }
                    zzdhe<? extends V> zzdheVar = ((RunnableC2434e) obj).f14277b;
                    if (!(zzdheVar instanceof AbstractC2436g)) {
                        zzdheVar.cancel(z);
                        z2 = true;
                        break;
                    }
                    zzdfsVar = (zzdfs) zzdheVar;
                    obj = zzdfsVar.f14263e;
                    if (!(obj == null) && !(obj instanceof RunnableC2434e)) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                } else {
                    Object obj2 = zzdfsVar.f14263e;
                    obj = obj2;
                    if (!(obj2 instanceof RunnableC2434e)) {
                        break;
                    }
                }
            }
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final boolean m3558d() {
        Object obj = this.f14263e;
        return (obj instanceof C2432c) && ((C2432c) obj).f14270c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdhv
    @NullableDecl
    /* renamed from: e */
    public final Throwable mo3543e() {
        if (!(this instanceof AbstractC2436g)) {
            return null;
        }
        Object obj = this.f14263e;
        if (obj instanceof C2431b) {
            return ((C2431b) obj).f14267b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x0076;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        r0 = r5.f14263e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
        if (r0 == null) goto L_0x0064;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdfs.RunnableC2434e))) == false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0075, code lost:
        return (V) m3570a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0076, code lost:
        m3576a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0082, code lost:
        throw new java.lang.InterruptedException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x009c
            r0 = r5
            java.lang.Object r0 = r0.f14263e
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0014
            r0 = 1
            r7 = r0
            goto L_0x0016
        L_0x0014:
            r0 = 0
            r7 = r0
        L_0x0016:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdfs.RunnableC2434e
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r6
            java.lang.Object r0 = m3570a(r0)
            return r0
        L_0x0026:
            r0 = r5
            com.google.android.gms.internal.ads.zzdfs$k r0 = r0.f14265g
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.zzdfs$k r1 = com.google.android.gms.internal.ads.zzdfs.C2440k.f14289a
            if (r0 == r1) goto L_0x0094
            com.google.android.gms.internal.ads.zzdfs$k r0 = new com.google.android.gms.internal.ads.zzdfs$k
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r8 = r0
        L_0x003b:
            r0 = r8
            r1 = r6
            r0.m3548a(r1)
            com.google.android.gms.internal.ads.zzdfs$a r0 = com.google.android.gms.internal.ads.zzdfs.f14261c
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo3550a(r1, r2, r3)
            if (r0 == 0) goto L_0x0083
        L_0x004c:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L_0x0076
            r0 = r5
            java.lang.Object r0 = r0.f14263e
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0064
            r0 = 1
            r7 = r0
            goto L_0x0066
        L_0x0064:
            r0 = 0
            r7 = r0
        L_0x0066:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zzdfs.RunnableC2434e
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004c
            r0 = r6
            java.lang.Object r0 = m3570a(r0)
            return r0
        L_0x0076:
            r0 = r5
            r1 = r8
            r0.m3576a(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0083:
            r0 = r5
            com.google.android.gms.internal.ads.zzdfs$k r0 = r0.f14265g
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.zzdfs$k r1 = com.google.android.gms.internal.ads.zzdfs.C2440k.f14289a
            if (r0 != r1) goto L_0x003b
        L_0x0094:
            r0 = r5
            java.lang.Object r0 = r0.f14263e
            java.lang.Object r0 = m3570a(r0)
            return r0
        L_0x009c:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdfs.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        if (java.lang.Thread.interrupted() != false) goto L_0x00d4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
        r0 = r6.f14263e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
        if (r0 == null) goto L_0x00a0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009a, code lost:
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ad, code lost:
        if ((r13 & (!(r0 instanceof com.google.android.gms.internal.ads.zzdfs.RunnableC2434e))) == false) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b5, code lost:
        return (V) m3570a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b6, code lost:
        r16 = r14 - java.lang.System.nanoTime();
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c8, code lost:
        if (r16 >= 1000) goto L_0x0083;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cb, code lost:
        m3576a(r0);
        r16 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d4, code lost:
        m3576a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e1, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6, types: [long] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r7, java.util.concurrent.TimeUnit r9) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdfs.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean isCancelled() {
        return this.f14263e instanceof C2432c;
    }

    public boolean isDone() {
        Object obj = this.f14263e;
        return (!(obj instanceof RunnableC2434e)) & (obj != null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean set(@NullableDecl V v) {
        Object obj = v;
        if (v == null) {
            obj = f14262d;
        }
        if (!f14261c.mo3549a((zzdfs<?>) this, (Object) null, obj)) {
            return false;
        }
        m3556e(this);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean setException(Throwable th) {
        if (!f14261c.mo3549a((zzdfs<?>) this, (Object) null, (Object) new C2431b((Throwable) zzdei.checkNotNull(th)))) {
            return false;
        }
        m3556e(this);
        return true;
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            str2 = "CANCELLED";
        } else {
            if (!isDone()) {
                try {
                    str = mo3577a();
                } catch (RuntimeException e) {
                    String valueOf = String.valueOf(e.getClass());
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 38);
                    sb2.append("Exception thrown from implementation: ");
                    sb2.append(valueOf);
                    str = sb2.toString();
                }
                if (str != null && !str.isEmpty()) {
                    sb.append("PENDING, info=[");
                    sb.append(str);
                    sb.append("]");
                    sb.append("]");
                    return sb.toString();
                } else if (!isDone()) {
                    str2 = "PENDING";
                }
            }
            m3568a(sb);
            sb.append("]");
            return sb.toString();
        }
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
