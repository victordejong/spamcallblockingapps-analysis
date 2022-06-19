package p193e.p194a.p437c.p538g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.g.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/v.class */
public final class C10202v {

    /* renamed from: a */
    public final String f30275a;

    /* renamed from: b */
    public final String f30276b;

    public C10202v(String str, String str2) {
        l.e(str, "senderId");
        l.e(str2, "className");
        this.f30275a = str;
        this.f30276b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10202v)) {
                return false;
            }
            C10202v c10202v = (C10202v) obj;
            return l.a(this.f30275a, c10202v.f30275a) && l.a(this.f30276b, c10202v.f30276b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30275a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30276b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdatesModel(senderId=");
        m8728C.append(this.f30275a);
        m8728C.append(", className=");
        return C22128a.m8618h(m8728C, this.f30276b, ")");
    }
}
