package p193e.p194a.p437c.p524b;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.b.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/n.class */
public final class C9708n {

    /* renamed from: a */
    public final Integer f29329a;

    /* renamed from: b */
    public final int f29330b;

    public C9708n(Integer num, int i) {
        this.f29329a = num;
        this.f29330b = i;
    }

    /* renamed from: a */
    public final boolean m27198a() {
        Integer num = this.f29329a;
        boolean z = true;
        if (num != null) {
            num.intValue();
            z = this.f29330b > this.f29329a.intValue();
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9708n)) {
                return false;
            }
            C9708n c9708n = (C9708n) obj;
            return l.a(this.f29329a, c9708n.f29329a) && this.f29330b == c9708n.f29330b;
        }
        return true;
    }

    public int hashCode() {
        Integer num = this.f29329a;
        return ((num != null ? num.hashCode() : 0) * 31) + this.f29330b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Version(previousVersion=");
        m8728C.append(this.f29329a);
        m8728C.append(", currentVersion=");
        return C22128a.m8697J2(m8728C, this.f29330b, ")");
    }
}
