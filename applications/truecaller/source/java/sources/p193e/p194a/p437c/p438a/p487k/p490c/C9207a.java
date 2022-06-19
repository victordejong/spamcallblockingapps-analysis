package p193e.p194a.p437c.p438a.p487k.p490c;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.c.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/a.class */
public final class C9207a {

    /* renamed from: a */
    public final boolean f27990a;

    /* renamed from: b */
    public final List<Long> f27991b;

    /* renamed from: c */
    public final List<String> f27992c;

    public C9207a(boolean z, List<Long> list, List<String> list2) {
        l.e(list, "idList");
        l.e(list2, "messageTypeList");
        this.f27990a = z;
        this.f27991b = list;
        this.f27992c = list2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9207a)) {
                return false;
            }
            C9207a c9207a = (C9207a) obj;
            return this.f27990a == c9207a.f27990a && l.a(this.f27991b, c9207a.f27991b) && l.a(this.f27992c, c9207a.f27992c);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f27990a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        List<Long> list = this.f27991b;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f27992c;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return ((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MarkImportantList(isImportant=");
        m8728C.append(this.f27990a);
        m8728C.append(", idList=");
        m8728C.append(this.f27991b);
        m8728C.append(", messageTypeList=");
        return C22128a.m8602l(m8728C, this.f27992c, ")");
    }
}
