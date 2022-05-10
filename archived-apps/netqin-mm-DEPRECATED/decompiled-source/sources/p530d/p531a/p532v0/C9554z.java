package p530d.p531a.p532v0;

import java.util.Random;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p532v0.AbstractC9374i;
/* renamed from: d.a.v0.z */
/* loaded from: classes2-dex2jar.jar:d/a/v0/z.class */
public final class C9554z implements AbstractC9374i {

    /* renamed from: a */
    public Random f36451a = new Random();

    /* renamed from: b */
    public long f36452b = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: c */
    public long f36453c = TimeUnit.MINUTES.toNanos(2);

    /* renamed from: d */
    public double f36454d = 1.6d;

    /* renamed from: e */
    public double f36455e = 0.2d;

    /* renamed from: f */
    public long f36456f = this.f36452b;

    /* renamed from: d.a.v0.z$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/z$a.class */
    public static final class C9555a implements AbstractC9374i.AbstractC9375a {
        @Override // p530d.p531a.p532v0.AbstractC9374i.AbstractC9375a
        public AbstractC9374i get() {
            return new C9554z();
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9374i
    /* renamed from: a */
    public long mo2490a() {
        long j = this.f36456f;
        double d = j;
        double d2 = this.f36454d;
        Double.isNaN(d);
        this.f36456f = Math.min((long) (d2 * d), this.f36453c);
        double d3 = this.f36455e;
        Double.isNaN(d);
        Double.isNaN(d);
        return j + m2489a((-d3) * d, d3 * d);
    }

    /* renamed from: a */
    public final long m2489a(double d, double d2) {
        C4933n.m24791a(d2 >= d);
        return (long) ((this.f36451a.nextDouble() * (d2 - d)) + d);
    }
}
