package p193e.p194a.p437c.p438a.p487k.p490c;

import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.l;
/* renamed from: e.a.c.a.k.c.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/c/d.class */
public final class C9213d {

    /* renamed from: a */
    public final AdapterItem.C4117i f27998a;

    /* renamed from: b */
    public final List<AbstractC9235b.C9238c> f27999b;

    public C9213d(AdapterItem.C4117i c4117i, List<AbstractC9235b.C9238c> list) {
        l.e(list, "markImpValueItems");
        this.f27998a = c4117i;
        this.f27999b = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9213d)) {
                return false;
            }
            C9213d c9213d = (C9213d) obj;
            return l.a(this.f27998a, c9213d.f27998a) && l.a(this.f27999b, c9213d.f27999b);
        }
        return true;
    }

    public int hashCode() {
        AdapterItem.C4117i c4117i = this.f27998a;
        int i = 0;
        int hashCode = c4117i != null ? c4117i.hashCode() : 0;
        List<AbstractC9235b.C9238c> list = this.f27999b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MarkedImportantPageSection(titleItem=");
        m8728C.append(this.f27998a);
        m8728C.append(", markImpValueItems=");
        return C22128a.m8602l(m8728C, this.f27999b, ")");
    }
}
