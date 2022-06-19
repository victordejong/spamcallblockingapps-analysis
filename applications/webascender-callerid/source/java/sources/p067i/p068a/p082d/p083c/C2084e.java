package p067i.p068a.p082d.p083c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i.a.d.c.e */
/* loaded from: classes2-dex2jar.jar:i/a/d/c/e.class */
public final class C2084e {

    /* renamed from: d */
    private static final C2084e f5680d;

    /* renamed from: a */
    private Boolean f5681a = null;

    /* renamed from: b */
    private final List<Runnable> f5682b = new ArrayList();

    /* renamed from: c */
    private final Object f5683c = new Object();

    static {
        C2084e c2084e = new C2084e();
        c2084e.m251h();
        f5680d = c2084e;
        new C2084e().m258a();
    }

    /* renamed from: e */
    public static /* synthetic */ void m254e(C2084e c2084e, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, C2084e c2084e2) {
        if (!c2084e.m256c()) {
            atomicBoolean.set(true);
        }
        if (atomicInteger.decrementAndGet() == 0) {
            if (atomicBoolean.get()) {
                c2084e2.m258a();
            } else {
                c2084e2.m251h();
            }
        }
    }

    /* renamed from: f */
    public static C2084e m253f(Collection<C2084e> collection) {
        if (collection.isEmpty()) {
            return m252g();
        }
        final C2084e c2084e = new C2084e();
        final AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (C2084e c2084e2 : collection) {
            c2084e2.m250i(new Runnable() { // from class: i.a.d.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    C2084e.m254e(C2084e.this, atomicBoolean, atomicInteger, c2084e);
                }
            });
        }
        return c2084e;
    }

    /* renamed from: g */
    public static C2084e m252g() {
        return f5680d;
    }

    /* renamed from: a */
    public C2084e m258a() {
        synchronized (this.f5683c) {
            if (this.f5681a == null) {
                this.f5681a = Boolean.FALSE;
                for (Runnable runnable : this.f5682b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: b */
    public boolean m257b() {
        boolean z;
        synchronized (this.f5683c) {
            z = this.f5681a != null;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m256c() {
        boolean z;
        synchronized (this.f5683c) {
            Boolean bool = this.f5681a;
            z = bool != null && bool.booleanValue();
        }
        return z;
    }

    /* renamed from: d */
    public C2084e m255d(long j, TimeUnit timeUnit) {
        if (m257b()) {
            return this;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        m250i(new Runnable() { // from class: i.a.d.c.b
            @Override // java.lang.Runnable
            public final void run() {
                countDownLatch.countDown();
            }
        });
        try {
            if (!countDownLatch.await(j, timeUnit)) {
                return this;
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        return this;
    }

    /* renamed from: h */
    public C2084e m251h() {
        synchronized (this.f5683c) {
            if (this.f5681a == null) {
                this.f5681a = Boolean.TRUE;
                for (Runnable runnable : this.f5682b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: i */
    public C2084e m250i(Runnable runnable) {
        synchronized (this.f5683c) {
            if (this.f5681a != null) {
                runnable.run();
            } else {
                this.f5682b.add(runnable);
            }
        }
        return this;
    }
}
