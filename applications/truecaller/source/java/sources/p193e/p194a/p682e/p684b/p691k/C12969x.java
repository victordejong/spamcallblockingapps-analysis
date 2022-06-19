package p193e.p194a.p682e.p684b.p691k;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.settings.CallingSettings;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import e.m.d.y.n;
import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1012a.AbstractC16567c0;
import p193e.p194a.p1050l5.p1051a.C17439a2;
import p193e.p194a.p1079n5.AbstractC18493c;
import p193e.p194a.p1080o.AbstractC18777j;
import p193e.p194a.p1114o5.p1121e2.AbstractC19019a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1161q5.AbstractC19684c;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1161q5.p1162k.AbstractC19695a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.AbstractC12919g;
import p193e.p194a.p682e.p684b.C12918f;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p765f5.AbstractC14046a;
import p193e.p194a.p804h.p833q0.AbstractC14722a;
import p193e.p194a.p804h.p836t0.AbstractC14738b;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import s1.z.c.l;
/* renamed from: e.a.e.b.k.x */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/k/x.class */
public final class C12969x extends AbstractC20576b<AbstractC12966u> implements AbstractC12965t {

    /* renamed from: b */
    public boolean f37634b;

    /* renamed from: c */
    public boolean f37635c;

    /* renamed from: d */
    public final AbstractC12919g f37636d;

    /* renamed from: e */
    public final C12964s f37637e;

    /* renamed from: f */
    public final AbstractC8541a f37638f;

    /* renamed from: g */
    public final AbstractC19223c0 f37639g;

    /* renamed from: h */
    public final C20592g f37640h;

    /* renamed from: i */
    public final AbstractC19219a0 f37641i;

    /* renamed from: j */
    public final AbstractC14722a f37642j;

    /* renamed from: k */
    public final AbstractC19019a f37643k;

    /* renamed from: l */
    public final AbstractC19462a f37644l;

    /* renamed from: m */
    public final AbstractC12597c f37645m;

    /* renamed from: n */
    public final AbstractC14046a f37646n;

    /* renamed from: o */
    public final AbstractC14900a f37647o;

    /* renamed from: p */
    public final AbstractC14738b f37648p;

    /* renamed from: q */
    public final CallingSettings f37649q;

    /* renamed from: r */
    public final AbstractC18777j f37650r;

    /* renamed from: s */
    public final AbstractC21881d f37651s;

    /* renamed from: t */
    public final boolean f37652t;

    /* renamed from: u */
    public final AbstractC19688d f37653u;

    /* renamed from: v */
    public final AbstractC16567c0 f37654v;

    /* renamed from: w */
    public final AbstractC19695a f37655w;

    /* renamed from: x */
    public final AbstractC18493c f37656x;

