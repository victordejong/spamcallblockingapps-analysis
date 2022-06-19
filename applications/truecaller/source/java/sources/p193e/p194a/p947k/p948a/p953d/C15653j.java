package p193e.p194a.p947k.p948a.p953d;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.a.d.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/j.class */
public final class C15653j {

    /* renamed from: a */
    public final String f44195a;

    /* renamed from: b */
    public final String f44196b;

    public C15653j(String str, String str2) {
        l.e(str, "termsOfService");
        l.e(str2, "privacyPolicy");
        this.f44195a = str;
        this.f44196b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15653j)) {
                return false;
            }
            C15653j c15653j = (C15653j) obj;
            return l.a(this.f44195a, c15653j.f44195a) && l.a(this.f44196b, c15653j.f44196b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f44195a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f44196b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RegionalLinks(termsOfService=");
        m8728C.append(this.f44195a);
        m8728C.append(", privacyPolicy=");
        return C22128a.m8618h(m8728C, this.f44196b, ")");
    }
}
