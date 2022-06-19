package p193e.p194a.p947k.p973n.p975e;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.n.e.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/e/g.class */
public final class C16187g {

    /* renamed from: a */
    public final List<String> f45660a;

    public C16187g(List<String> list) {
        l.e(list, "phoneNumbers");
        this.f45660a = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C16187g) && l.a(this.f45660a, ((C16187g) obj).f45660a);
        }
        return true;
    }

    public int hashCode() {
        List<String> list = this.f45660a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8602l(C22128a.m8728C("VideoCallerIdHiddenContact(phoneNumbers="), this.f45660a, ")");
    }
}
