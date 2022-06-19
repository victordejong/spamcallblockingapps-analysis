package p193e.p194a.p437c.p580r.p582e.p583a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.e.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/e/a/a.class */
public final class C10531a {

    /* renamed from: a */
    public final String f31424a;

    /* renamed from: b */
    public final String f31425b;

    public C10531a(String str, String str2) {
        l.e(str, "senderId");
        l.e(str2, "accountType");
        this.f31424a = str;
        this.f31425b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10531a)) {
                return false;
            }
            C10531a c10531a = (C10531a) obj;
            return l.a(this.f31424a, c10531a.f31424a) && l.a(this.f31425b, c10531a.f31425b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31424a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31425b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AccountDataModel(senderId=");
        m8728C.append(this.f31424a);
        m8728C.append(", accountType=");
        return C22128a.m8618h(m8728C, this.f31425b, ")");
    }
}
