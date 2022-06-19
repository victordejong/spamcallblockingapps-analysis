package p193e.p194a.p437c.p548h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.h.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/a.class */
public final class C10251a {

    /* renamed from: a */
    public final String f30403a;

    /* renamed from: b */
    public final int f30404b;

    /* renamed from: c */
    public final String f30405c;

    public C10251a(String str, int i, String str2) {
        l.e(str, "rawAddress");
        l.e(str2, "day");
        this.f30403a = str;
        this.f30404b = i;
        this.f30405c = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10251a)) {
                return false;
            }
            C10251a c10251a = (C10251a) obj;
            return l.a(this.f30403a, c10251a.f30403a) && this.f30404b == c10251a.f30404b && l.a(this.f30405c, c10251a.f30405c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30403a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.f30404b;
        String str2 = this.f30405c;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BrandMonitoringData(rawAddress=");
        m8728C.append(this.f30403a);
        m8728C.append(", count=");
        m8728C.append(this.f30404b);
        m8728C.append(", day=");
        return C22128a.m8618h(m8728C, this.f30405c, ")");
    }
}
