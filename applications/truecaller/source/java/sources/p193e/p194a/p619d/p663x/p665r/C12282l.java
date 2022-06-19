package p193e.p194a.p619d.p663x.p665r;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.d.x.r.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/l.class */
public final class C12282l {

    /* renamed from: a */
    public final String f35910a;

    public C12282l(String str) {
        l.e(str, "id");
        this.f35910a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C12282l) && l.a(this.f35910a, ((C12282l) obj).f35910a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f35910a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("RtmChannelMember(id="), this.f35910a, ")");
    }
}
