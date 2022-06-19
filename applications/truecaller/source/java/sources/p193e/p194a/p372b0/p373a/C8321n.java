package p193e.p194a.p372b0.p373a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.a.n */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/n.class */
public final class C8321n {

    /* renamed from: a */
    public final int f25617a;

    /* renamed from: b */
    public final boolean f25618b;

    /* renamed from: c */
    public final boolean f25619c;

    public C8321n(int i, boolean z, boolean z2) {
        this.f25617a = i;
        this.f25618b = z;
        this.f25619c = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8321n)) {
                return false;
            }
            C8321n c8321n = (C8321n) obj;
            return this.f25617a == c8321n.f25617a && this.f25618b == c8321n.f25618b && this.f25619c == c8321n.f25619c;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f25617a;
        boolean z = this.f25618b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        boolean z2 = this.f25619c;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((i * 31) + i3) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StatusBarStyle(color=");
        m8728C.append(this.f25617a);
        m8728C.append(", applySystemUiFlagLightStatusBar=");
        m8728C.append(this.f25618b);
        m8728C.append(", useZeroTopInset=");
        return C22128a.m8590o(m8728C, this.f25619c, ")");
    }
}
