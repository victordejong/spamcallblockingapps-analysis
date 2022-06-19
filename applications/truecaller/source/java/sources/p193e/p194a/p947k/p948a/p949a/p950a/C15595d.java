package p193e.p194a.p947k.p948a.p949a.p950a;

import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p947k.p948a.p949a.C15606h;
import p193e.p194a.p947k.p948a.p958f.C15696g;
import p193e.p194a.p947k.p969c.AbstractC16102y0;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.k.a.a.a.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/a/d.class */
public final class C15595d extends AbstractC20576b<AbstractC15594c> implements AbstractC20580e {

    /* renamed from: b */
    public final C15696g f44113b;

    /* renamed from: c */
    public final AbstractC16102y0 f44114c;

    /* renamed from: d */
    public final C15606h f44115d;

    @Inject
    public C15595d(C15696g c15696g, AbstractC16102y0 abstractC16102y0, C15606h c15606h) {
        l.e(c15696g, "previewConfigGenerator");
        l.e(abstractC16102y0, "onboardingManager");
        l.e(c15606h, "abTestManager");
        this.f44113b = c15696g;
        this.f44114c = abstractC16102y0;
        this.f44115d = c15606h;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.a.a.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        String str;
        ?? r0 = (AbstractC15594c) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        r0.mo18597P9(this.f44113b.m18509b());
        AbstractC15594c abstractC15594c = (AbstractC15594c) this.f57683a;
        if (abstractC15594c != null) {
            String mo18596W8 = abstractC15594c.mo18596W8();
            if (mo18596W8 != null) {
                C15606h c15606h = this.f44115d;
                Objects.requireNonNull(c15606h);
                l.e(mo18596W8, AnalyticsConstants.NAME);
                boolean m25512g = c15606h.f44135a.f32407i.m25512g();
                if (m25512g) {
                    AbstractC19223c0 abstractC19223c0 = c15606h.f44136b;
                    str = abstractC19223c0.mo13768b(C4718R.string.vid_onboarding_title_ab_variant, mo18596W8, abstractC19223c0.mo13768b(C4718R.string.video_caller_id, new Object[0]));
                    l.d(str, "resourceProvider.getStri…_caller_id)\n            )");
                } else if (m25512g) {
                    throw new i();
                } else {
                    AbstractC19223c0 abstractC19223c02 = c15606h.f44136b;
                    str = abstractC19223c02.mo13768b(C4718R.string.vid_onboarding_title_ab_control, abstractC19223c02.mo13768b(C4718R.string.video_caller_id, new Object[0]));
                    l.d(str, "resourceProvider.getStri…_caller_id)\n            )");
                }
                abstractC15594c.setTitle(str);
            } else {
                abstractC15594c.dismiss();
            }
        }
        AbstractC10908f.m25507e(this.f44115d.f44135a.f32407i, false, null, 3, null);
    }
}
