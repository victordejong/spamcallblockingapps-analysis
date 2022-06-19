package p193e.p194a.p911i3;

import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.account.network.InstallationDetailsDto;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1070n2.p1071a.AbstractC18466c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1146q2.p1148b1.AbstractC19469a;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p1410z4.AbstractC21878a;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p292a4.AbstractC7436e;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p396f.C8374a;
import p193e.p194a.p372b0.p394b.p397g.AbstractC8376a;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p372b0.p394b.p398h.C8387a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.f0.q;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.i3.c */
/* loaded from: classes7-dex2jar.jar:e/a/i3/c.class */
public final class C15267c implements AbstractC15266b {

    /* renamed from: a */
    public final int f43467a;

    /* renamed from: b */
    public final Context f43468b;

    /* renamed from: c */
    public final AbstractC8541a f43469c;

    /* renamed from: d */
    public final AbstractC8438a f43470d;

    /* renamed from: e */
    public final AbstractC21878a f43471e;

    /* renamed from: f */
    public final AbstractC21881d f43472f;

    /* renamed from: g */
    public final AbstractC21179b f43473g;

    /* renamed from: h */
    public final AbstractC19469a f43474h;

    /* renamed from: i */
    public final AbstractC14840m f43475i;

    /* renamed from: j */
    public final C20592g f43476j;

    /* renamed from: k */
    public final AbstractC19044j f43477k;

    /* renamed from: l */
    public final AbstractC6392i0 f43478l;

    /* renamed from: m */
    public final AbstractC10028o f43479m;

    /* renamed from: n */
    public final C8374a f43480n;

    /* renamed from: o */
    public final a<AbstractC7436e<TrueApp>> f43481o;

    /* renamed from: p */
    public final a<AbstractC21396c> f43482p;

    /* renamed from: q */
    public final AbstractC18951b0 f43483q;

