package p012b.p076s.p078b.p079a;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.c0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/c0.class */
public final class C1221c0 {

    /* renamed from: e */
    public static final C1221c0 f4895e = new C1221c0(1.0f);

    /* renamed from: a */
    public final float f4896a;

    /* renamed from: b */
    public final float f4897b;

    /* renamed from: c */
    public final boolean f4898c;

    /* renamed from: d */
    public final int f4899d;

    public C1221c0(float f) {
        this(f, 1.0f, false);
    }

    public C1221c0(float f, float f2) {
        this(f, f2, false);
    }

    public C1221c0(float f, float f2, boolean z) {
        boolean z2 = true;
        C1160a.m34520a(f > 0.0f);
        if (f2 <= 0.0f) {
            z2 = false;
        }
        C1160a.m34520a(z2);
        this.f4896a = f;
        this.f4897b = f2;
        this.f4898c = z;
        this.f4899d = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public long m34194a(long j) {
        return j * this.f4899d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1221c0.class != obj.getClass()) {
            return false;
        }
        C1221c0 c0Var = (C1221c0) obj;
        if (!(this.f4896a == c0Var.f4896a && this.f4897b == c0Var.f4897b && this.f4898c == c0Var.f4898c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + Float.floatToRawIntBits(this.f4896a)) * 31) + Float.floatToRawIntBits(this.f4897b)) * 31) + (this.f4898c ? 1 : 0);
    }
}
