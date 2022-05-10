package p131c.p161d.p170b.p188c;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.h0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h0.class */
public final class C2910h0 {

    /* renamed from: e */
    public static final C2910h0 f10539e = new C2910h0(1.0f);

    /* renamed from: a */
    public final float f10540a;

    /* renamed from: b */
    public final float f10541b;

    /* renamed from: c */
    public final boolean f10542c;

    /* renamed from: d */
    public final int f10543d;

    public C2910h0(float f) {
        this(f, 1.0f, false);
    }

    public C2910h0(float f, float f2, boolean z) {
        boolean z2 = true;
        C2877e.m28734a(f > 0.0f);
        if (f2 <= 0.0f) {
            z2 = false;
        }
        C2877e.m28734a(z2);
        this.f10540a = f;
        this.f10541b = f2;
        this.f10542c = z;
        this.f10543d = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public long m28499a(long j) {
        return j * this.f10543d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2910h0.class != obj.getClass()) {
            return false;
        }
        C2910h0 h0Var = (C2910h0) obj;
        if (!(this.f10540a == h0Var.f10540a && this.f10541b == h0Var.f10541b && this.f10542c == h0Var.f10542c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.f10540a)) * 31) + Float.floatToRawIntBits(this.f10541b)) * 31) + (this.f10542c ? 1 : 0);
    }
}