    @Inject
    public C15267c(int i, Context context, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC21878a abstractC21878a, AbstractC21881d abstractC21881d, AbstractC21179b abstractC21179b, AbstractC19469a abstractC19469a, AbstractC14840m abstractC14840m, C20592g c20592g, AbstractC19044j abstractC19044j, AbstractC6392i0 abstractC6392i0, AbstractC10028o abstractC10028o, C8374a c8374a, a<AbstractC7436e<TrueApp>> aVar, a<AbstractC21396c> aVar2, AbstractC18951b0 abstractC18951b0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC21878a, "adsSettings");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC21179b, "referralSettings");
        l.e(abstractC19469a, "analyticsSettings");
        l.e(abstractC14840m, "filterSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19044j, "appListener");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC10028o, "insightsConfig");
        l.e(c8374a, "installationDetailsProvider");
        l.e(aVar, "appInitManager");
        l.e(aVar2, "forcedUpdateManager");
        l.e(abstractC18951b0, "dateHelper");
        this.f43467a = i;
        this.f43468b = context;
        this.f43469c = abstractC8541a;
        this.f43470d = abstractC8438a;
        this.f43471e = abstractC21878a;
        this.f43472f = abstractC21881d;
        this.f43473g = abstractC21179b;
        this.f43474h = abstractC19469a;
        this.f43475i = abstractC14840m;
        this.f43476j = c20592g;
        this.f43477k = abstractC19044j;
        this.f43478l = abstractC6392i0;
        this.f43479m = abstractC10028o;
        this.f43480n = c8374a;
        this.f43481o = aVar;
        this.f43482p = aVar2;
        this.f43483q = abstractC18951b0;
    }

    @Override // p193e.p194a.p911i3.AbstractC15266b
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo18985a() {
        if (this.f43469c.getInt("lastUpdateInstallationVersion", 0) == this.f43467a || m18974l()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(m18975k()));
            l.d(m11834h, "Promise.wrap(updateConfigInternal())");
            return m11834h;
        }
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.FALSE);
        l.d(m11834h2, "Promise.wrap(false)");
        return m11834h2;
    }

    @Override // p193e.p194a.p911i3.AbstractC15266b
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo18984b() {
        if (!m18974l()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        m18975k();
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h2, "Promise.wrap(true)");
        return m11834h2;
    }

    /* renamed from: c */
    public final Long m18983c(String str) {
        Long l;
        try {
            if (TextUtils.isEmpty(str)) {
                l = null;
            } else {
                l.c(str);
                l = Long.valueOf(Long.parseLong(str));
            }
            if (l != null) {
                try {
                    if (0 > l.longValue()) {
                        l = null;
                    }
                } catch (NumberFormatException e) {
                }
            }
        } catch (NumberFormatException e2) {
            l = null;
        }
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18982d(p193e.p194a.p372b0.p394b.p398h.C8387a.C8390c r6) {
        /*
            r5 = this;
            r0 = r5
            o3.a<e.a.x3.c> r0 = r0.f43482p
            java.lang.Object r0 = r0.get()
            e.a.x3.c r0 = (p193e.p194a.p1357x3.AbstractC21396c) r0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            r0 = r6
            java.lang.String r0 = r0.f26074a
            r9 = r0
            goto L1f
        L1c:
            r0 = 0
            r9 = r0
        L1f:
            r0 = r9
            if (r0 != 0) goto L27
            goto L7c
        L27:
            r0 = r9
            int r0 = r0.hashCode()
            r10 = r0
            r0 = r10
            r1 = -1901282887(0xffffffff8eacb9b9, float:-4.2580118E-30)
            if (r0 == r1) goto L6a
            r0 = r10
            r1 = -717212158(0xffffffffd5403602, float:-1.32086371E13)
            if (r0 == r1) goto L58
            r0 = r10
            r1 = 703609696(0x29f03b60, float:1.0668441E-13)
            if (r0 == r1) goto L46
            goto L7c
        L46:
            r0 = r9
            java.lang.String r1 = "OPTIONAL"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L7c
            com.truecaller.forcedupdate.UpdateType r0 = com.truecaller.forcedupdate.UpdateType.OPTIONAL
            r9 = r0
            goto L81
        L58:
            r0 = r9
            java.lang.String r1 = "RETIRED_VERSION"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L7c
            com.truecaller.forcedupdate.UpdateType r0 = com.truecaller.forcedupdate.UpdateType.DISCONTINUED
            r9 = r0
            goto L81
        L6a:
            r0 = r9
            java.lang.String r1 = "MANDATORY"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L7c
            com.truecaller.forcedupdate.UpdateType r0 = com.truecaller.forcedupdate.UpdateType.REQUIRED
            r9 = r0
            goto L81
        L7c:
            com.truecaller.forcedupdate.UpdateType r0 = com.truecaller.forcedupdate.UpdateType.NONE
            r9 = r0
        L81:
            r0 = r6
            if (r0 == 0) goto L8e
            r0 = r6
            java.lang.String r0 = r0.f26075b
            r11 = r0
            goto L91
        L8e:
            r0 = 0
            r11 = r0
        L91:
            r0 = r6
            if (r0 == 0) goto L9d
            r0 = r6
            int r0 = r0.f26076c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8 = r0
        L9d:
            r0 = r7
            r1 = r9
            r2 = r11
            r3 = r8
            r0.mo9771e(r1, r2, r3)
            r0 = r5
            e.a.o5.j r0 = r0.f43477k
            boolean r0 = r0.mo14186b()
            if (r0 == 0) goto Lc7
            r0 = r7
            com.truecaller.forcedupdate.UpdateType r0 = r0.mo9774b()
            boolean r0 = r0.getSkippable()
            if (r0 != 0) goto Lc7
            r0 = r5
            android.content.Context r0 = r0.f43468b
            r1 = 0
            boolean r0 = com.truecaller.forcedupdate.p167ui.ForcedUpdateActivity.m35318pa(r0, r1)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p911i3.C15267c.m18982d(e.a.b0.b.h.a$c):void");
    }

    /* renamed from: e */
    public final void m18981e(C8387a.C8389b c8389b) {
        this.f43473g.mo13033c("featureAftercall", m18978h(c8389b.f26020r));
        this.f43473g.mo13033c("featureAftercallSaveContact", m18978h(c8389b.f26026s));
        this.f43473g.mo13033c("featureContactDetail", m18978h(c8389b.f26038u));
        this.f43473g.mo13033c("featureReferralDeeplink", m18978h(c8389b.f26032t));
        this.f43473g.mo13033c("featureReferralNavigationDrawer", m18978h(c8389b.f26044v));
        this.f43473g.mo13033c("featureGoPro", m18978h(c8389b.f26056x));
        this.f43473g.mo13033c("featureReferralAfterCallPromo", m18978h(c8389b.f25766A));
        AbstractC21179b abstractC21179b = this.f43473g;
        String str = c8389b.f26050w;
        if (str == null) {
            str = "App Chooser";
        }
        abstractC21179b.mo13034b("featureReferralShareApps", str);
        this.f43473g.mo13033c("featureLaunchReferralFromDeeplink", true);
        this.f43473g.mo13033c("featureSearchScreenPromo", true);
        this.f43473g.mo13033c("featureReferralBottomBar", true);
        this.f43473g.mo13033c("featureReferralPromoPopup", true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* renamed from: f */
    public final void m18980f(C8387a.C8389b c8389b) {
        AbstractC8541a abstractC8541a = this.f43469c;
        String str = c8389b.f25898W;
        abstractC8541a.putLong("featureWhoViewedMeNewViewIntervalInDays", (str != null ? Long.parseLong(str) : true) == true ? 1L : 0L);
        AbstractC8541a abstractC8541a2 = this.f43469c;
        String str2 = c8389b.f25908Y;
        abstractC8541a2.putLong("featureWhoViewedMeShowNotificationAfterXLookups", (str2 != null ? Long.parseLong(str2) : true) == true ? 1L : 0L);
        AbstractC8541a abstractC8541a3 = this.f43469c;
        String str3 = c8389b.f25903X;
        ?? r11 = true;
        if (str3 != null) {
            r11 = Long.parseLong(str3);
        }
        abstractC8541a3.putLong("featureWhoViewedMeShowNotificationAfterXDays", r11 == true ? 1L : 0L);
        this.f43469c.putBoolean("whoViewedMePBContactEnabled", m18978h(c8389b.f25913Z));
        this.f43469c.putBoolean("whoViewedMeACSEnabled", m18978h(c8389b.f25919a0));
        this.f43476j.m10957k0("featureWhoViewedMe", m18978h(c8389b.f25892V));
    }

    /* renamed from: g */
    public final void m18979g(String str, String str2, String str3) {
        if (l.a(str3, str2)) {
            if (!(System.currentTimeMillis() - C18334g0.m15261J(str, 0L) > TimeUnit.DAYS.toMillis(1L))) {
                return;
            }
            C18334g0.m15192y0(str, System.currentTimeMillis());
        }
    }

    /* renamed from: h */
    public final boolean m18978h(String str) {
        return l.a("1", str) || (str != null && Boolean.parseBoolean(str));
    }

    /* renamed from: i */
    public final int m18977i(String str, int i) {
        int i2 = i;
        if (str != null) {
            Integer h = q.h(str);
            i2 = i;
            if (h != null) {
                i2 = h.intValue();
            }
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: j */
    public final long m18976j(String str, long j) {
        char c = j;
        if (str != null) {
            Long j2 = q.j(str);
            c = j;
            if (j2 != null) {
                c = j2.longValue();
            }
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x15f4  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0608  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x062c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0709  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0726  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x07ed  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x07f7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0817  */
    /* JADX WARN: Type inference failed for: r0v507, types: [long] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18975k() {
        /*
            Method dump skipped, instructions count: 5631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p911i3.C15267c.m18975k():boolean");
    }

    /* renamed from: l */
    public final boolean m18974l() {
        try {
            InstallationDetailsDto m28629a = this.f43480n.m28629a();
            l.e(m28629a, "requestDto");
            C8365b c8365b = new C8365b();
            c8365b.m28639a(KnownEndpoints.ACCOUNT);
            c8365b.m28634f(AbstractC18466c.class);
            C8385b c8385b = new C8385b();
            c8385b.m28628b(AuthRequirement.REQUIRED, null);
            c8385b.f25761e = new AbstractC8376a.C8383g(false);
            c8365b.m28636d(C8363a.m28642a(c8385b));
            a0 execute = ((AbstractC18466c) c8365b.m28637c(AbstractC18466c.class)).m14894g(m28629a).execute();
            l.d(execute, "AccountRestAdapter.updat…nstallationDto).execute()");
            if (!execute.b()) {
                return false;
            }
            this.f43469c.putInt("lastUpdateInstallationVersion", this.f43467a);
            return true;
        } catch (IOException e) {
            C10480a.m26061I1(e);
            return false;
        }
    }
}
