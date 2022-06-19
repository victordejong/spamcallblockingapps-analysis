package p193e.p194a.p804h.p827f.p828n0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.f.n0.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/f/n0/a$a.class */
public final class a$a {

    /* renamed from: a */
    public String f42170a;

    /* renamed from: b */
    public int f42171b;

    public a$a(String str, int i) {
        this.f42170a = str;
        this.f42171b = i;
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof a$a)) {
                return false;
            }
            a$a a_a = (a$a) obj;
            return l.a(this.f42170a, a_a.f42170a) && this.f42171b == a_a.f42171b;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42170a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f42171b;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FastScrollIndex(groupLabel=");
        m8728C.append(this.f42170a);
        m8728C.append(", count=");
        return C22128a.m8697J2(m8728C, this.f42171b, ")");
    }
}
