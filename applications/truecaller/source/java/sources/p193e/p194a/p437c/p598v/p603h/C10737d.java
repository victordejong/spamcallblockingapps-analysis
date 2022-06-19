package p193e.p194a.p437c.p598v.p603h;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.v.h.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/d.class */
public final class C10737d {

    /* renamed from: a */
    public final String f31893a;

    /* renamed from: b */
    public final String f31894b;

    public C10737d(String str, String str2) {
        l.e(str, "vendorName");
        this.f31893a = str;
        this.f31894b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10737d)) {
                return false;
            }
            C10737d c10737d = (C10737d) obj;
            return l.a(this.f31893a, c10737d.f31893a) && l.a(this.f31894b, c10737d.f31894b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31893a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31894b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReminderAnalyticsInfo(vendorName=");
        m8728C.append(this.f31893a);
        m8728C.append(", vendorType=");
        return C22128a.m8618h(m8728C, this.f31894b, ")");
    }
}
