package p193e.p194a.p837h0.p838a.p841c0;

import com.truecaller.blocking.FiltersContract;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p837h0.AbstractC14854r;
import w3.c.a.a.a.h;
/* renamed from: e.a.h0.a.c0.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/c0/f.class */
public class C14778f extends AbstractC14777e {

    /* renamed from: b */
    public final AbstractC19868j f42286b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC14854r> f42287c;

    public C14778f(AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC14854r> abstractC19854f) {
        this.f42286b = abstractC19868j;
        this.f42287c = abstractC19854f;
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14777e
    /* renamed from: Hj */
    public void mo19677Hj() {
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((AbstractC14779g) pv).mo19673mv(false);
        ((AbstractC14779g) this.f57683a).mo19674N(false);
        String mo19675E5 = ((AbstractC14779g) this.f57683a).mo19675E5();
        this.f42287c.mo11854a().mo19527f(mo19675E5, "OTHER", mo19675E5, "blockView", false, FiltersContract.Filters.EntityType.UNKNOWN, null, null).mo11830e(this.f42286b, new AbstractC19851d0() { // from class: e.a.h0.a.c0.b
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C14778f c14778f = C14778f.this;
                ((Boolean) obj).booleanValue();
                PV pv2 = c14778f.f57683a;
                if (pv2 != 0) {
                    ((AbstractC14779g) pv2).mo19672x();
                    ((AbstractC14779g) c14778f.f57683a).finish();
                }
            }
        });
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14777e
    /* renamed from: Ij */
    public void mo19676Ij(String str) {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC14779g) pv).mo19674N(!h.j(str));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.h0.a.c0.g, PV] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC14779g) obj;
        this.f57683a = r0;
        r0.mo19674N(false);
    }
}
