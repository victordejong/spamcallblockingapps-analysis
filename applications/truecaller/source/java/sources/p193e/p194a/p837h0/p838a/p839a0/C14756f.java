package p193e.p194a.p837h0.p838a.p839a0;

import com.truecaller.blocking.FiltersContract;
import com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p837h0.AbstractC14854r;
import w3.c.a.a.a.h;
/* renamed from: e.a.h0.a.a0.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/a0/f.class */
public class C14756f extends AbstractC14755e {

    /* renamed from: b */
    public final AbstractC19868j f42258b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC14854r> f42259c;

    public C14756f(AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC14854r> abstractC19854f) {
        this.f42258b = abstractC19868j;
        this.f42259c = abstractC19854f;
    }

    @Override // p193e.p194a.p837h0.p838a.p839a0.AbstractC14755e
    /* renamed from: Hj */
    public void mo19686Hj() {
        FiltersContract.Filters.WildCardType wildCardType;
        PV pv = this.f57683a;
        if (pv == 0) {
            return;
        }
        ((BlockAdvancedPresenterView) pv).mo19689R1(false);
        ((BlockAdvancedPresenterView) this.f57683a).mo19691N(false);
        String mo19688t2 = ((BlockAdvancedPresenterView) this.f57683a).mo19688t2();
        int ordinal = ((BlockAdvancedPresenterView) this.f57683a).mo19690O7().ordinal();
        if (ordinal == 0) {
            wildCardType = FiltersContract.Filters.WildCardType.START;
        } else if (ordinal == 1) {
            wildCardType = FiltersContract.Filters.WildCardType.CONTAIN;
        } else if (ordinal != 2) {
            AssertionUtil.AlwaysFatal.fail("Unknown wildcard type");
            return;
        } else {
            wildCardType = FiltersContract.Filters.WildCardType.END;
        }
        this.f42259c.mo11854a().mo19529d(mo19688t2, null, wildCardType, "blockView").mo11830e(this.f42258b, new AbstractC19851d0() { // from class: e.a.h0.a.a0.b
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C14756f c14756f = C14756f.this;
                ((Boolean) obj).booleanValue();
                PV pv2 = c14756f.f57683a;
                if (pv2 != 0) {
                    ((BlockAdvancedPresenterView) pv2).mo19687x();
                    ((BlockAdvancedPresenterView) c14756f.f57683a).finish();
                }
            }
        });
    }

    @Override // p193e.p194a.p837h0.p838a.p839a0.AbstractC14755e
    /* renamed from: Ij */
    public void mo19685Ij(String str) {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((BlockAdvancedPresenterView) pv).mo19691N(!h.j(str));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (BlockAdvancedPresenterView) obj;
        this.f57683a = r0;
        r0.mo19691N(false);
    }
}
