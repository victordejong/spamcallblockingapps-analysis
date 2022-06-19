package p193e.p194a.p437c.p438a.p507p.p510c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.List;
import p1727n3.p1909z.C27549a2;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.c.a.p.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/c/e.class */
public final class C9466e {

    /* renamed from: a */
    public final C27549a2 f28710a;

    /* renamed from: b */
    public final boolean f28711b;

    /* renamed from: c */
    public final l<Boolean, s> f28712c;

    /* renamed from: d */
    public final List<AbstractC10836e> f28713d;

    /* JADX WARN: Multi-variable type inference failed */
    public C9466e(C27549a2 c27549a2, boolean z, l<? super Boolean, s> lVar, List<? extends AbstractC10836e> list) {
        s1.z.c.l.e(c27549a2, DTBMetricsConfiguration.CONFIG_DIR);
        s1.z.c.l.e(lVar, "expandCallback");
        s1.z.c.l.e(list, "selectedFilters");
        this.f28710a = c27549a2;
        this.f28711b = z;
        this.f28712c = lVar;
        this.f28713d = list;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C9466e)) {
                return false;
            }
            C9466e c9466e = (C9466e) obj;
            return s1.z.c.l.a(this.f28710a, c9466e.f28710a) && this.f28711b == c9466e.f28711b && s1.z.c.l.a(this.f28712c, c9466e.f28712c) && s1.z.c.l.a(this.f28713d, c9466e.f28713d);
        }
        return true;
    }

    public int hashCode() {
        C27549a2 c27549a2 = this.f28710a;
        int i = 0;
        int hashCode = c27549a2 != null ? c27549a2.hashCode() : 0;
        boolean z = this.f28711b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        l<Boolean, s> lVar = this.f28712c;
        int hashCode2 = lVar != null ? lVar.hashCode() : 0;
        List<AbstractC10836e> list = this.f28713d;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmartFeedInput(config=");
        m8728C.append(this.f28710a);
        m8728C.append(", isExpanded=");
        m8728C.append(this.f28711b);
        m8728C.append(", expandCallback=");
        m8728C.append(this.f28712c);
        m8728C.append(", selectedFilters=");
        return C22128a.m8602l(m8728C, this.f28713d, ")");
    }
}
