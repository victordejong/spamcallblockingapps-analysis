package p193e.p194a.p372b0.p406e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.e.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/b.class */
public final class C8415b {

    /* renamed from: a */
    public final String f26094a;

    /* renamed from: b */
    public final String f26095b;

    public C8415b(String str, String str2) {
        l.e(str, "countryIso");
        l.e(str2, "normalizedNumber");
        this.f26094a = str;
        this.f26095b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8415b)) {
                return false;
            }
            C8415b c8415b = (C8415b) obj;
            return l.a(this.f26094a, c8415b.f26094a) && l.a(this.f26095b, c8415b.f26095b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26094a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f26095b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AccountPhoneNumber(countryIso=");
        m8728C.append(this.f26094a);
        m8728C.append(", normalizedNumber=");
        return C22128a.m8618h(m8728C, this.f26095b, ")");
    }
}
