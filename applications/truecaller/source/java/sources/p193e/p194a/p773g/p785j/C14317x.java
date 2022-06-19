package p193e.p194a.p773g.p785j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.util.AcsReferralHelper;
import com.truecaller.referral.ReferralManager;
import n3.r.a.l;
import p193e.p194a.p1159q4.C19651l0;
import s1.i;
/* renamed from: e.a.g.j.x */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/x.class */
public final class C14317x implements AcsReferralHelper {

    /* renamed from: a */
    public ReferralManager f41406a;

    /* renamed from: a */
    public final ReferralManager.ReferralLaunchContext m20271a(AcsReferralHelper.ReferralLaunchContext referralLaunchContext) {
        ReferralManager.ReferralLaunchContext referralLaunchContext2;
        int ordinal = referralLaunchContext.ordinal();
        if (ordinal == 0) {
            referralLaunchContext2 = ReferralManager.ReferralLaunchContext.AFTER_CALL;
        } else if (ordinal != 1) {
            throw new i();
        } else {
            referralLaunchContext2 = ReferralManager.ReferralLaunchContext.AFTER_CALL_PROMO;
        }
        return referralLaunchContext2;
    }

    /* renamed from: b */
    public boolean m20270b(l lVar, AcsReferralHelper.ReferralLaunchContext referralLaunchContext) {
        ReferralManager referralManager;
        s1.z.c.l.e(lVar, "activity");
        s1.z.c.l.e(referralLaunchContext, AnalyticsConstants.CONTEXT);
        ReferralManager referralManager2 = this.f41406a;
        if (referralManager2 != null) {
            referralManager = referralManager2;
        } else {
            int i = C19651l0.f54576d;
            referralManager = C19651l0.m13085OA(lVar.getSupportFragmentManager(), "ReferralManagerImpl");
            this.f41406a = referralManager;
        }
        boolean z = true;
        if (referralManager == null || !referralManager.mo13070Ef(m20271a(referralLaunchContext))) {
            z = false;
        }
        return z;
    }
}
