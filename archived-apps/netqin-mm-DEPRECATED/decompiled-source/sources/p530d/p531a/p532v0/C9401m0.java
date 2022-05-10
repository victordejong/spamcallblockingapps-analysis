package p530d.p531a.p532v0;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4938q;
import p530d.p531a.p532v0.AbstractC9451p;
/* renamed from: d.a.v0.m0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/m0.class */
public class C9401m0 {

    /* renamed from: g */
    public static final Logger f36084g = Logger.getLogger(C9401m0.class.getName());

    /* renamed from: a */
    public final long f36085a;

    /* renamed from: b */
    public final C4938q f36086b;

    /* renamed from: c */
    public Map<AbstractC9451p.AbstractC9452a, Executor> f36087c = new LinkedHashMap();

    /* renamed from: d */
    public boolean f36088d;

    /* renamed from: e */
    public Throwable f36089e;

    /* renamed from: f */
    public long f36090f;

    /* renamed from: d.a.v0.m0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m0$a.class */
    public class RunnableC9402a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9451p.AbstractC9452a f36091a;

        /* renamed from: b */
        public final /* synthetic */ long f36092b;

        public RunnableC9402a(AbstractC9451p.AbstractC9452a aVar, long j) {
            this.f36091a = aVar;
            this.f36092b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36091a.mo461a(this.f36092b);
        }
    }

    /* renamed from: d.a.v0.m0$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/m0$b.class */
    public class RunnableC9403b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9451p.AbstractC9452a f36093a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f36094b;

        public RunnableC9403b(AbstractC9451p.AbstractC9452a aVar, Throwable th) {
            this.f36093a = aVar;
            this.f36094b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f36093a.mo460a(this.f36094b);
        }
    }

    public C9401m0(long j, C4938q qVar) {
        this.f36085a = j;
        this.f36086b = qVar;
    }

    /* renamed from: a */
    public static Runnable m2832a(AbstractC9451p.AbstractC9452a aVar, long j) {
        return new RunnableC9402a(aVar, j);
    }

    /* renamed from: a */
    public static Runnable m2831a(AbstractC9451p.AbstractC9452a aVar, Throwable th) {
        return new RunnableC9403b(aVar, th);
    }

    /* renamed from: a */
    public static void m2829a(AbstractC9451p.AbstractC9452a aVar, Executor executor, Throwable th) {
        m2827a(executor, m2831a(aVar, th));
    }

    /* renamed from: a */
    public static void m2827a(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (Throwable th) {
            f36084g.log(Level.SEVERE, "Failed to execute PingCallback", th);
        }
    }

    /* renamed from: a */
    public void m2830a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
        synchronized (this) {
            if (!this.f36088d) {
                this.f36087c.put(aVar, executor);
            } else {
                m2827a(executor, this.f36089e != null ? m2831a(aVar, this.f36089e) : m2832a(aVar, this.f36090f));
            }
        }
    }

    /* renamed from: a */
    public void m2828a(Throwable th) {
        synchronized (this) {
            try {
                if (!this.f36088d) {
                    this.f36088d = true;
                    this.f36089e = th;
                    Map<AbstractC9451p.AbstractC9452a, Executor> map = this.f36087c;
                    this.f36087c = null;
                    for (Map.Entry<AbstractC9451p.AbstractC9452a, Executor> entry : map.entrySet()) {
                        m2829a(entry.getKey(), entry.getValue(), th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public boolean m2833a() {
        synchronized (this) {
            try {
                if (this.f36088d) {
                    return false;
                }
                this.f36088d = true;
                long a = this.f36086b.m24763a(TimeUnit.NANOSECONDS);
                this.f36090f = a;
                Map<AbstractC9451p.AbstractC9452a, Executor> map = this.f36087c;
                this.f36087c = null;
                for (Map.Entry<AbstractC9451p.AbstractC9452a, Executor> entry : map.entrySet()) {
                    m2827a(entry.getValue(), m2832a(entry.getKey(), a));
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public long m2826b() {
        return this.f36085a;
    }
}
