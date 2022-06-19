package p193e.p194a.p437c.p606w;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p548h.C10251a;
import s1.z.c.l;
/* renamed from: e.a.c.w.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/j.class */
public final class C10778j {

    /* renamed from: a */
    public final int f31995a;

    /* renamed from: b */
    public final String f31996b;

    /* renamed from: c */
    public final List<C10251a> f31997c;

    public C10778j(int i, String str, List<C10251a> list) {
        l.e(str, "brandId");
        l.e(list, "monitoringData");
        this.f31995a = i;
        this.f31996b = str;
        this.f31997c = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10778j)) {
                return false;
            }
            C10778j c10778j = (C10778j) obj;
            return this.f31995a == c10778j.f31995a && l.a(this.f31996b, c10778j.f31996b) && l.a(this.f31997c, c10778j.f31997c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f31995a;
        String str = this.f31996b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<C10251a> list = this.f31997c;
        if (list != null) {
            i2 = list.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BrandKeywordStat(version=");
        m8728C.append(this.f31995a);
        m8728C.append(", brandId=");
        m8728C.append(this.f31996b);
        m8728C.append(", monitoringData=");
        return C22128a.m8602l(m8728C, this.f31997c, ")");
    }
}
