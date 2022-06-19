package p193e.p194a.p837h0.p846y;

import com.truecaller.C2752R;
import com.truecaller.premium.PremiumLaunchContext;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.AbstractC14856t;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
/* renamed from: e.a.h0.y.h */
/* loaded from: classes9-dex2jar.jar:e/a/h0/y/h.class */
public class C14895h extends AbstractC14894g implements AbstractC15211m {

    /* renamed from: b */
    public final AbstractC14840m f42585b;

    /* renamed from: c */
    public final AbstractC18951b0 f42586c;

    /* renamed from: d */
    public final AbstractC19321u f42587d;

    /* renamed from: e */
    public final AbstractC19223c0 f42588e;

    /* renamed from: f */
    public final AbstractC15163d f42589f;

    /* renamed from: g */
    public final C15222s f42590g;

    /* renamed from: h */
    public final AbstractC19462a f42591h;

    /* renamed from: i */
    public final AbstractC14856t f42592i;

    /* renamed from: j */
    public final AbstractC17197v0 f42593j;

    /* renamed from: k */
    public AbstractC15183d f42594k = null;

    public C14895h(AbstractC14840m abstractC14840m, AbstractC18951b0 abstractC18951b0, AbstractC19321u abstractC19321u, AbstractC19462a abstractC19462a, AbstractC19223c0 abstractC19223c0, AbstractC15163d abstractC15163d, C15222s c15222s, AbstractC14856t abstractC14856t, AbstractC17197v0 abstractC17197v0) {
        this.f42585b = abstractC14840m;
        this.f42586c = abstractC18951b0;
        this.f42587d = abstractC19321u;
        this.f42591h = abstractC19462a;
        this.f42588e = abstractC19223c0;
        this.f42589f = abstractC15163d;
        this.f42590g = c15222s;
        this.f42592i = abstractC14856t;
        this.f42593j = abstractC17197v0;
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14894g
    /* renamed from: Hj */
    public void mo19492Hj() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC14896i) pv).mo19485W0(PremiumLaunchContext.UPDATE_SPAMMERS_DIALOG);
        }
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14894g
    /* renamed from: Ij */
    public void mo19491Ij(boolean z) {
        if (this.f57683a != 0) {
            if (!this.f42587d.mo13429d()) {
                ((AbstractC14896i) this.f57683a).mo19488I6();
                return;
            }
            ((AbstractC14896i) this.f57683a).mo19482y8();
            this.f42592i.mo19521d();
            this.f42585b.mo19552p(false);
        }
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14894g
    /* renamed from: Jj */
    public void mo19490Jj() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC14896i) pv).mo19483kd();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [PV, e.a.h0.y.i] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        this.f57683a = (AbstractC14896i) obj;
        long mo19545w = this.f42585b.mo19545w();
        String mo13768b = mo19545w > 0 ? this.f42588e.mo13768b(C2752R.string.UpdateFiltersLastUpdated, this.f42586c.mo14273v(mo19545w)) : null;
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC14896i) pv).mo19486Ta(mo13768b);
        }
        this.f42589f.m19084l(this.f42590g, this, null);
        this.f42591h.mo13274b(C19597a.m13113c("blockViewUpdate", "blockView"));
        this.f42589f.m19083m(this.f42590g, null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        this.f42589f.m19085h(this.f42590g, this);
        AbstractC15183d abstractC15183d = this.f42594k;
        if (abstractC15183d != null) {
            abstractC15183d.destroy();
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
        if (this.f57683a == 0 || this.f42593j.mo16408H()) {
            return;
        }
        ((AbstractC14896i) this.f57683a).mo19484g9();
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC15183d m19087f;
        if (this.f42594k != null || this.f57683a == 0 || (m19087f = this.f42589f.m19087f(this.f42590g, 0)) == null) {
            return;
        }
        ((AbstractC14896i) this.f57683a).mo19489Em();
        ((AbstractC14896i) this.f57683a).mo19487R3(m19087f);
        this.f42594k = m19087f;
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
    }
}
