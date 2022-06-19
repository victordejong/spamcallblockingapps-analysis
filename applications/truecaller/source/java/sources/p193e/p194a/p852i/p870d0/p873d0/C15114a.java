package p193e.p194a.p852i.p870d0.p873d0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.p862c.p866d.C15055l;
import s1.z.c.l;
/* renamed from: e.a.i.d0.d0.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/d0/d0/a.class */
public final class C15114a {

    /* renamed from: a */
    public final C15055l f43074a;

    /* renamed from: b */
    public final AbstractC15191g f43075b;

    public C15114a(C15055l c15055l, AbstractC15191g abstractC15191g) {
        l.e(c15055l, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(abstractC15191g, "layoutType");
        this.f43074a = c15055l;
        this.f43075b = abstractC15191g;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15114a)) {
                return false;
            }
            C15114a c15114a = (C15114a) obj;
            return l.a(this.f43074a, c15114a.f43074a) && l.a(this.f43075b, c15114a.f43075b);
        }
        return true;
    }

    public int hashCode() {
        C15055l c15055l = this.f43074a;
        int i = 0;
        int hashCode = c15055l != null ? c15055l.hashCode() : 0;
        AbstractC15191g abstractC15191g = this.f43075b;
        if (abstractC15191g != null) {
            i = abstractC15191g.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdBannerConfig(config=");
        m8728C.append(this.f43074a);
        m8728C.append(", layoutType=");
        m8728C.append(this.f43075b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
