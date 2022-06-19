package p193e.p194a.p673d0;

import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
/* renamed from: e.a.d0.p */
/* loaded from: classes6-dex2jar.jar:e/a/d0/p.class */
public final class C12538p implements AbstractC12536o {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC12555t> f36645a;

    /* renamed from: b */
    public final AbstractC19230g f36646b;

    @Inject
    public C12538p(AbstractC19854f<AbstractC12555t> abstractC19854f, AbstractC19230g abstractC19230g) {
        l.e(abstractC19854f, "callNotificationsManager");
        l.e(abstractC19230g, "deviceInfoUtils");
        this.f36645a = abstractC19854f;
        this.f36646b = abstractC19230g;
    }

    @Override // p193e.p194a.p673d0.AbstractC12536o
    /* renamed from: a */
    public void mo22886a(C12560v c12560v) {
        l.e(c12560v, "callState");
        int i = c12560v.f36676h;
        boolean z = false;
        boolean z2 = i == 12785645;
        boolean z3 = i == 3;
        if (i == 1) {
            z = true;
        }
        if (z2 && this.f36646b.mo13780q() >= 24 && !this.f36646b.mo13791f()) {
            this.f36645a.mo11854a().mo22877f();
        }
        if (z3 || z) {
            this.f36645a.mo11854a().mo22875h(c12560v);
        }
    }
}
