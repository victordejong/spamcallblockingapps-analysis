package p193e.p194a.p947k.p948a.p953d;

import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import com.truecaller.videocallerid.utils.analytics.OnboardingStep;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p947k.p969c.AbstractC16015i1;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.k.a.d.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/k.class */
public final class C15654k extends AbstractC20576b<AbstractC15650g> implements AbstractC15649f {

    /* renamed from: b */
    public final AbstractC8426f f44197b;

    /* renamed from: c */
    public final AbstractC19223c0 f44198c;

    /* renamed from: d */
    public final AbstractC16015i1 f44199d;

    /* renamed from: e */
    public final AbstractC15997d f44200e;

    @Inject
    public C15654k(AbstractC8426f abstractC8426f, AbstractC19223c0 abstractC19223c0, AbstractC16015i1 abstractC16015i1, AbstractC15997d abstractC15997d) {
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16015i1, "settings");
        l.e(abstractC15997d, "analyticsUtil");
        this.f44197b = abstractC8426f;
        this.f44198c = abstractC19223c0;
        this.f44199d = abstractC16015i1;
        this.f44200e = abstractC15997d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.d.g, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15650g abstractC15650g) {
        C15653j c15653j;
        OnboardingData mo18549k0;
        AbstractC15650g abstractC15650g2 = abstractC15650g;
        l.e(abstractC15650g2, "presenterView");
        this.f57683a = abstractC15650g2;
        int ordinal = this.f44197b.mo28592f().ordinal();
        if (ordinal == 0) {
            c15653j = new C15653j("https://www.truecaller.com/terms-of-service#eu", "https://privacy.truecaller.com/privacy-policy-eu");
        } else if (ordinal == 1) {
            c15653j = new C15653j("https://www.truecaller.com/terms-of-service#row", "https://www.truecaller.com/california-privacy-policy");
        } else if (ordinal == 2) {
            c15653j = new C15653j("https://www.truecaller.com/terms-of-service#row", "https://www.truecaller.com/south-africa-privacy-policy");
        } else if (ordinal == 3) {
            c15653j = new C15653j("https://www.truecaller.com/terms-of-service#row", "https://www.truecaller.com/brazil-privacy-policy");
        } else if (ordinal != 4) {
            throw new i();
        } else {
            c15653j = new C15653j("https://www.truecaller.com/terms-of-service#row", "https://privacy.truecaller.com/privacy-policy");
        }
        AbstractC15650g abstractC15650g3 = (AbstractC15650g) this.f57683a;
        if (abstractC15650g3 != null) {
            AbstractC19223c0 abstractC19223c0 = this.f44198c;
            String mo13768b = abstractC19223c0.mo13768b(C4718R.string.vid_community_guideline_description, abstractC19223c0.mo13768b(C4718R.string.video_caller_id, new Object[0]), c15653j.f44195a, c15653j.f44196b, "https://www.truecaller.com/community-guidelines/video-caller-id");
            l.d(mo13768b, "resourceProvider.getStri…Y_GUIDELINE\n            )");
            abstractC15650g3.mo18551d(mo13768b);
        }
        AbstractC15650g abstractC15650g4 = (AbstractC15650g) this.f57683a;
        if (abstractC15650g4 == null || (mo18549k0 = abstractC15650g4.mo18549k0()) == null) {
            return;
        }
        this.f44200e.mo18011i(mo18549k0, OnboardingStep.GUIDELINE);
    }
}
