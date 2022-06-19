package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import com.truecaller.voip.C4781R;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p682e.C12864a2;
import q3.a.p1;
import s1.k;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c.a.p.a.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/u.class */
public final class C11243u extends AbstractC20574a<AbstractC11231p> implements AbstractC11230o {

    /* renamed from: d */
    public C11593e f33166d;

    /* renamed from: e */
    public AbstractC12020a f33167e;

    /* renamed from: f */
    public boolean f33168f;

    /* renamed from: g */
    public boolean f33169g;

    /* renamed from: h */
    public p1 f33170h;

    /* renamed from: i */
    public p1 f33171i;

    /* renamed from: j */
    public final f f33172j;

    /* renamed from: k */
    public final AbstractC11824d f33173k;

    /* renamed from: l */
    public final AbstractC19223c0 f33174l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11243u(@Named("UI") f fVar, AbstractC11824d abstractC11824d, AbstractC19223c0 abstractC19223c0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC19223c0, "resourceProvider");
        this.f33172j = fVar;
        this.f33173k = abstractC11824d;
        this.f33174l = abstractC19223c0;
    }

    /* renamed from: Ij */
    public final void m24985Ij() {
        m24983Kj(null, false);
    }

    /* renamed from: Jj */
    public void m24984Jj(boolean z) {
        this.f33169g = z;
        AbstractC11231p abstractC11231p = (AbstractC11231p) this.f57683a;
        if (abstractC11231p != null) {
            if (this.f33168f) {
                abstractC11231p.setViewSize(z ? C4781R.dimen.voip_contact_incoming_tile_size_big : C4781R.dimen.voip_contact_incoming_tile_size_small);
                abstractC11231p.setAvatarSize(z ? C4781R.dimen.voip_contact_incoming_tile_profile_size_big : C4781R.dimen.voip_contact_incoming_tile_profile_size_small);
                abstractC11231p.setInviteSenderSize(z ? C4781R.dimen.voip_contact_incoming_tile_invite_sender_size_big : C4781R.dimen.voip_contact_incoming_tile_invite_sender_size_small);
                abstractC11231p.setNameSize(z ? C4781R.dimen.voip_contact_incoming_tile_text_size_big : C4781R.dimen.voip_contact_incoming_tile_text_size_small);
                abstractC11231p.setLoaderNameWidth(z ? C4781R.dimen.voip_contact_incoming_tile_loader_name_width_big : C4781R.dimen.voip_contact_incoming_tile_loader_name_width_small);
            } else {
                abstractC11231p.setViewSize(z ? C4781R.dimen.voip_contact_tile_size_big : C4781R.dimen.voip_contact_tile_size_small);
                abstractC11231p.setAvatarSize(z ? C4781R.dimen.voip_contact_tile_profile_size_big : C4781R.dimen.voip_contact_tile_profile_size_small);
                abstractC11231p.setMuteSize(z ? C4781R.dimen.voip_contact_tile_mute_size_big : C4781R.dimen.voip_contact_tile_mute_size_small);
                abstractC11231p.setInviteSenderSize(z ? C4781R.dimen.voip_contact_tile_invite_sender_size_big : C4781R.dimen.voip_contact_tile_invite_sender_size_small);
                abstractC11231p.setNameSize(z ? C4781R.dimen.voip_contact_tile_text_size_big : C4781R.dimen.voip_contact_tile_text_size_small);
                abstractC11231p.setLoaderNameWidth(z ? C4781R.dimen.voip_contact_tile_loader_name_width_big : C4781R.dimen.voip_contact_tile_loader_name_width_small);
            }
            abstractC11231p.mo24979a();
        }
    }

    /* renamed from: Kj */
    public final void m24983Kj(k<Integer, Integer> kVar, boolean z) {
        AbstractC11231p abstractC11231p = (AbstractC11231p) this.f57683a;
        if (abstractC11231p != null) {
            if (kVar == null) {
                abstractC11231p.mo24972s1();
            } else {
                abstractC11231p.mo24974l(((Number) kVar.a).intValue(), ((Number) kVar.b).intValue());
            }
            abstractC11231p.mo24971x0(kVar == null);
            abstractC11231p.mo24973o(z);
        }
    }

    /* renamed from: Lj */
    public final void m24982Lj() {
        C11593e c11593e = this.f33166d;
        boolean m22540r = C12864a2.m22540r(c11593e != null ? Boolean.valueOf(c11593e.f33992c) : null);
        boolean z = this.f33168f;
        AbstractC11231p abstractC11231p = (AbstractC11231p) this.f57683a;
        if (abstractC11231p != null) {
            abstractC11231p.mo24977c0(z && m22540r);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.d.c.a.p.a.p, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11231p abstractC11231p) {
        AbstractC11231p abstractC11231p2 = abstractC11231p;
        l.e(abstractC11231p2, "presenterView");
        this.f57683a = abstractC11231p2;
        m24985Ij();
    }
}
