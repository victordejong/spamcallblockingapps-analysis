package p193e.p194a.p804h.p806b.p823z0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.z0.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/z0/a.class */
public final class C14640a {

    /* renamed from: a */
    public final String f42127a;

    public C14640a(String str) {
        l.e(str, "titleRes");
        this.f42127a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C14640a) && l.a(this.f42127a, ((C14640a) obj).f42127a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f42127a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("VideoCallerIdOnboarding(titleRes="), this.f42127a, ")");
    }
}
