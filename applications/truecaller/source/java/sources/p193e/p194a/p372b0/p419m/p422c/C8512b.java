package p193e.p194a.p372b0.p419m.p422c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b0.m.c.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/m/c/b.class */
public final class C8512b {

    /* renamed from: a */
    public final String f26300a;

    /* renamed from: b */
    public final String f26301b;

    /* renamed from: c */
    public final String f26302c;

    public C8512b(String str, String str2, String str3) {
        l.e(str, "number");
        this.f26300a = str;
        this.f26301b = str2;
        this.f26302c = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8512b)) {
                return false;
            }
            C8512b c8512b = (C8512b) obj;
            return l.a(this.f26300a, c8512b.f26300a) && l.a(this.f26301b, c8512b.f26301b) && l.a(this.f26302c, c8512b.f26302c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26300a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f26301b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f26302c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderResolution(number=");
        m8728C.append(this.f26300a);
        m8728C.append(", name=");
        m8728C.append(this.f26301b);
        m8728C.append(", icon=");
        return C22128a.m8618h(m8728C, this.f26302c, ")");
    }
}
