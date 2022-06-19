package p193e.p194a.p437c.p548h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.h.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/j.class */
public final class C10260j {

    /* renamed from: a */
    public final String f30406a;

    /* renamed from: b */
    public final String f30407b;

    /* renamed from: c */
    public final String f30408c;

    public C10260j(String str, String str2, String str3) {
        l.e(str, "number");
        this.f30406a = str;
        this.f30407b = str2;
        this.f30408c = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10260j)) {
                return false;
            }
            C10260j c10260j = (C10260j) obj;
            return l.a(this.f30406a, c10260j.f30406a) && l.a(this.f30407b, c10260j.f30407b) && l.a(this.f30408c, c10260j.f30408c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30406a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30407b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f30408c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SearchContact(number=");
        m8728C.append(this.f30406a);
        m8728C.append(", name=");
        m8728C.append(this.f30407b);
        m8728C.append(", icon=");
        return C22128a.m8618h(m8728C, this.f30408c, ")");
    }
}