    @Inject
    public C12969x(AbstractC12919g abstractC12919g, C12964s c12964s, AbstractC8541a abstractC8541a, AbstractC19223c0 abstractC19223c0, C20592g c20592g, AbstractC19219a0 abstractC19219a0, AbstractC14722a abstractC14722a, AbstractC19019a abstractC19019a, AbstractC19462a abstractC19462a, AbstractC12597c abstractC12597c, AbstractC14046a abstractC14046a, AbstractC14900a abstractC14900a, AbstractC14738b abstractC14738b, CallingSettings callingSettings, AbstractC18777j abstractC18777j, AbstractC21881d abstractC21881d, boolean z, AbstractC19688d abstractC19688d, AbstractC16567c0 abstractC16567c0, AbstractC19695a abstractC19695a, AbstractC18493c abstractC18493c) {
        l.e(abstractC12919g, "settingsUIPref");
        l.e(c12964s, "generalSettingsHelper");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC14722a, "missedCallReminderManager");
        l.e(abstractC19019a, "shortcutHelper");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC14046a, "swishManager");
        l.e(abstractC14900a, "clipboardDataManager");
        l.e(abstractC14738b, "whatsAppInCallLog");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC18777j, "contextCallUtils");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(abstractC16567c0, "premiumTabDeeplinkHelper");
        l.e(abstractC19695a, "whatsAppCallerIdEventLogger");
        l.e(abstractC18493c, "ugcManager");
        this.f37636d = abstractC12919g;
        this.f37637e = c12964s;
        this.f37638f = abstractC8541a;
        this.f37639g = abstractC19223c0;
        this.f37640h = c20592g;
        this.f37641i = abstractC19219a0;
        this.f37642j = abstractC14722a;
        this.f37643k = abstractC19019a;
        this.f37644l = abstractC19462a;
        this.f37645m = abstractC12597c;
        this.f37646n = abstractC14046a;
        this.f37647o = abstractC14900a;
        this.f37648p = abstractC14738b;
        this.f37649q = callingSettings;
        this.f37650r = abstractC18777j;
        this.f37651s = abstractC21881d;
        this.f37652t = z;
        this.f37653u = abstractC19688d;
        this.f37654v = abstractC16567c0;
        this.f37655w = abstractC19695a;
        this.f37656x = abstractC18493c;
        this.f37635c = abstractC19219a0.mo13831b();
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: I4 */
    public void mo22335I4(boolean z) {
        this.f37636d.mo22418b1(z);
        if (!z) {
            this.f37642j.m19722d();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: Id */
    public boolean mo22334Id(boolean z) {
        if (!z || !this.f37634b) {
            this.f37650r.mo14480o(z);
            l.e("settings_screen", AnalyticsConstants.CONTEXT);
            n.B0(new C12918f("settings_screen", "OnBoardingContextCallSettings", C12864a2.m22559e(z)), this.f37644l);
            return true;
        }
        AbstractC12966u abstractC12966u = (AbstractC12966u) this.f57683a;
        if (abstractC12966u == null) {
            return false;
        }
        abstractC12966u.mo22361Qs();
        return false;
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: K3 */
    public void mo22333K3(boolean z, Context context) {
        this.f37656x.mo14859b(z);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: M0 */
    public void mo22332M0(boolean z) {
        this.f37647o.mo19472j(z);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: Mi */
    public void mo22331Mi(boolean z) {
        this.f37646n.mo20816e(z);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: O5 */
    public void mo22330O5() {
        this.f37643k.mo14252a(2);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: Wa */
    public void mo22329Wa() {
        if (this.f37653u.mo12989v()) {
            this.f37654v.mo17238b("premiumWhatsappCallerId");
            AbstractC12966u abstractC12966u = (AbstractC12966u) this.f57683a;
            if (abstractC12966u == null) {
                return;
            }
            abstractC12966u.mo22353Yu();
            return;
        }
        AbstractC19684c mo12990u = this.f37653u.mo12990u();
        boolean z = !mo12990u.m12997a();
        this.f37653u.mo12992s(z);
        if (mo12990u instanceof AbstractC19684c.C19687c) {
            AbstractC12966u abstractC12966u2 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u2 == null) {
                return;
            }
            abstractC12966u2.mo22340ui();
            return;
        }
        AbstractC12966u abstractC12966u3 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u3 != null) {
            abstractC12966u3.mo22370Cd(z);
        }
        this.f37655w.mo12975b(z, WhatsAppCallerIdSourceParam.WHATSAPP_CALLERID_SETTINGS, -1);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: X0 */
    public void mo22328X0(boolean z) {
        this.f37636d.mo22423X0(z);
    }

    /* renamed from: Yc */
    public final boolean m22327Yc() {
        boolean z = false;
        if (this.f37645m.mo22840d(AbstractC12603e.C12604a.f36737c)) {
            z = false;
            if (this.f37638f.getBoolean("featureFlash", false)) {
                z = false;
                if (!this.f37640h.m10982W().isEnabled()) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: Zi */
    public void mo22326Zi(String str) {
        l.e(str, "selectedItemId");
        this.f37636d.mo22421Z0(str);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: d7 */
    public void mo22325d7() {
        this.f37643k.mo14252a(1);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: k3 */
    public void mo22324k3() {
        if (this.f37641i.mo13831b()) {
            AbstractC12966u abstractC12966u = (AbstractC12966u) this.f57683a;
            if (abstractC12966u == null) {
                return;
            }
            abstractC12966u.mo22354Wz(!this.f37649q.getBoolean("whatsAppCallsEnabled"));
            return;
        }
        AbstractC12966u abstractC12966u2 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u2 == null) {
            return;
        }
        abstractC12966u2.mo22346ne(C2752R.string.SettingsWhatsAppInCallLogNotificationToastAllowAccess);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: k8 */
    public boolean mo22323k8(boolean z, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f37638f.putBoolean("flash_disabled", !z);
        this.f37637e.m22372a(context);
        l.e("settings_screen", AnalyticsConstants.CONTEXT);
        n.B0(new C12918f("settings_screen", "flashEnabled", C12864a2.m22559e(z)), this.f37644l);
        return true;
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: l1 */
    public void mo22322l1(String str) {
        AbstractC12966u abstractC12966u;
        if (str != null && str.hashCode() == 2045156077 && str.equals("show_notification") && (abstractC12966u = (AbstractC12966u) this.f57683a) != null) {
            abstractC12966u.mo22367G7();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: m7 */
    public void mo22321m7(boolean z) {
        this.f37651s.putInt("default_tab_on_launch", !z ? 1 : 0);
        AbstractC19462a abstractC19462a = this.f37644l;
        C17439a2.C17441b m16031a = C17439a2.m16031a();
        m16031a.m16029b("defaultTabAtStartup");
        m16031a.m16028c(z ? "calls" : "messages");
        C17439a2 build = m16031a.build();
        l.d(build, "AppSettingState.newBuild…\n                .build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: ng */
    public void mo22320ng() {
        this.f37643k.mo14252a(3);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    public void onResume() {
        boolean z;
        boolean z2;
        AbstractC12966u abstractC12966u;
        if (this.f37641i.mo13831b() && !this.f37635c) {
            this.f37635c = true;
            this.f37653u.mo12992s(true);
            this.f37636d.mo22423X0(true);
        }
        String[] mo13761i = this.f37639g.mo13761i(C2752R.array.dial_pad_feedback_entries);
        l.d(mo13761i, "resourceProvider.getStri…ial_pad_feedback_entries)");
        ArrayList arrayList = new ArrayList(mo13761i.length);
        int length = mo13761i.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            arrayList.add(new C13197i0(0, mo13761i[i], "", String.valueOf(i2)));
            i++;
            i2++;
        }
        AbstractC12966u abstractC12966u2 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u2 != null) {
            abstractC12966u2.mo22349jh(arrayList, this.f37636d.mo22414f1());
        }
        if (!this.f37636d.mo22420a()) {
            AbstractC12966u abstractC12966u3 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u3 != null) {
                abstractC12966u3.mo22355Wm(false);
            }
        } else {
            AbstractC12966u abstractC12966u4 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u4 != null) {
                abstractC12966u4.mo22350ii(this.f37656x.mo14858c());
            }
            AbstractC12966u abstractC12966u5 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u5 != null) {
                abstractC12966u5.mo22355Wm(this.f37656x.mo14860a());
            }
        }
        AbstractC12966u abstractC12966u6 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u6 != null) {
            abstractC12966u6.mo22351cw(this.f37636d.mo22407m1());
        }
        if (!this.f37636d.mo22420a() || !m22327Yc()) {
            AbstractC12966u abstractC12966u7 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u7 != null) {
                abstractC12966u7.mo22360Qv(false);
            }
        } else {
            AbstractC12966u abstractC12966u8 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u8 != null) {
                abstractC12966u8.mo22360Qv(true);
            }
            AbstractC12966u abstractC12966u9 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u9 != null) {
                abstractC12966u9.mo22352ai(!this.f37638f.getBoolean("flash_disabled"));
            }
        }
        if (!this.f37636d.mo22420a()) {
            AbstractC12966u abstractC12966u10 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u10 != null) {
                abstractC12966u10.mo22359Rw(false);
            }
        } else if (!this.f37646n.isEnabled() || !m22327Yc()) {
            AbstractC12966u abstractC12966u11 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u11 != null) {
                abstractC12966u11.mo22359Rw(false);
            }
        } else {
            AbstractC12966u abstractC12966u12 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u12 != null) {
                abstractC12966u12.mo22359Rw(true);
            }
            AbstractC12966u abstractC12966u13 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u13 != null) {
                abstractC12966u13.mo22371Aw(this.f37646n.mo20818c());
            }
        }
        AbstractC12966u abstractC12966u14 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u14 != null) {
            abstractC12966u14.mo22357Up(this.f37647o.mo19478d());
        }
        if (this.f37648p.isAvailable()) {
            AbstractC12966u abstractC12966u15 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u15 != null) {
                abstractC12966u15.mo22368Fo(false);
            }
            AbstractC12966u abstractC12966u16 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u16 != null) {
                abstractC12966u16.mo22354Wz(this.f37648p.isEnabled());
            }
        } else {
            AbstractC12966u abstractC12966u17 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u17 != null) {
                abstractC12966u17.mo22366Hh(false);
            }
            AbstractC12966u abstractC12966u18 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u18 != null) {
                abstractC12966u18.mo22363Ox(false);
            }
        }
        AbstractC12966u abstractC12966u19 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u19 != null) {
            abstractC12966u19.mo22343s9(this.f37652t);
        }
        if (this.f37651s.getInt("default_tab_on_launch", 0) == 0) {
            AbstractC12966u abstractC12966u20 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u20 != null) {
                abstractC12966u20.mo22358Sy(true);
            }
        } else {
            AbstractC12966u abstractC12966u21 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u21 != null) {
                abstractC12966u21.mo22348kb(true);
            }
        }
        if (this.f37652t && (abstractC12966u = (AbstractC12966u) this.f57683a) != null) {
            abstractC12966u.mo22369F8(true);
        }
        AbstractC12966u abstractC12966u22 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u22 != null) {
            if (this.f37636d.mo22420a()) {
                C20592g c20592g = this.f37640h;
                if (c20592g.f57759J.m10941a(c20592g, C20592g.f57695p6[32]).isEnabled()) {
                    z2 = true;
                    abstractC12966u22.mo22362Qd(z2);
                }
            }
            z2 = false;
            abstractC12966u22.mo22362Qd(z2);
        }
        AbstractC12966u abstractC12966u23 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u23 != null) {
            abstractC12966u23.mo22364Na(this.f37636d.mo22419a1());
        }
        AbstractC12966u abstractC12966u24 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u24 != null) {
            abstractC12966u24.mo22365M9(this.f37636d.mo22411i1() && this.f37641i.mo13831b());
        }
        AbstractC19684c mo12990u = this.f37653u.mo12990u();
        if (l.a(mo12990u, AbstractC19684c.C19687c.f54691a)) {
            AbstractC12966u abstractC12966u25 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u25 != null) {
                abstractC12966u25.mo22356Wb(C2752R.string.SettingsGroupSmartNotificationDisabledText, false);
            }
        } else {
            AbstractC12966u abstractC12966u26 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u26 != null) {
                abstractC12966u26.mo22356Wb(C2752R.string.SettingsGroupSmartNotificationEnabledText, mo12990u.m12997a());
            }
        }
        if (this.f37641i.mo13831b()) {
            AbstractC12966u abstractC12966u27 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u27 != null) {
                abstractC12966u27.mo22344rk(C2752R.string.SettingsWhatsAppInCallLogNotificationEnabledText, this.f37649q.getBoolean("whatsAppCallsEnabled"));
            }
        } else {
            AbstractC12966u abstractC12966u28 = (AbstractC12966u) this.f57683a;
            if (abstractC12966u28 != null) {
                abstractC12966u28.mo22344rk(C2752R.string.SettingsWhatsAppInCallLogNotificationDisabledText, false);
            }
        }
        AbstractC12966u abstractC12966u29 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u29 != null) {
            if (this.f37636d.mo22420a()) {
                C20592g c20592g2 = this.f37640h;
                if (c20592g2.f57935h0.m10941a(c20592g2, C20592g.f57695p6[57]).isEnabled()) {
                    z = true;
                    abstractC12966u29.mo22347ls(z);
                }
            }
            z = false;
            abstractC12966u29.mo22347ls(z);
        }
        AbstractC12966u abstractC12966u30 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u30 != null) {
            abstractC12966u30.mo22341u9(this.f37649q.getBoolean("showIncomingCallNotifications", true));
        }
        if (this.f37650r.isSupported()) {
            this.f37650r.mo14482h(new C12967v(this));
            this.f37650r.mo14483g(new C12968w(this));
            return;
        }
        AbstractC12966u abstractC12966u31 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u31 == null) {
            return;
        }
        abstractC12966u31.mo22339vs(false);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: q3 */
    public void mo22319q3() {
        if (this.f37641i.mo13831b()) {
            AbstractC12966u abstractC12966u = (AbstractC12966u) this.f57683a;
            if (abstractC12966u == null) {
                return;
            }
            abstractC12966u.mo22365M9(!this.f37636d.mo22411i1());
            return;
        }
        AbstractC12966u abstractC12966u2 = (AbstractC12966u) this.f57683a;
        if (abstractC12966u2 == null) {
            return;
        }
        abstractC12966u2.mo22346ne(C2752R.string.toast_allow_notification_access);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: qf */
    public void mo22318qf(boolean z) {
        if (!this.f37641i.mo13831b()) {
            return;
        }
        this.f37649q.putBoolean("whatsAppCallsEnabled", z);
        l.e("Setting", AnalyticsConstants.CONTEXT);
        n.B0(new C12918f("Setting", "WhatsApp", C12864a2.m22559e(z)), this.f37644l);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: rh */
    public void mo22317rh(boolean z) {
        this.f37649q.putBoolean("showIncomingCallNotifications", z);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: ve */
    public void mo22316ve() {
        n.B0(ViewActionEvent.f9985d.m35932f("settings_screen", ViewActionEvent.ContextCallAction.MANAGE_CALL_REASON), this.f37644l);
    }

    @Override // p193e.p194a.p682e.p684b.p691k.AbstractC12965t
    /* renamed from: w0 */
    public void mo22315w0(boolean z) {
        this.f37636d.mo22405w0(z);
    }
}
