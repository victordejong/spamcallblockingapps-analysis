package p193e.p194a.p947k.p969c;

import com.truecaller.videocallerid.utils.OnboardingType;
import com.truecaller.videocallerid.utils.VideoCallerIdOnboardingIntervalDays;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19243l;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.k.c.z0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/z0.class */
public final class C16105z0 implements AbstractC16102y0 {

    /* renamed from: a */
    public VideoCallerIdOnboardingIntervalDays f45368a;

    /* renamed from: b */
    public final C20592g f45369b;

    /* renamed from: c */
    public final AbstractC16067r0 f45370c;

    /* renamed from: d */
    public final AbstractC16015i1 f45371d;

    /* renamed from: e */
    public final AbstractC19222c f45372e;

    /* renamed from: f */
    public final AbstractC19243l f45373f;

    @Inject
    public C16105z0(C20592g c20592g, AbstractC16067r0 abstractC16067r0, AbstractC16015i1 abstractC16015i1, AbstractC19222c abstractC19222c, AbstractC19243l abstractC19243l) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(abstractC16015i1, "videoCallerIdSettings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19243l, "gsonUtil");
        this.f45369b = c20592g;
        this.f45370c = abstractC16067r0;
        this.f45371d = abstractC16015i1;
        this.f45372e = abstractC19222c;
        this.f45373f = abstractC19243l;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16102y0
    /* renamed from: a */
    public void mo17882a(OnboardingType onboardingType) {
        l.e(onboardingType, "onboardingType");
        int ordinal = onboardingType.ordinal();
        if (ordinal == 0) {
            this.f45371d.putLong("onboardingInFacsWithoutVcidShownAt", this.f45372e.mo13819c());
        } else if (ordinal == 1) {
            this.f45371d.putLong("onboardingInFacsWithVcidShownAt", this.f45372e.mo13819c());
        } else if (ordinal == 2) {
            this.f45371d.putLong("onboardingInPacsCallWithoutVcidShownAt", this.f45372e.mo13819c());
        } else if (ordinal == 3) {
            this.f45371d.putLong("onboardingInPacsCallWithVcidShownAt", this.f45372e.mo13819c());
        } else if (ordinal != 4) {
        } else {
            this.f45371d.putLong("onboardingInPacsExpansionShownAt", this.f45372e.mo13819c());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // p193e.p194a.p947k.p969c.AbstractC16102y0
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17881e(com.truecaller.videocallerid.utils.OnboardingType r6) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16105z0.mo17881e(com.truecaller.videocallerid.utils.OnboardingType):boolean");
    }
}
