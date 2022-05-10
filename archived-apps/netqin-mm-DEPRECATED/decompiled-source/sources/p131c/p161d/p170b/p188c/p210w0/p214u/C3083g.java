package p131c.p161d.p170b.p188c.p210w0.p214u;

import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3048m;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
/* renamed from: c.d.b.c.w0.u.g */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/u/g.class */
public final class C3083g implements AbstractC3081f {

    /* renamed from: a */
    public final long[] f11201a;

    /* renamed from: b */
    public final long[] f11202b;

    /* renamed from: c */
    public final long f11203c;

    /* renamed from: d */
    public final long f11204d;

    public C3083g(long[] jArr, long[] jArr2, long j, long j2) {
        this.f11201a = jArr;
        this.f11202b = jArr2;
        this.f11203c = j;
        this.f11204d = j2;
    }

    /* renamed from: a */
    public static C3083g m27926a(long j, long j2, C3048m mVar, C2904v vVar) {
        int i;
        vVar.m28536f(10);
        int g = vVar.m28535g();
        if (g <= 0) {
            return null;
        }
        int i2 = mVar.f10985d;
        long c = C2885h0.m28639c(g, 1000000 * (i2 >= 32000 ? 1152 : 576), i2);
        int x = vVar.m28518x();
        int x2 = vVar.m28518x();
        int x3 = vVar.m28518x();
        vVar.m28536f(2);
        long j3 = j2 + mVar.f10984c;
        long[] jArr = new long[x];
        long[] jArr2 = new long[x];
        for (int i3 = 0; i3 < x; i3++) {
            jArr[i3] = (i3 * c) / x;
            jArr2[i3] = Math.max(j2, j3);
            if (x3 == 1) {
                i = vVar.m28524r();
            } else if (x3 == 2) {
                i = vVar.m28518x();
            } else if (x3 == 3) {
                i = vVar.m28521u();
            } else if (x3 != 4) {
                return null;
            } else {
                i = vVar.m28520v();
            }
            j2 += i * x2;
        }
        if (!(j == -1 || j == j2)) {
            C2894o.m28594d("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j2);
        }
        return new C3083g(jArr, jArr2, c, j2);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: a */
    public long mo27924a(long j) {
        return this.f11201a[C2885h0.m28643b(this.f11202b, j, true, true)];
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        int b = C2885h0.m28643b(this.f11201a, j, true, true);
        C3053p pVar = new C3053p(this.f11201a[b], this.f11202b[b]);
        if (pVar.f10995a >= j || b == this.f11201a.length - 1) {
            return new AbstractC3050o.C3051a(pVar);
        }
        int i = b + 1;
        return new AbstractC3050o.C3051a(pVar, new C3053p(this.f11201a[i], this.f11202b[i]));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f11203c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: d */
    public long mo27922d() {
        return this.f11204d;
    }
}
