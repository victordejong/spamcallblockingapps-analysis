package p193e.p194a.p804h.p825d;

import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.f0.r;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.d.c$a */
/* loaded from: classes6-dex2jar.jar:e/a/h/d/c$a.class */
public final class c$a extends m implements a<Boolean> {

    /* renamed from: b */
    public final /* synthetic */ int f42138b;

    /* renamed from: c */
    public final /* synthetic */ Object f42139c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c$a(int i, Object obj) {
        super(0);
        this.f42138b = i;
        this.f42139c = obj;
    }

    public final Object invoke() {
        int i = this.f42138b;
        boolean z = true;
        if (i == 0) {
            AbstractC13497p abstractC13497p = ((c) this.f42139c).f;
            return Boolean.valueOf(r.n("IN", abstractC13497p.mo21735r(abstractC13497p.mo21743b()), true));
        } else if (i == 1) {
            return Boolean.valueOf(l.a("IN", ((c) this.f42139c).e.mo28176o()));
        } else {
            if (i != 2) {
                throw null;
            }
            C20592g c20592g = ((c) this.f42139c).d;
            if (!c20592g.f58064y2.m10941a(c20592g, C20592g.f57695p6[180]).isEnabled() || !((Boolean) ((c) this.f42139c).a.getValue()).booleanValue() || !((Boolean) ((c) this.f42139c).b.getValue()).booleanValue()) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }
}
