package p193e.p194a.p437c.p438a.p446c.p450g;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.g.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/g/a.class */
public final class C8831a {

    /* renamed from: a */
    public final AdapterItem.C4117i f26922a;

    /* renamed from: b */
    public final AbstractC9235b.C9236a f26923b;

    public C8831a(AdapterItem.C4117i c4117i, AbstractC9235b.C9236a c9236a) {
        l.e(c4117i, "titleItem");
        this.f26922a = c4117i;
        this.f26923b = c9236a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8831a)) {
                return false;
            }
            C8831a c8831a = (C8831a) obj;
            return l.a(this.f26922a, c8831a.f26922a) && l.a(this.f26923b, c8831a.f26923b);
        }
        return true;
    }

    public int hashCode() {
        AdapterItem.C4117i c4117i = this.f26922a;
        int i = 0;
        int hashCode = c4117i != null ? c4117i.hashCode() : 0;
        AbstractC9235b.C9236a c9236a = this.f26923b;
        if (c9236a != null) {
            i = c9236a.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FinanceSection(titleItem=");
        m8728C.append(this.f26922a);
        m8728C.append(", items=");
        m8728C.append(this.f26923b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
