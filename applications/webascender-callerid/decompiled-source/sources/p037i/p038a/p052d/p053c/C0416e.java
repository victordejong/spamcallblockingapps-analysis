package p037i.p038a.p052d.p053c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i.a.d.c.e */
/* loaded from: classes2-dex2jar.jar:i/a/d/c/e.class */
public final class C0416e {

    /* renamed from: d */
    private static final C0416e f1001d;

    /* renamed from: a */
    private Boolean f1002a = null;

    /* renamed from: b */
    private final List<Runnable> f1003b = new ArrayList();

    /* renamed from: c */
    private final Object f1004c = new Object();

    static {
        C0416e eVar = new C0416e();
        eVar.m251h();
        f1001d = eVar;
        new C0416e().m258a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m254e(C0416e eVar, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, C0416e eVar2) {
        if (!eVar.m256c()) {
            atomicBoolean.set(true);
        }
        if (atomicInteger.decrementAndGet() != 0) {
            return;
        }
        if (atomicBoolean.get()) {
            eVar2.m258a();
        } else {
            eVar2.m251h();
        }
    }

    /* renamed from: f */
    public static C0416e m253f(Collection<C0416e> collection) {
        if (collection.isEmpty()) {
            return m252g();
        }
        final C0416e eVar = new C0416e();
        final AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (final C0416e eVar2 : collection) {
            eVar2.m250i(new Runnable() { // from class: i.a.d.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    C0416e.m254e(C0416e.this, atomicBoolean, atomicInteger, eVar);
                }
            });
        }
        return eVar;
    }

    /* renamed from: g */
    public static C0416e m252g() {
        return f1001d;
    }

    /* renamed from: a */
    public C0416e m258a() {
        synchronized (this.f1004c) {
            if (this.f1002a == null) {
                this.f1002a = Boolean.FALSE;
                for (Runnable runnable : this.f1003b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: b */
    public boolean m257b() {
        boolean z;
        synchronized (this.f1004c) {
            z = this.f1002a != null;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m256c() {
        boolean z;
        synchronized (this.f1004c) {
            Boolean bool = this.f1002a;
            z = bool != null && bool.booleanValue();
        }
        return z;
    }

    /* renamed from: d */
    public C0416e m255d(long j, TimeUnit timeUnit) {
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
    public C0416e m251h() {
        synchronized (this.f1004c) {
            if (this.f1002a == null) {
                this.f1002a = Boolean.TRUE;
                for (Runnable runnable : this.f1003b) {
                    runnable.run();
                }
            }
        }
        return this;
    }

    /* renamed from: i */
    public C0416e m250i(Runnable runnable) {
        synchronized (this.f1004c) {
            if (this.f1002a != null) {
                runnable.run();
            } else {
                this.f1003b.add(runnable);
            }
        }
        return this;
    }
}
