package p037i.p038a.p052d.p056f.p060z;

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
import p037i.p038a.p039a.p042e.AbstractC0358a;
import p037i.p038a.p039a.p042e.AbstractC0359b;
import p037i.p038a.p039a.p042e.AbstractC0361f;
import p037i.p038a.p039a.p042e.AbstractC0365j;
import p037i.p038a.p039a.p042e.C0360e;
import p037i.p038a.p039a.p042e.p043m.C0368c;
import p037i.p038a.p052d.p053c.C0416e;
import p037i.p038a.p052d.p056f.AbstractC0438m;
import p037i.p038a.p052d.p056f.p059y.AbstractC0448h;
/* renamed from: i.a.d.f.z.d$b */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/z/d$b.class */
final class d$b implements Runnable {

    /* renamed from: s */
    private static final Logger f1060s = Logger.getLogger(d$b.class.getName());

    /* renamed from: f */
    private final AbstractC0359b f1061f;

    /* renamed from: g */
    private final AbstractC0359b f1062g;

    /* renamed from: h */
    private final AbstractC0456g f1063h;

    /* renamed from: i */
    private final long f1064i;

    /* renamed from: j */
    private final int f1065j;

    /* renamed from: k */
    private final long f1066k;

    /* renamed from: l */
    private long f1067l;

    /* renamed from: m */
    private final Queue<AbstractC0438m> f1068m;

    /* renamed from: n */
    private final AtomicInteger f1069n;

    /* renamed from: o */
    private final BlockingQueue<Boolean> f1070o;

    /* renamed from: p */
    private final AtomicReference<C0416e> f1071p;

    /* renamed from: q */
    private volatile boolean f1072q;

    /* renamed from: r */
    private final ArrayList<AbstractC0448h> f1073r;

    private d$b(AbstractC0456g gVar, long j, int i, long j2, final Queue<AbstractC0438m> queue) {
        this.f1069n = new AtomicInteger(Integer.MAX_VALUE);
        this.f1071p = new AtomicReference<>();
        this.f1072q = true;
        this.f1063h = gVar;
        this.f1064i = j;
        this.f1065j = i;
        this.f1066k = j2;
        this.f1068m = queue;
        this.f1070o = new ArrayBlockingQueue(1);
        AbstractC0365j b = C0360e.m345b("io.opentelemetry.sdk.trace");
        b.m336a("queueSize").m340a("The number of spans queued").m339b("1").m337d(new Consumer() { // from class: i.a.d.f.z.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Queue queue2 = queue;
                ((AbstractC0358a) obj).m350a(queue2.size(), C0368c.m332b("spanProcessorType", d.a()));
            }
        }).m338c();
        AbstractC0361f c = b.m335b("processedSpans").m342b("1").m343a("The number of spans processed by the BatchSpanProcessor. [dropped=true if they were dropped due to high throughput]").m341c();
        this.f1061f = c.m344a(C0368c.m331c("spanProcessorType", d.a(), "dropped", "true"));
        this.f1062g = c.m344a(C0368c.m331c("spanProcessorType", d.a(), "dropped", "false"));
        this.f1073r = new ArrayList<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m158d(AbstractC0438m mVar) {
        if (!this.f1068m.offer(mVar)) {
            this.f1061f.add(1L);
        } else if (this.f1068m.size() >= this.f1069n.get()) {
            this.f1070o.offer(Boolean.TRUE);
        }
    }

    /* renamed from: e */
    private void m157e() {
        if (!this.f1073r.isEmpty()) {
            try {
                try {
                    C0416e R = this.f1063h.m145R(Collections.unmodifiableList(this.f1073r));
                    R.m255d(this.f1066k, TimeUnit.NANOSECONDS);
                    if (R.m256c()) {
                        this.f1062g.add(this.f1073r.size());
                    } else {
                        f1060s.log(Level.FINE, "Exporter failed");
                    }
                } catch (RuntimeException e) {
                    f1060s.log(Level.WARNING, "Exporter threw an Exception", (Throwable) e);
                }
            } finally {
                this.f1073r.clear();
            }
        }
    }

    /* renamed from: f */
    private void m156f() {
        int size = this.f1068m.size();
        while (size > 0) {
            this.f1073r.add(this.f1068m.poll().m216e());
            int i = size - 1;
            size = i;
            if (this.f1073r.size() >= this.f1065j) {
                m157e();
                size = i;
            }
        }
        m157e();
        this.f1071p.get().m251h();
        this.f1071p.set(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public C0416e m155g() {
        if (this.f1071p.compareAndSet(null, new C0416e())) {
            this.f1070o.offer(Boolean.TRUE);
        }
        C0416e eVar = this.f1071p.get();
        C0416e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = C0416e.m252g();
        }
        return eVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m153i(C0416e eVar, C0416e eVar2, C0416e eVar3) {
        if (!eVar.m256c() || !eVar2.m256c()) {
            eVar3.m258a();
        } else {
            eVar3.m251h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m151k(final C0416e eVar, final C0416e eVar2) {
        this.f1072q = false;
        final C0416e shutdown = this.f1063h.shutdown();
        shutdown.m250i(new Runnable() { // from class: i.a.d.f.z.c
            @Override // java.lang.Runnable
            public final void run() {
                d$b.m153i(C0416e.this, shutdown, eVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public C0416e m150l() {
        final C0416e eVar = new C0416e();
        final C0416e g = m155g();
        g.m250i(new Runnable() { // from class: i.a.d.f.z.a
            @Override // java.lang.Runnable
            public final void run() {
                d$b.this.m151k(g, eVar);
            }
        });
        return eVar;
    }

    /* renamed from: m */
    private void m149m() {
        this.f1067l = System.nanoTime() + this.f1064i;
    }

    @Override // java.lang.Runnable
    public void run() {
        m149m();
        while (this.f1072q) {
            if (this.f1071p.get() != null) {
                m156f();
            }
            while (!this.f1068m.isEmpty() && this.f1073r.size() < this.f1065j) {
                this.f1073r.add(this.f1068m.poll().m216e());
            }
            if (this.f1073r.size() >= this.f1065j || System.nanoTime() >= this.f1067l) {
                m157e();
                m149m();
            }
            if (this.f1068m.isEmpty()) {
                try {
                    long nanoTime = this.f1067l - System.nanoTime();
                    if (nanoTime > 0) {
                        this.f1069n.set(this.f1065j - this.f1073r.size());
                        this.f1070o.poll(nanoTime, TimeUnit.NANOSECONDS);
                        this.f1069n.set(Integer.MAX_VALUE);
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }
    }
}
