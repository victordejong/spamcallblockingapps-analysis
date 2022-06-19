package p193e.p194a.p437c.p580r.p587h;

import com.truecaller.insights.models.pdo.ExtendedPdo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.h.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/h/a.class */
public final class C10541a {

    /* renamed from: a */
    public final ExtendedPdo f31464a;

    /* renamed from: b */
    public final Integer f31465b;

    /* renamed from: c */
    public final String f31466c;

    public C10541a(ExtendedPdo extendedPdo, Integer num, String str) {
        l.e(extendedPdo, "extendedPdo");
        this.f31464a = extendedPdo;
        this.f31465b = num;
        this.f31466c = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10541a)) {
                return false;
            }
            C10541a c10541a = (C10541a) obj;
            return l.a(this.f31464a, c10541a.f31464a) && l.a(this.f31465b, c10541a.f31465b) && l.a(this.f31466c, c10541a.f31466c);
        }
        return true;
    }

    public int hashCode() {
        ExtendedPdo extendedPdo = this.f31464a;
        int i = 0;
        int hashCode = extendedPdo != null ? extendedPdo.hashCode() : 0;
        Integer num = this.f31465b;
        int hashCode2 = num != null ? num.hashCode() : 0;
        String str = this.f31466c;
        if (str != null) {
            i = str.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActionStateExtendedPdo(extendedPdo=");
        m8728C.append(this.f31464a);
        m8728C.append(", state=");
        m8728C.append(this.f31465b);
        m8728C.append(", extra=");
        return C22128a.m8618h(m8728C, this.f31466c, ")");
    }
}
