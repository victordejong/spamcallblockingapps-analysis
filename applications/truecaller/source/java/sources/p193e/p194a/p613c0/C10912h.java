package p193e.p194a.p613c0;

import com.truecaller.abtest.ThreeVariants;
import com.truecaller.abtest.TwoVariants;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.C15260i1;
import p193e.p194a.C19813r1;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.z.c.l;
/* renamed from: e.a.c0.h */
/* loaded from: classes4-dex2jar.jar:e/a/c0/h.class */
public final class C10912h {

    /* renamed from: a */
    public final Set<AbstractC10908f<?>> f32399a;

    /* renamed from: b */
    public final C10921o f32400b;

    /* renamed from: c */
    public final C10905c<TwoVariants> f32401c;

    /* renamed from: d */
    public final C10905c<TwoVariants> f32402d;

    /* renamed from: e */
    public final C10905c<TwoVariants> f32403e;

    /* renamed from: f */
    public final C10905c<ThreeVariants> f32404f;

    /* renamed from: g */
    public final C10905c<ThreeVariants> f32405g;

    /* renamed from: h */
    public final C10905c<ThreeVariants> f32406h;

    /* renamed from: i */
    public final C10905c<TwoVariants> f32407i;

    /* renamed from: j */
    public final C10905c<TwoVariants> f32408j;

    /* renamed from: k */
    public final C10905c<TwoVariants> f32409k;

    /* renamed from: l */
    public final AbstractC10922p f32410l;

    /* renamed from: m */
    public final C10907e f32411m;

    @Inject
    public C10912h(AbstractC10922p abstractC10922p, C10907e c10907e) {
        l.e(abstractC10922p, "stringExperimentFactory");
        l.e(c10907e, "enumExperimentFactory");
        this.f32410l = abstractC10922p;
        this.f32411m = c10907e;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f32399a = linkedHashSet;
        C10911g c10911g = new C10911g("Premium pricing test", "PremiumPricingVariant_21771", "", "");
        C19813r1 c19813r1 = ((C15260i1) abstractC10922p).f43465a.f55161P;
        C10921o c10921o = new C10921o(c10911g, c19813r1.mo12671K0(), (AbstractC19494d) c19813r1.f55508h0.get());
        linkedHashSet.add(c10921o);
        this.f32400b = c10921o;
        C10905c<TwoVariants> m25511a = c10907e.m25511a(new C10906d("Show WhatsApp Caller ID", "showFeatureWhatsappCallerId_35775", "premiumTabV2_35775_seen", "premiumTabV2_35775_conv", true), TwoVariants.class);
        linkedHashSet.add(m25511a);
        this.f32401c = m25511a;
        C10905c<TwoVariants> m25511a2 = c10907e.m25511a(new C10906d("Show temporary promo card", "showTemporaryPromoCard_34008", "premiumTemporaryCard_34008_seen", "premiumTemporaryCard_34008_conv", false), TwoVariants.class);
        linkedHashSet.add(m25511a2);
        this.f32402d = m25511a2;
        C10905c<TwoVariants> m25511a3 = c10907e.m25511a(new C10906d("Show promo banner on WVM screen", "WVMPromotionBannerShown_36331", "ab_test_wvm_paywall_seen_36331", "ab_test_wvm_paywall_conv_36331", false), TwoVariants.class);
        linkedHashSet.add(m25511a3);
        this.f32403e = m25511a3;
        C10905c<ThreeVariants> m25511a4 = c10907e.m25511a(new C10906d("Reveal Single Profile View on WVM screen", "WVMRevealProfileView_35790", "ab_test_wvm_paywall_seen_35790", "ab_test_wvm_paywall_conv_35790", false), ThreeVariants.class);
        linkedHashSet.add(m25511a4);
        this.f32404f = m25511a4;
        C10905c<ThreeVariants> m25511a5 = c10907e.m25511a(new C10906d("Show onboarding popup to the new users", "OnBoardingPremiumPopupNewUsers_31778", "OnBoardingPremiumPopupNewUser_31778_seen", "OnBoardingPremiumPopupNewUser_31778_conv", false), ThreeVariants.class);
        linkedHashSet.add(m25511a5);
        this.f32405g = m25511a5;
        C10905c<ThreeVariants> m25511a6 = c10907e.m25511a(new C10906d("Try out different notification content to convert people to user Inbox Cleaner", "inboxCleanupVariant_38157", "ab_test_ci_notification_generated_38157", "ab_test_ci_notification_opened_38157", false), ThreeVariants.class);
        linkedHashSet.add(m25511a6);
        this.f32406h = m25511a6;
        C10905c<TwoVariants> m25511a7 = c10907e.m25511a(new C10906d("Video caller id onboarding title test", "videoCallerIdOnboardingTitle_38248", "videoCallerIdOnboardingTitle_38248_seen", "videoCallerIdOnboardingTitle_38248_conv", false), TwoVariants.class);
        linkedHashSet.add(m25511a7);
        this.f32407i = m25511a7;
        C10905c<TwoVariants> m25511a8 = c10907e.m25511a(new C10906d("Caller id banner at promo section", "featureCallerIdBannerVariant_38706", "featureCallerIdBannerVariant_38706_seen", "featureCallerIdBannerVariant_38706_conv", false), TwoVariants.class);
        linkedHashSet.add(m25511a8);
        this.f32408j = m25511a8;
        C10905c<TwoVariants> m25511a9 = c10907e.m25511a(new C10906d("Premium spam summary stats card test", "ShowSpamSummaryCard_38029", "premiumSpamSummaryCard_38029_seen", "premiumSpamSummaryCard_38029_conv", false), TwoVariants.class);
        linkedHashSet.add(m25511a9);
        this.f32409k = m25511a9;
    }
}
