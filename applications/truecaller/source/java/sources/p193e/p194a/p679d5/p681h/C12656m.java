package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1025p2.AbstractC17042c0;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.d5.h.m */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/m.class */
public final class C12656m extends AbstractC12663q {

    /* renamed from: j */
    public final StartupDialogType f36879j = StartupDialogType.POPUP_PREMIUM_PROMO;

    /* renamed from: k */
    public final AbstractC21881d f36880k;

    /* renamed from: l */
    public final C20592g f36881l;

    /* renamed from: m */
    public final C8601l0 f36882m;

    /* renamed from: n */
    public final C17030a1 f36883n;

    /* renamed from: o */
    public final C16604y f36884o;

    /* renamed from: p */
    public final AbstractC16613a2 f36885p;

    /* renamed from: q */
    public final AbstractC17042c0 f36886q;

    /* renamed from: r */
    public final AbstractC17197v0 f36887r;

    /* renamed from: s */
    public final f f36888s;

    @e(c = "com.truecaller.startup_dialogs.resolvers.PremiumPopupDialogResolver", f = "PremiumPopupDialogResolver.kt", l = {70, 71}, m = "shouldShow")
    /* renamed from: e.a.d5.h.m$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/m$a.class */
    public static final class C12657a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36889d;

        /* renamed from: e */
        public int f36890e;

        /* renamed from: g */
        public Object f36892g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12657a(d dVar) {
            super(dVar);
            C12656m.this = r4;
        }

        /* renamed from: s */
        public final Object m22791s(Object obj) {
            this.f36889d = obj;
            this.f36890e |= Integer.MIN_VALUE;
            return C12656m.this.mo22765e(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12656m(AbstractC21881d abstractC21881d, C20592g c20592g, C8601l0 c8601l0, AbstractC18951b0 abstractC18951b0, C17030a1 c17030a1, C16604y c16604y, AbstractC16613a2 abstractC16613a2, AbstractC17042c0 abstractC17042c0, AbstractC17197v0 abstractC17197v0, @Named("IO") f fVar) {
        super((AbstractC20597i) c20592g.f57810Q1.m10941a(c20592g, C20592g.f57695p6[146]), "feature_pro_promo_popup_last_time", c8601l0, abstractC21881d, abstractC18951b0);
        l.e(abstractC21881d, "generalSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        l.e(abstractC17042c0, "premiumDataPrefetcher");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(fVar, "asyncContext");
        this.f36880k = abstractC21881d;
        this.f36881l = c20592g;
        this.f36882m = c8601l0;
        this.f36883n = c17030a1;
        this.f36884o = c16604y;
        this.f36885p = abstractC16613a2;
        this.f36886q = abstractC17042c0;
        this.f36887r = abstractC17197v0;
        this.f36888s = fVar;
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q, p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        return this.f36885p.mo17166c(activity, PremiumLaunchContext.ONCE_PER_MONTH_POPUP, m22776p(), new SubscriptionPromoEventMetaData(C22128a.m8627e2("UUID.randomUUID().toString()"), (String) null));
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36879j;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a6  */
    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q, p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22765e(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12656m.mo22765e(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: n */
    public int mo22778n() {
        C20592g c20592g = this.f36881l;
        return ((AbstractC20597i) c20592g.f57953j2.m10941a(c20592g, C20592g.f57695p6[165])).getInt(-1);
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: q */
    public int mo22775q() {
        return this.f36880k.getInt("feature_premium_promo_popup_shown_count", 0);
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: r */
    public boolean mo22774r() {
        return !m22792w();
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: s */
    public boolean mo22773s() {
        return !this.f36883n.m16622a();
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: t */
    public void mo22772t() {
        this.f36880k.m8947l("feature_premium_promo_popup_shown_count");
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: u */
    public boolean mo22771u() {
        return (!this.f36887r.mo16408H() && this.f36884o.m17198b()) || m22792w();
    }

    @Override // p193e.p194a.p679d5.p681h.AbstractC12663q
    /* renamed from: v */
    public boolean mo22770v() {
        C20592g c20592g = this.f36881l;
        return ((AbstractC20597i) c20592g.f57945i2.m10941a(c20592g, C20592g.f57695p6[164])).isEnabled();
    }

    /* renamed from: w */
    public final boolean m22792w() {
        boolean z = false;
        if (this.f36887r.mo16408H()) {
            z = false;
            if (this.f36883n.m16621b() || (this.f36883n.m16620c() && new b(this.f36887r.mo16391w0()).z(1).h(this.f36882m.m28258c()))) {
                z = true;
            }
        }
        return z;
    }
}
