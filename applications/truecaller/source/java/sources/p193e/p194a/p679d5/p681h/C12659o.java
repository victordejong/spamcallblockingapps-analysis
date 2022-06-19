package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import com.truecaller.referral.ReferralManager;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1159q4.AbstractC19668s0;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.f0.r;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d5.h.o */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/o.class */
public final class C12659o extends AbstractC12663q {

    /* renamed from: j */
    public Activity f36895j;

    /* renamed from: k */
    public final StartupDialogType f36896k = StartupDialogType.REFERRAL_PROMO;

    /* renamed from: l */
    public final boolean f36897l = true;

    /* renamed from: m */
    public final boolean f36898m = true;

    /* renamed from: n */
    public final AbstractC17197v0 f36899n;

    /* renamed from: o */
    public final AbstractC19022f0 f36900o;

    /* renamed from: p */
    public final C20592g f36901p;

    /* renamed from: q */
    public final AbstractC21881d f36902q;

    /* renamed from: r */
    public final AbstractC21179b f36903r;

    /* renamed from: s */
    public final f f36904s;

    @e(c = "com.truecaller.startup_dialogs.resolvers.ReferralDialogResolver", f = "ReferralDialogResolver.kt", l = {72, 72}, m = "shouldShow")
    /* renamed from: e.a.d5.h.o$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/o$a.class */
    public static final class C12660a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36905d;

        /* renamed from: e */
        public int f36906e;

        /* renamed from: g */
        public Object f36908g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12660a(d dVar) {
            super(dVar);
            C12659o.this = r4;
        }

        /* renamed from: s */
        public final Object m22787s(Object obj) {
            this.f36905d = obj;
            this.f36906e |= Integer.MIN_VALUE;
            return C12659o.this.mo22765e(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12659o(AbstractC17197v0 abstractC17197v0, AbstractC19022f0 abstractC19022f0, C20592g c20592g, AbstractC21881d abstractC21881d, AbstractC21179b abstractC21179b, @Named("IO") f fVar, C8601l0 c8601l0, AbstractC18951b0 abstractC18951b0) {
        super((AbstractC20597i) c20592g.f57961k2.m10941a(c20592g, C20592g.f57695p6[166]), "feature_referral_promo_popup_last_time", c8601l0, abstractC21881d, abstractC18951b0);
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19022f0, "deviceManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC21179b, "referralSettings");
        l.e(fVar, "asyncContext");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC18951b0, "dateHelper");
        this.f36899n = abstractC17197v0;
        this.f36900o = abstractC19022f0;
        this.f36901p = c20592g;
        this.f36902q = abstractC21881d;
        this.f36903r = abstractC21179b;
        this.f36904s = fVar;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36896k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d2, code lost:
        if (((java.lang.Boolean) r8).booleanValue() == false) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a2  */
    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q, p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22765e(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12659o.mo22765e(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q, p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        n3.r.a.l lVar = this.f36895j;
        Fragment fragment = null;
        if (lVar != null) {
            n3.r.a.l lVar2 = lVar;
            int i = C19651l0.f54576d;
            ReferralManager m13085OA = C19651l0.m13085OA(lVar2.getSupportFragmentManager(), "ReferralManagerImpl");
            fragment = null;
            if (m13085OA != null) {
                AbstractC19668s0 abstractC19668s0 = (AbstractC19668s0) m13085OA;
                String str = "App Chooser";
                if (r.n("bulksms", m22776p(), true)) {
                    String string = this.f36903r.getString("smsReferralPrefetchBatch");
                    boolean z = true;
                    if (string != null) {
                        z = string.length() == 0;
                    }
                    if (z) {
                        ((C19651l0) m13085OA).mo13063Ky(ReferralManager.ReferralLaunchContext.PROMO_POPUP);
                        str = "App Chooser";
                    } else {
                        str = "Bulk Sms Single Screen";
                    }
                }
                fragment = abstractC19668s0.mo13043X6(str);
            }
        }
        return fragment;
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: n */
    public int mo22778n() {
        C20592g c20592g = this.f36901p;
        return ((AbstractC20597i) c20592g.f57977m2.m10941a(c20592g, C20592g.f57695p6[168])).getInt(-1);
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: q */
    public int mo22775q() {
        return this.f36902q.getInt("feature_referral_promo_popup_shown_count", 0);
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: r */
    public boolean mo22774r() {
        return this.f36898m;
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: s */
    public boolean mo22773s() {
        return this.f36897l;
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: t */
    public void mo22772t() {
        this.f36902q.m8947l("feature_referral_promo_popup_shown_count");
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: u */
    public boolean mo22771u() {
        return !this.f36899n.mo16408H() && this.f36900o.mo14245a();
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: v */
    public boolean mo22770v() {
        C20592g c20592g = this.f36901p;
        return ((AbstractC20597i) c20592g.f57969l2.m10941a(c20592g, C20592g.f57695p6[167])).isEnabled();
    }
}
