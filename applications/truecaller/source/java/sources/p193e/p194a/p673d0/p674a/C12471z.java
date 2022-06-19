package p193e.p194a.p673d0.p674a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d0.a.z */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/z.class */
public final class C12471z {

    /* renamed from: a */
    public final String f36430a;

    /* renamed from: b */
    public final String f36431b;

    public C12471z(String str, String str2) {
        l.e(str, "text");
        this.f36430a = str;
        this.f36431b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C12471z)) {
                return false;
            }
            C12471z c12471z = (C12471z) obj;
            return l.a(this.f36430a, c12471z.f36430a) && l.a(this.f36431b, c12471z.f36431b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f36430a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f36431b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TagInfo(text=");
        m8728C.append(this.f36430a);
        m8728C.append(", iconUrl=");
        return C22128a.m8618h(m8728C, this.f36431b, ")");
    }
}
