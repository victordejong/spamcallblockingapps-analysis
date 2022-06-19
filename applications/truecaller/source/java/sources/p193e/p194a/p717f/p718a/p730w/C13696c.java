package p193e.p194a.p717f.p718a.p730w;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f.a.w.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/w/c.class */
public final class C13696c {

    /* renamed from: a */
    public final String f39673a;

    /* renamed from: b */
    public final String f39674b;

    /* renamed from: c */
    public final String f39675c;

    /* renamed from: d */
    public final int f39676d;

    public C13696c(String str, String str2, String str3, int i) {
        C22128a.m8703I0(str, "id", str2, "title", str3, "description");
        this.f39673a = str;
        this.f39674b = str2;
        this.f39675c = str3;
        this.f39676d = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13696c)) {
                return false;
            }
            C13696c c13696c = (C13696c) obj;
            return l.a(this.f39673a, c13696c.f39673a) && l.a(this.f39674b, c13696c.f39674b) && l.a(this.f39675c, c13696c.f39675c) && this.f39676d == c13696c.f39676d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f39673a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f39674b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f39675c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + this.f39676d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PhoneAccountInfo(id=");
        m8728C.append(this.f39673a);
        m8728C.append(", title=");
        m8728C.append(this.f39674b);
        m8728C.append(", description=");
        m8728C.append(this.f39675c);
        m8728C.append(", icon=");
        return C22128a.m8697J2(m8728C, this.f39676d, ")");
    }
}
