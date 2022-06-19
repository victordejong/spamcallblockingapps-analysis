package p193e.p194a.p619d.p628c.p633a0;

import com.truecaller.voip.C4781R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12092a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.c.a0.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/i.class */
public final class C11259i extends AbstractC20574a<AbstractC11258h> implements AbstractC11257g {

    /* renamed from: d */
    public boolean f33205d;

    /* renamed from: e */
    public final AbstractC12095d f33206e;

    /* renamed from: f */
    public final AbstractC11824d f33207f;

    /* renamed from: g */
    public final AbstractC11421j1 f33208g;

    /* renamed from: h */
    public final AbstractC11556y0 f33209h;

    @e(c = "com.truecaller.voip.ui.incoming.IncomingVoipPresenter$acceptCall$1", f = "IncomingVoipPresenter.kt", l = {95}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.a0.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/i$a.class */
    public static final class C11260a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33210e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11260a(d dVar) {
            super(2, dVar);
            C11259i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24950i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11260a(dVar);
        }

        /* renamed from: k */
        public final Object m24949k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11260a(dVar).m24948s(s.a);
        }

        /* renamed from: s */
        public final Object m24948s(Object obj) {
            a aVar = a.a;
            int i = this.f33210e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11258h abstractC11258h = (AbstractC11258h) C11259i.this.f57683a;
                if (abstractC11258h != null) {
                    abstractC11258h.mo24959W9(C4781R.C4782drawable.ic_tcx_voip_hangup_action_outline_24dp, C4781R.color.tcx_voip_action_end_call_background_color);
                    abstractC11258h.mo24962L();
                }
                this.f33210e = 1;
                if (s1.a.a.a.v0.f.d.D0(350L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC12093b m24952Jj = C11259i.this.m24952Jj();
            if (m24952Jj != null) {
                m24952Jj.mo23586b();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11259i(@Named("UI") f fVar, AbstractC12095d abstractC12095d, AbstractC11824d abstractC11824d, AbstractC11421j1 abstractC11421j1, AbstractC11556y0 abstractC11556y0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC11421j1, "voipSupport");
        l.e(abstractC11556y0, "voipIdProvider");
        this.f33206e = abstractC12095d;
        this.f33207f = abstractC11824d;
        this.f33208g = abstractC11421j1;
        this.f33209h = abstractC11556y0;
    }

    /* renamed from: Ij */
    public final p1 m24953Ij() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11260a(null), 3, (Object) null);
    }

    /* renamed from: Jj */
    public final AbstractC12093b m24952Jj() {
        return this.f33206e.mo23619e();
    }

    /* renamed from: Kj */
    public void m24951Kj() {
        AbstractC11258h abstractC11258h = (AbstractC11258h) this.f57683a;
        boolean z = true;
        if (abstractC11258h != null && abstractC11258h.mo24958Z2()) {
            m24953Ij();
            return;
        }
        AbstractC11258h abstractC11258h2 = (AbstractC11258h) this.f57683a;
        if (abstractC11258h2 == null || abstractC11258h2.mo24956n2()) {
            z = false;
        }
        this.f33205d = z;
        AbstractC11258h abstractC11258h3 = (AbstractC11258h) this.f57683a;
        if (abstractC11258h3 == null) {
            return;
        }
        abstractC11258h3.mo24954y1();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.d.c.a0.h, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11258h abstractC11258h) {
        String mo23627i;
        AbstractC11258h abstractC11258h2 = abstractC11258h;
        l.e(abstractC11258h2, "presenterView");
        this.f57683a = abstractC11258h2;
        AbstractC12092a abstractC12092a = null;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11261j(this, null), 3, (Object) null);
        AbstractC12093b m24952Jj = m24952Jj();
        if (m24952Jj instanceof AbstractC12092a) {
            abstractC12092a = m24952Jj;
        }
        AbstractC12092a abstractC12092a2 = abstractC12092a;
        if (abstractC12092a2 == null || (mo23627i = abstractC12092a2.mo23627i()) == null) {
            return;
        }
        abstractC11258h2.mo24964Av(mo23627i);
    }
}
