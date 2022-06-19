package p193e.p194a.p437c.p538g;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.g.s */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/s.class */
public final class C10198s {

    /* renamed from: a */
    public final String f30269a;

    public C10198s(String str) {
        l.e(str, "className");
        this.f30269a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C10198s) && l.a(this.f30269a, ((C10198s) obj).f30269a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f30269a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("UpdatesClass(className="), this.f30269a, ")");
    }
}
