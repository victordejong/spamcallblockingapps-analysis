package p131c.p161d.p170b.p188c.p206s0;
/* renamed from: c.d.b.c.s0.n */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/n.class */
public final class C2992n {

    /* renamed from: a */
    public final int f10777a;

    /* renamed from: b */
    public final float f10778b;

    public C2992n(int i, float f) {
        this.f10777a = i;
        this.f10778b = f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2992n.class != obj.getClass()) {
            return false;
        }
        C2992n nVar = (C2992n) obj;
        if (!(this.f10777a == nVar.f10777a && Float.compare(nVar.f10778b, this.f10778b) == 0)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f10777a) * 31) + Float.floatToIntBits(this.f10778b);
    }
}
