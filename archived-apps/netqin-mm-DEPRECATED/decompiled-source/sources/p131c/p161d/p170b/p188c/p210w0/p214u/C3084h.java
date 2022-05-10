package p131c.p161d.p170b.p188c.p210w0.p214u;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3048m;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
/* renamed from: c.d.b.c.w0.u.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/u/h.class */
public final class C3084h implements AbstractC3081f {

    /* renamed from: a */
    public final long f11205a;

    /* renamed from: b */
    public final int f11206b;

    /* renamed from: c */
    public final long f11207c;

    /* renamed from: d */
    public final long f11208d;

    /* renamed from: e */
    public final long f11209e;

    /* renamed from: f */
    public final long[] f11210f;

    public C3084h(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C3084h(long j, int i, long j2, long j3, long[] jArr) {
        this.f11205a = j;
        this.f11206b = i;
        this.f11207c = j2;
        this.f11210f = jArr;
        this.f11208d = j3;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j + j3;
        }
        this.f11209e = j4;
    }

    /* renamed from: a */
    public static C3084h m27923a(long j, long j2, C3048m mVar, C2904v vVar) {
        int v;
        int i = mVar.f10988g;
        int i2 = mVar.f10985d;
        int g = vVar.m28535g();
        if ((g & 1) != 1 || (v = vVar.m28520v()) == 0) {
            return null;
        }
        long c = C2885h0.m28639c(v, i * 1000000, i2);
        if ((g & 6) != 6) {
            return new C3084h(j2, mVar.f10984c, c);
        }
        long v2 = vVar.m28520v();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = vVar.m28524r();
        }
        if (j != -1) {
            long j3 = j2 + v2;
            if (j != j3) {
                C2894o.m28594d("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new C3084h(j2, mVar.f10984c, c, v2, jArr);
    }

    /* renamed from: a */
    public final long m27925a(int i) {
        return (this.f11207c * i) / 100;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: a */
    public long mo27924a(long j) {
        double d;
        long j2 = j - this.f11205a;
        if (!mo27545b() || j2 <= this.f11206b) {
            return 0L;
        }
        long[] jArr = this.f11210f;
        C2877e.m28737a(jArr);
        long[] jArr2 = jArr;
        double d2 = j2;
        Double.isNaN(d2);
        double d3 = this.f11208d;
        Double.isNaN(d3);
        double d4 = (d2 * 256.0d) / d3;
        int b = C2885h0.m28643b(jArr2, (long) d4, true, true);
        long a = m27925a(b);
        long j3 = jArr2[b];
        int i = b + 1;
        long a2 = m27925a(i);
        long j4 = b == 99 ? 256L : jArr2[i];
        if (j3 == j4) {
            d = 0.0d;
        } else {
            double d5 = j3;
            Double.isNaN(d5);
            double d6 = j4 - j3;
            Double.isNaN(d6);
            d = (d4 - d5) / d6;
        }
        double d7 = a2 - a;
        Double.isNaN(d7);
        return a + Math.round(d * d7);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        long[] jArr;
        if (!mo27545b()) {
            return new AbstractC3050o.C3051a(new C3053p(0L, this.f11205a + this.f11206b));
        }
        long b = C2885h0.m28649b(j, 0L, this.f11207c);
        double d = b;
        Double.isNaN(d);
        double d2 = this.f11207c;
        Double.isNaN(d2);
        double d3 = (d * 100.0d) / d2;
        double d4 = 0.0d;
        if (d3 > 0.0d) {
            if (d3 >= 100.0d) {
                d4 = 256.0d;
            } else {
                int i = (int) d3;
                long[] jArr2 = this.f11210f;
                C2877e.m28737a(jArr2);
                double d5 = jArr2[i];
                double d6 = i == 99 ? 256.0d : jArr[i + 1];
                double d7 = i;
                Double.isNaN(d7);
                Double.isNaN(d5);
                Double.isNaN(d5);
                d4 = d5 + ((d3 - d7) * (d6 - d5));
            }
        }
        double d8 = this.f11208d;
        Double.isNaN(d8);
        return new AbstractC3050o.C3051a(new C3053p(b, this.f11205a + C2885h0.m28649b(Math.round((d4 / 256.0d) * d8), this.f11206b, this.f11208d - 1)));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return this.f11210f != null;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f11207c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: d */
    public long mo27922d() {
        return this.f11209e;
    }
}
