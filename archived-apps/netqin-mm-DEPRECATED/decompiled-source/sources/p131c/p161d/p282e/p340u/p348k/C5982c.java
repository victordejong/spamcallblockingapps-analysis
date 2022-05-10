package p131c.p161d.p282e.p340u.p348k;

import p131c.p161d.p170b.p173b.AbstractC2494c;
import p131c.p161d.p170b.p173b.AbstractC2496e;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6035s;
/* renamed from: c.d.e.u.k.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/c.class */
public final class C5982c {

    /* renamed from: d */
    public static final C5969a f19418d = C5969a.m22496a();

    /* renamed from: a */
    public final String f19419a;

    /* renamed from: b */
    public final AbstractC5887a<AbstractC2497f> f19420b;

    /* renamed from: c */
    public AbstractC2496e<C6035s> f19421c;

    public C5982c(AbstractC5887a<AbstractC2497f> aVar, String str) {
        this.f19419a = str;
        this.f19420b = aVar;
    }

    /* renamed from: a */
    public void m22422a(C6035s sVar) {
        if (!m22423a()) {
            f19418d.m22491d("Unable to dispatch event because Flg Transport is not available", new Object[0]);
            return;
        }
        this.f19421c.mo29494a(AbstractC2494c.m29659a(sVar));
        f19418d.m22492c("Event is dispatched via Flg Transport", new Object[0]);
    }

    /* renamed from: a */
    public final boolean m22423a() {
        boolean z = false;
        if (this.f19421c == null) {
            AbstractC2497f fVar = this.f19420b.get();
            if (fVar != null) {
                this.f19421c = fVar.mo29497a(this.f19419a, C6035s.class, C2493b.m29661a("proto"), C5981b.m22424a());
            } else {
                f19418d.m22491d("Flg TransportFactory is not available at the moment", new Object[0]);
            }
        }
        if (this.f19421c != null) {
            z = true;
        }
        return z;
    }
}
