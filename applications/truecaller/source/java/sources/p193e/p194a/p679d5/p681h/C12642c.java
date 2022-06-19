package p193e.p194a.p679d5.p681h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d5.h.c */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/c.class */
public final class C12642c implements Comparable<C12642c> {

    /* renamed from: a */
    public final int f36828a;

    /* renamed from: b */
    public final String f36829b;

    public C12642c(int i, String str) {
        l.e(str, "type");
        this.f36828a = i;
        this.f36829b = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(C12642c c12642c) {
        C12642c c12642c2 = c12642c;
        l.e(c12642c2, "other");
        return l.g(this.f36828a, c12642c2.f36828a);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12642c)) {
                return false;
            }
            C12642c c12642c = (C12642c) obj;
            return this.f36828a == c12642c.f36828a && l.a(this.f36829b, c12642c.f36829b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f36828a;
        String str = this.f36829b;
        return (i * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Entry(day=");
        m8728C.append(this.f36828a);
        m8728C.append(", type=");
        return C22128a.m8618h(m8728C, this.f36829b, ")");
    }
}
