package p033i.p034a.p046d.p056g.p059y;

import java.util.ArrayList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p033i.p034a.p035a.p036f.C0301q;
import p033i.p034a.p035a.p038h.AbstractC0307a;
import p033i.p034a.p035a.p038h.AbstractC0309e;
import p033i.p034a.p035a.p038h.AbstractC0315h;
import p033i.p034a.p035a.p038h.C0308d;
import p033i.p034a.p046d.p047c.C0358d;
import p033i.p034a.p046d.p056g.AbstractC0415k;
import p033i.p034a.p046d.p056g.p058x.AbstractC0425g;
/* renamed from: i.a.d.g.y.b$b */
/* loaded from: classes2-dex2jar.jar:i/a/d/g/y/b$b.class */
final class b$b implements Runnable {

    /* renamed from: q */
    private static final Logger f1009q = Logger.getLogger(b$b.class.getName());

    /* renamed from: f */
    private final AbstractC0309e.AbstractC0310a f1010f;

    /* renamed from: g */
    private final AbstractC0309e.AbstractC0310a f1011g;

    /* renamed from: h */
    private final AbstractC0430d f1012h;

    /* renamed from: i */
    private final long f1013i;

    /* renamed from: j */
    private final int f1014j;

    /* renamed from: k */
    private final int f1015k;

    /* renamed from: l */
    private long f1016l;

    /* renamed from: m */
    private final BlockingQueue<AbstractC0415k> f1017m;

    /* renamed from: n */
    private final AtomicReference<C0358d> f1018n;

    /* renamed from: o */
    private volatile boolean f1019o;

    /* renamed from: p */
    private final ArrayList<AbstractC0425g> f1020p;

    private b$b(AbstractC0430d dVar, long j, int i, int i2, final BlockingQueue<AbstractC0415k> blockingQueue) {
        this.f1018n = new AtomicReference<>();
        this.f1019o = true;
        this.f1012h = dVar;
        this.f1013i = TimeUnit.MILLISECONDS.toNanos(j);
        this.f1014j = i;
        this.f1015k = i2;
        this.f1017m = blockingQueue;
        AbstractC0315h b = C0308d.m430b("io.opentelemetry.sdk.trace");
        b.m419a("queueSize").m424a("The number of spans queued").m423b("1").m421d(new Consumer() { // from class: i.a.d.g.y.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlockingQueue blockingQueue2 = blockingQueue;
                ((AbstractC0307a) obj).m435a(blockingQueue2.size(), C0301q.m452b("spanProcessorType", b.e()));
            }
        }).m422c();
        AbstractC0309e c = b.m418b("processedSpans").m426b("1").m427a("The number of spans processed by the BatchSpanProcessor. [dropped=true if they were dropped due to high throughput]").m425c();
        this.f1010f = c.m428a(C0301q.m451c("spanProcessorType", b.e(), "dropped", "true"));
        this.f1011g = c.m428a(C0301q.m451c("spanProcessorType", b.e(), "dropped", "false"));
        this.f1020p = new ArrayList<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m161b(AbstractC0415k kVar) {
        if (!this.f1017m.offer(kVar)) {
            this.f1010f.add(1L);
        }
    }

    /* renamed from: c */
    private void m160c() {
        if (!this.f1020p.isEmpty()) {
            C0358d a = this.f1012h.m156a(this.f1020p);
            a.m339d(this.f1015k, TimeUnit.MILLISECONDS);
            if (a.m340c()) {
                this.f1011g.add(this.f1020p.size());
            } else {
                f1009q.log(Level.FINE, "Exporter failed");
            }
            this.f1020p.clear();
        }
    }

    /* renamed from: d */
    private void m159d() {
        int size = this.f1017m.size();
        while (size > 0) {
            this.f1020p.add(this.f1017m.poll().m216e());
            int i = size - 1;
            size = i;
            if (this.f1020p.size() >= this.f1014j) {
                m160c();
                size = i;
            }
        }
        m160c();
        this.f1018n.get().m338e();
        this.f1018n.set(null);
    }

    /* renamed from: f */
    private void m157f() {
        this.f1016l = System.nanoTime() + this.f1013i;
    }

    @Override // java.lang.Runnable
    public void run() {
        m157f();
        while (this.f1019o) {
            if (this.f1018n.get() != null) {
                m159d();
            }
            AbstractC0415k poll = this.f1017m.poll(100L, TimeUnit.MILLISECONDS);
            if (poll != null) {
                this.f1020p.add(poll.m216e());
            }
            if (this.f1020p.size() >= this.f1014j || System.nanoTime() >= this.f1016l) {
                m160c();
                m157f();
            }
        }
    }
}
