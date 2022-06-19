package p067i.p068a.p082d.p086f.p090z;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p067i.p068a.p069a.p072e.AbstractC2026a;
import p067i.p068a.p069a.p072e.AbstractC2027b;
import p067i.p068a.p069a.p072e.AbstractC2029f;
import p067i.p068a.p069a.p072e.AbstractC2033j;
import p067i.p068a.p069a.p072e.C2028e;
import p067i.p068a.p069a.p072e.p073m.C2036c;
import p067i.p068a.p082d.p083c.C2084e;
import p067i.p068a.p082d.p086f.AbstractC2106m;
import p067i.p068a.p082d.p086f.p089y.AbstractC2116h;
/* renamed from: i.a.d.f.z.d$b */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/z/d$b.class */
final class d$b implements Runnable {

    /* renamed from: s */
    private static final Logger f5739s = Logger.getLogger(d$b.class.getName());

    /* renamed from: f */
    private final AbstractC2027b f5740f;

    /* renamed from: g */
    private final AbstractC2027b f5741g;

    /* renamed from: h */
    private final AbstractC2124g f5742h;

    /* renamed from: i */
    private final long f5743i;

    /* renamed from: j */
    private final int f5744j;

    /* renamed from: k */
    private final long f5745k;

    /* renamed from: l */
    private long f5746l;

    /* renamed from: m */
    private final Queue<AbstractC2106m> f5747m;

    /* renamed from: n */
    private final AtomicInteger f5748n;

    /* renamed from: o */
    private final BlockingQueue<Boolean> f5749o;

    /* renamed from: p */
    private final AtomicReference<C2084e> f5750p;

    /* renamed from: q */
    private volatile boolean f5751q;

    /* renamed from: r */
    private final ArrayList<AbstractC2116h> f5752r;

    private d$b(AbstractC2124g abstractC2124g, long j, int i, long j2, final Queue<AbstractC2106m> queue) {
        this.f5748n = new AtomicInteger(Integer.MAX_VALUE);
        this.f5750p = new AtomicReference<>();
        this.f5751q = true;
        this.f5742h = abstractC2124g;
        this.f5743i = j;
        this.f5744j = i;
        this.f5745k = j2;
        this.f5747m = queue;
        this.f5749o = new ArrayBlockingQueue(1);
        AbstractC2033j m345b = C2028e.m345b("io.opentelemetry.sdk.trace");
        m345b.m336a("queueSize").m340a("The number of spans queued").m339b("1").m337d(new Consumer() { // from class: i.a.d.f.z.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Queue queue2 = queue;
                ((AbstractC2026a) obj).m350a(queue2.size(), C2036c.m332b("spanProcessorType", d.a()));
            }
        }).m338c();
        AbstractC2029f m341c = m345b.m335b("processedSpans").m342b("1").m343a("The number of spans processed by the BatchSpanProcessor. [dropped=true if they were dropped due to high throughput]").m341c();
        this.f5740f = m341c.m344a(C2036c.m331c("spanProcessorType", d.a(), "dropped", "true"));
        this.f5741g = m341c.m344a(C2036c.m331c("spanProcessorType", d.a(), "dropped", "false"));
        this.f5752r = new ArrayList<>(i);
    }

    /* renamed from: d */
    public void m158d(AbstractC2106m abstractC2106m) {
        if (!this.f5747m.offer(abstractC2106m)) {
            this.f5740f.add(1L);
        } else if (this.f5747m.size() < this.f5748n.get()) {
        } else {
            this.f5749o.offer(Boolean.TRUE);
        }
    }

    /* renamed from: e */
    private void m157e() {
        if (this.f5752r.isEmpty()) {
            return;
        }
        try {
            try {
                C2084e m145R = this.f5742h.m145R(Collections.unmodifiableList(this.f5752r));
                m145R.m255d(this.f5745k, TimeUnit.NANOSECONDS);
                if (m145R.m256c()) {
                    this.f5741g.add(this.f5752r.size());
                } else {
                    f5739s.log(Level.FINE, "Exporter failed");
                }
            } catch (RuntimeException e) {
                f5739s.log(Level.WARNING, "Exporter threw an Exception", (Throwable) e);
            }
        } finally {
            this.f5752r.clear();
        }
    }

    /* renamed from: f */
    private void m156f() {
        int size = this.f5747m.size();
        while (size > 0) {
            this.f5752r.add(this.f5747m.poll().m216e());
            int i = size - 1;
            size = i;
            if (this.f5752r.size() >= this.f5744j) {
                m157e();
                size = i;
            }
        }
        m157e();
        this.f5750p.get().m251h();
        this.f5750p.set(null);
    }

    /* renamed from: g */
    public C2084e m155g() {
        if (this.f5750p.compareAndSet(null, new C2084e())) {
            this.f5749o.offer(Boolean.TRUE);
        }
        C2084e c2084e = this.f5750p.get();
        C2084e c2084e2 = c2084e;
        if (c2084e == null) {
            c2084e2 = C2084e.m252g();
        }
        return c2084e2;
    }

    /* renamed from: i */
    public static /* synthetic */ void m153i(C2084e c2084e, C2084e c2084e2, C2084e c2084e3) {
        if (!c2084e.m256c() || !c2084e2.m256c()) {
            c2084e3.m258a();
        } else {
            c2084e3.m251h();
        }
    }

    /* renamed from: j */
    public /* synthetic */ void m151k(final C2084e c2084e, final C2084e c2084e2) {
        this.f5751q = false;
        final C2084e shutdown = this.f5742h.shutdown();
        shutdown.m250i(new Runnable() { // from class: i.a.d.f.z.c
            @Override // java.lang.Runnable
            public final void run() {
                d$b.m153i(C2084e.this, shutdown, c2084e2);
            }
        });
    }

    /* renamed from: l */
    public C2084e m150l() {
        final C2084e c2084e = new C2084e();
        final C2084e m155g = m155g();
        m155g.m250i(new Runnable() { // from class: i.a.d.f.z.a
            @Override // java.lang.Runnable
            public final void run() {
                d$b.this.m151k(m155g, c2084e);
            }
        });
        return c2084e;
    }

    /* renamed from: m */
    private void m149m() {
        this.f5746l = System.nanoTime() + this.f5743i;
    }

    @Override // java.lang.Runnable
    public void run() {
        m149m();
        while (this.f5751q) {
            if (this.f5750p.get() != null) {
                m156f();
            }
            while (!this.f5747m.isEmpty() && this.f5752r.size() < this.f5744j) {
                this.f5752r.add(this.f5747m.poll().m216e());
            }
            if (this.f5752r.size() >= this.f5744j || System.nanoTime() >= this.f5746l) {
                m157e();
                m149m();
            }
            if (this.f5747m.isEmpty()) {
                try {
                    long nanoTime = this.f5746l - System.nanoTime();
                    if (nanoTime > 0) {
                        this.f5748n.set(this.f5744j - this.f5752r.size());
                        this.f5749o.poll(nanoTime, TimeUnit.NANOSECONDS);
                        this.f5748n.set(Integer.MAX_VALUE);
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }
}
