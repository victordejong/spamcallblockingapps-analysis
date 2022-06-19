package p193e.p194a.p437c.p438a.p446c.p451h;

import com.truecaller.insights.p168ui.models.AdapterItem;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8831a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8835e;
import p193e.p194a.p437c.p438a.p446c.p450g.C8836f;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/i.class */
public final class C8851i {

    /* renamed from: a */
    public final AbstractC9691j f26963a;

    /* renamed from: b */
    public final AbstractC10028o f26964b;

    /* renamed from: c */
    public C8835e f26965c;

    /* renamed from: d */
    public C8831a f26966d;

    /* renamed from: e */
    public C8836f f26967e;

    /* renamed from: f */
    public AdapterItem.C4109a f26968f;

    /* renamed from: g */
    public boolean f26969g;

    public C8851i(AbstractC9691j abstractC9691j, AbstractC10028o abstractC10028o, C8835e c8835e, C8831a c8831a, C8836f c8836f, AdapterItem.C4109a c4109a, boolean z, int i) {
        z = (i & 64) != 0 ? false : z;
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10028o, "insightConfig");
        this.f26963a = abstractC9691j;
        this.f26964b = abstractC10028o;
        this.f26965c = null;
        this.f26966d = null;
        this.f26967e = null;
        this.f26968f = null;
        this.f26969g = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8851i)) {
                return false;
            }
            C8851i c8851i = (C8851i) obj;
            return l.a(this.f26963a, c8851i.f26963a) && l.a(this.f26964b, c8851i.f26964b) && l.a(this.f26965c, c8851i.f26965c) && l.a(this.f26966d, c8851i.f26966d) && l.a(this.f26967e, c8851i.f26967e) && l.a(this.f26968f, c8851i.f26968f) && this.f26969g == c8851i.f26969g;
        }
        return true;
    }

    public int hashCode() {
        AbstractC9691j abstractC9691j = this.f26963a;
        int i = 0;
        int hashCode = abstractC9691j != null ? abstractC9691j.hashCode() : 0;
        AbstractC10028o abstractC10028o = this.f26964b;
        int hashCode2 = abstractC10028o != null ? abstractC10028o.hashCode() : 0;
        C8835e c8835e = this.f26965c;
        int hashCode3 = c8835e != null ? c8835e.hashCode() : 0;
        C8831a c8831a = this.f26966d;
        int hashCode4 = c8831a != null ? c8831a.hashCode() : 0;
        C8836f c8836f = this.f26967e;
        int hashCode5 = c8836f != null ? c8836f.hashCode() : 0;
        AdapterItem.C4109a c4109a = this.f26968f;
        if (c4109a != null) {
            i = c4109a.hashCode();
        }
        boolean z = this.f26969g;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImportantTabContainer(insightsStatusProvider=");
        m8728C.append(this.f26963a);
        m8728C.append(", insightConfig=");
        m8728C.append(this.f26964b);
        m8728C.append(", upcomingSection=");
        m8728C.append(this.f26965c);
        m8728C.append(", financeSection=");
        m8728C.append(this.f26966d);
        m8728C.append(", updatesSection=");
        m8728C.append(this.f26967e);
        m8728C.append(", bannerItem=");
        m8728C.append(this.f26968f);
        m8728C.append(", hideTransactions=");
        return C22128a.m8590o(m8728C, this.f26969g, ")");
    }
}
