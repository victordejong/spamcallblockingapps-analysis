package p193e.p194a.p773g.p782g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.g.g.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/g/a.class */
public final class C14255a {

    /* renamed from: a */
    public final String f41175a;

    public C14255a(String str) {
        this.f41175a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C14255a) && l.a(this.f41175a, ((C14255a) obj).f41175a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f41175a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("ContactExternalInfo(timezone="), this.f41175a, ")");
    }
}
