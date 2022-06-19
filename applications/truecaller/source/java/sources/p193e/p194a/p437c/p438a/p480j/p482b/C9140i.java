package p193e.p194a.p437c.p438a.p480j.p482b;

import com.huawei.hms.actions.SearchIntents;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.b.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/b/i.class */
public final class C9140i {

    /* renamed from: a */
    public final String f27845a;

    /* renamed from: b */
    public final Set<AbstractC10836e> f27846b;

    /* renamed from: c */
    public final Set<AbstractC10836e> f27847c;

    /* renamed from: d */
    public final boolean f27848d;

    /* JADX WARN: Multi-variable type inference failed */
    public C9140i(String str, Set<? extends AbstractC10836e> set, Set<? extends AbstractC10836e> set2, boolean z) {
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(set, "currentFilters");
        l.e(set2, "appliedFilters");
        this.f27845a = str;
        this.f27846b = set;
        this.f27847c = set2;
        this.f27848d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9140i)) {
                return false;
            }
            C9140i c9140i = (C9140i) obj;
            return l.a(this.f27845a, c9140i.f27845a) && l.a(this.f27846b, c9140i.f27846b) && l.a(this.f27847c, c9140i.f27847c) && this.f27848d == c9140i.f27848d;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f27845a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Set<AbstractC10836e> set = this.f27846b;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Set<AbstractC10836e> set2 = this.f27847c;
        if (set2 != null) {
            i = set2.hashCode();
        }
        boolean z = this.f27848d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SenderFilterInput(query=");
        m8728C.append(this.f27845a);
        m8728C.append(", currentFilters=");
        m8728C.append(this.f27846b);
        m8728C.append(", appliedFilters=");
        m8728C.append(this.f27847c);
        m8728C.append(", quickSelection=");
        return C22128a.m8590o(m8728C, this.f27848d, ")");
    }
}
