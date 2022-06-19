package p193e.p194a.p947k.p948a.p949a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.onboarding.VideoCallerIdBottomSheetOnboardingData;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.p969c.AbstractC16102y0;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.k.a.a.n */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/n.class */
public final class C15612n extends AbstractC20576b<AbstractC15611m> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC19223c0 f44137b;

    /* renamed from: c */
    public final AbstractC16116j f44138c;

    /* renamed from: d */
    public final AbstractC16102y0 f44139d;

    @Inject
    public C15612n(AbstractC19223c0 abstractC19223c0, AbstractC16116j abstractC16116j, AbstractC16102y0 abstractC16102y0) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16116j, "videoCallerIdSupport");
        l.e(abstractC16102y0, "onboardingManager");
        this.f44137b = abstractC19223c0;
        this.f44138c = abstractC16116j;
        this.f44139d = abstractC16102y0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.k.a.a.m] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC15611m) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        VideoCallerIdBottomSheetOnboardingData mo18587k0 = r0.mo18587k0();
        String contactName = mo18587k0 != null ? mo18587k0.getContactName() : null;
        if (contactName == null) {
            AbstractC15611m abstractC15611m = (AbstractC15611m) this.f57683a;
            if (abstractC15611m == null) {
                return;
            }
            String mo13768b = this.f44137b.mo13768b(C4718R.string.vid_caller_id_onboarding_pacs_expanded_title, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…ding_pacs_expanded_title)");
            abstractC15611m.setTitle(mo13768b);
            return;
        }
        String obj2 = v.g0(contactName).toString();
        String str = obj2;
        if (v.H(obj2, StringConstant.SPACE, 0, false, 6) >= 0) {
            int H = v.H(obj2, StringConstant.SPACE, 0, false, 6);
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type java.lang.String");
            str = obj2.substring(0, H);
            l.d(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        AbstractC15611m abstractC15611m2 = (AbstractC15611m) this.f57683a;
        if (abstractC15611m2 == null) {
            return;
        }
        AbstractC19223c0 abstractC19223c0 = this.f44137b;
        String mo13768b2 = abstractC19223c0.mo13768b(C4718R.string.vid_caller_id_onboarding_title, str, abstractC19223c0.mo13768b(C4718R.string.video_caller_id, new Object[0]));
        l.d(mo13768b2, "resourceProvider.getStri…caller_id),\n            )");
        abstractC15611m2.setTitle(mo13768b2);
    }
}
