package p193e.p194a.p619d.p657v;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.d.v.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/a.class */
public final class C11821a {

    /* renamed from: a */
    public final boolean f34737a;

    /* renamed from: b */
    public final boolean f34738b;

    /* renamed from: c */
    public final boolean f34739c;

    public C11821a() {
        this(false, false, false, 7);
    }

    public C11821a(boolean z, boolean z2, boolean z3) {
        this.f34737a = z;
        this.f34738b = z2;
        this.f34739c = z3;
    }

    public C11821a(boolean z, boolean z2, boolean z3, int i) {
        z = (i & 1) != 0 ? false : z;
        z2 = (i & 2) != 0 ? false : z2;
        z3 = (i & 4) != 0 ? false : z3;
        this.f34737a = z;
        this.f34738b = z2;
        this.f34739c = z3;
    }

    /* renamed from: a */
    public static C11821a m23967a(C11821a c11821a, boolean z, boolean z2, boolean z3, int i) {
        if ((i & 1) != 0) {
            z = c11821a.f34737a;
        }
        if ((i & 2) != 0) {
            z2 = c11821a.f34738b;
        }
        if ((i & 4) != 0) {
            z3 = c11821a.f34739c;
        }
        Objects.requireNonNull(c11821a);
        return new C11821a(z, z2, z3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C11821a)) {
                return false;
            }
            C11821a c11821a = (C11821a) obj;
            return this.f34737a == c11821a.f34737a && this.f34738b == c11821a.f34738b && this.f34739c == c11821a.f34739c;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f34737a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f34738b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.f34739c;
        if (!z5) {
            i = z5;
        }
        return ((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallSetting(muted=");
        m8728C.append(this.f34737a);
        m8728C.append(", onHold=");
        m8728C.append(this.f34738b);
        m8728C.append(", isInterrupted=");
        return C22128a.m8590o(m8728C, this.f34739c, ")");
    }
}
