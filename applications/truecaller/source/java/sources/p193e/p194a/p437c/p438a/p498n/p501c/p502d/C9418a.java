package p193e.p194a.p437c.p438a.p498n.p501c.p502d;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.a.n.c.d.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/c/d/a.class */
public final class C9418a {

    /* renamed from: a */
    public boolean f28601a;

    /* renamed from: b */
    public boolean f28602b;

    public C9418a() {
        this(false, false, 3);
    }

    public C9418a(boolean z, boolean z2, int i) {
        z = (i & 1) != 0 ? false : z;
        z2 = (i & 2) != 0 ? false : z2;
        this.f28601a = z;
        this.f28602b = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9418a)) {
                return false;
            }
            C9418a c9418a = (C9418a) obj;
            return this.f28601a == c9418a.f28601a && this.f28602b == c9418a.f28602b;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f28601a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f28602b;
        if (!z3) {
            i = z3;
        }
        return ((z2 ? 1 : 0) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RemindersCollapseState(isPastCollapsed=");
        m8728C.append(this.f28601a);
        m8728C.append(", isUpcomingCollapsed=");
        return C22128a.m8590o(m8728C, this.f28602b, ")");
    }
}
