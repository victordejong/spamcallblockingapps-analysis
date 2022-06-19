package p193e.p194a.p437c.p523a0;

import com.truecaller.insights.models.InsightsDomain;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a0.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/g.class */
public final class C9629g {

    /* renamed from: a */
    public final String f29092a;

    /* renamed from: b */
    public final List<InsightsDomain.C4057a> f29093b;

    /* renamed from: c */
    public final List<InsightsDomain.C4057a> f29094c;

    public C9629g(String str, List<InsightsDomain.C4057a> list, List<InsightsDomain.C4057a> list2) {
        l.e(str, "address");
        l.e(list, "transactionWithoutAccount");
        l.e(list2, "transactionWithAccount");
        this.f29092a = str;
        this.f29093b = list;
        this.f29094c = list2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9629g)) {
                return false;
            }
            C9629g c9629g = (C9629g) obj;
            return l.a(this.f29092a, c9629g.f29092a) && l.a(this.f29093b, c9629g.f29093b) && l.a(this.f29094c, c9629g.f29094c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f29092a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<InsightsDomain.C4057a> list = this.f29093b;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<InsightsDomain.C4057a> list2 = this.f29094c;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AddressTransactionsHolder(address=");
        m8728C.append(this.f29092a);
        m8728C.append(", transactionWithoutAccount=");
        m8728C.append(this.f29093b);
        m8728C.append(", transactionWithAccount=");
        return C22128a.m8602l(m8728C, this.f29094c, ")");
    }
}
