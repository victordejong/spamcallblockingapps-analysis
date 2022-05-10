package p530d.p531a.p532v0;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.g */
/* loaded from: classes2-dex2jar.jar:d/a/v0/g.class */
public final class C9363g {

    /* renamed from: c */
    public static final Logger f36024c = Logger.getLogger(C9363g.class.getName());

    /* renamed from: a */
    public final String f36025a;

    /* renamed from: b */
    public final AtomicLong f36026b = new AtomicLong();

    /* renamed from: d.a.v0.g$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/g$b.class */
    public final class C9365b {

        /* renamed from: a */
        public final long f36027a;

        public C9365b(long j) {
            this.f36027a = j;
        }

        /* renamed from: a */
        public void m2880a() {
            long j = this.f36027a;
            long max = Math.max(2 * j, j);
            if (C9363g.this.f36026b.compareAndSet(this.f36027a, max)) {
                C9363g.f36024c.log(Level.WARNING, "Increased {0} to {1}", new Object[]{C9363g.this.f36025a, Long.valueOf(max)});
            }
        }

        /* renamed from: b */
        public long m2879b() {
            return this.f36027a;
        }
    }

    public C9363g(String str, long j) {
        C4933n.m24790a(j > 0, "value must be positive");
        this.f36025a = str;
        this.f36026b.set(j);
    }

    /* renamed from: a */
    public C9365b m2884a() {
        return new C9365b(this.f36026b.get());
    }
}
