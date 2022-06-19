package p193e.p194a.p437c.p438a.p446c.p450g;

import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.g.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/e.class */
public final class C8835e {

    /* renamed from: a */
    public final AdapterItem.C4117i f26936a;

    /* renamed from: b */
    public final List<AbstractC9235b.C9242g> f26937b;

    public C8835e(AdapterItem.C4117i c4117i, List<AbstractC9235b.C9242g> list) {
        l.e(c4117i, "titleItem");
        l.e(list, "reminderItems");
        this.f26936a = c4117i;
        this.f26937b = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8835e)) {
                return false;
            }
            C8835e c8835e = (C8835e) obj;
            return l.a(this.f26936a, c8835e.f26936a) && l.a(this.f26937b, c8835e.f26937b);
        }
        return true;
    }

    public int hashCode() {
        AdapterItem.C4117i c4117i = this.f26936a;
        int i = 0;
        int hashCode = c4117i != null ? c4117i.hashCode() : 0;
        List<AbstractC9235b.C9242g> list = this.f26937b;
        if (list != null) {
            i = list.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpcomingSection(titleItem=");
        m8728C.append(this.f26936a);
        m8728C.append(", reminderItems=");
        return C22128a.m8602l(m8728C, this.f26937b, ")");
    }
}
