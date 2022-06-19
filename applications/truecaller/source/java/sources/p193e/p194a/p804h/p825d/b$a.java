package p193e.p194a.p804h.p825d;

import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.f0.r;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.d.b$a */
/* loaded from: classes5-dex2jar.jar:e/a/h/d/b$a.class */
public final class b$a extends m implements a<Boolean> {

    /* renamed from: b */
    public final /* synthetic */ int f42136b;

    /* renamed from: c */
    public final /* synthetic */ Object f42137c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b$a(int i, Object obj) {
        super(0);
        this.f42136b = i;
        this.f42137c = obj;
    }

    public final Object invoke() {
        int i = this.f42136b;
        boolean z = true;
        if (i == 0) {
            AbstractC13497p abstractC13497p = ((b) this.f42137c).g;
            return Boolean.valueOf(r.n("BR", abstractC13497p.mo21735r(abstractC13497p.mo21743b()), true));
        } else if (i == 1) {
            return Boolean.valueOf(l.a("BR", ((b) this.f42137c).f.mo28176o()));
        } else {
            if (i != 2) {
                throw null;
            }
            C20592g c20592g = ((b) this.f42137c).e;
            if (!c20592g.f58057x2.m10941a(c20592g, C20592g.f57695p6[179]).isEnabled() || !((Boolean) ((b) this.f42137c).b.getValue()).booleanValue() || !((Boolean) ((b) this.f42137c).c.getValue()).booleanValue()) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }
}
