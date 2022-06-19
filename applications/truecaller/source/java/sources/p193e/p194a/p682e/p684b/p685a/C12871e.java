package p193e.p194a.p682e.p684b.p685a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1151d1.AbstractC19490a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.AbstractC12919g;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.z.c.l;
/* renamed from: e.a.e.b.a.e */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/a/e.class */
public final class C12871e extends AbstractC20576b<AbstractC12870d> implements AbstractC12869c {

    /* renamed from: b */
    public final AbstractC8541a f37416b;

    /* renamed from: c */
    public final AbstractC19490a f37417c;

    /* renamed from: d */
    public final C12868b f37418d;

    /* renamed from: e */
    public final AbstractC12919g f37419e;

    /* renamed from: f */
    public final AbstractC19462a f37420f;

    /* renamed from: g */
    public final AbstractC19223c0 f37421g;

    /* renamed from: h */
    public final AbstractC12595a f37422h;

    /* renamed from: i */
    public final AbstractC8426f f37423i;

    /* renamed from: j */
    public final AbstractC12597c f37424j;

    @Inject
    public C12871e(AbstractC8541a abstractC8541a, AbstractC19490a abstractC19490a, C12868b c12868b, AbstractC12919g abstractC12919g, AbstractC19462a abstractC19462a, AbstractC19223c0 abstractC19223c0, AbstractC12595a abstractC12595a, AbstractC8426f abstractC8426f, AbstractC12597c abstractC12597c) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19490a, "analyticsRepository");
        l.e(c12868b, "aboutSettingsHelper");
        l.e(abstractC12919g, "settingsUIPref");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f37416b = abstractC8541a;
        this.f37417c = abstractC19490a;
        this.f37418d = c12868b;
        this.f37419e = abstractC12919g;
        this.f37420f = abstractC19462a;
        this.f37421g = abstractC19223c0;
        this.f37422h = abstractC12595a;
        this.f37423i = abstractC8426f;
        this.f37424j = abstractC12597c;
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: C5 */
    public void mo22519C5() {
        m22517Hj();
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: Ej */
    public void mo22518Ej() {
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.loadUrl(C18334g0.m15247U(this.f37423i.mo28592f()));
        }
    }

    /* renamed from: Hj */
    public final void m22517Hj() {
        String format = String.format(Locale.getDefault(), "TC: %s %s - %s %d", Arrays.copyOf(new Object[]{this.f37421g.mo13768b(C2752R.string.SettingsAboutVersion, new Object[0]), m22516Ij(), this.f37421g.mo13768b(C2752R.string.SettingsAboutUserId, new Object[0]), Long.valueOf(this.f37416b.getLong("profileUserId", 0L))}, 4));
        l.d(format, "java.lang.String.format(locale, format, *args)");
        C12868b c12868b = this.f37418d;
        Objects.requireNonNull(c12868b);
        l.e(format, "text");
        C12864a2.m22560d0(c12868b.f37415c, format, null);
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.mo22528a(2131887876);
        }
    }

    /* renamed from: Ij */
    public final String m22516Ij() {
        Locale locale = Locale.US;
        String format = String.format(locale, "v%s", Arrays.copyOf(new Object[]{this.f37418d.f37414b}, 1));
        l.d(format, "java.lang.String.format(locale, format, *args)");
        String str = format;
        if (this.f37418d.f37413a.length() > 0) {
            StringBuilder m8728C = C22128a.m8728C(format);
            String format2 = String.format(locale, " (%s)", Arrays.copyOf(new Object[]{this.f37418d.f37413a}, 1));
            l.d(format2, "java.lang.String.format(locale, format, *args)");
            m8728C.append(format2);
            str = m8728C.toString();
        }
        return str;
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: Lh */
    public void mo22515Lh() {
        C12868b c12868b = this.f37418d;
        String mo13768b = this.f37421g.mo13768b(C2752R.string.SettingsAboutDebugId_clip, this.f37417c.mo13286a());
        l.d(mo13768b, "resourceProvider.getStri…outDebugId_clip, debugId)");
        Objects.requireNonNull(c12868b);
        l.e(mo13768b, "text");
        C12864a2.m22560d0(c12868b.f37415c, mo13768b, null);
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.mo22528a(2131887876);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: Oc */
    public void mo22514Oc() {
        String mo22846a = this.f37422h.mo22846a();
        if (mo22846a != null) {
            AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
            if (abstractC12870d != null) {
                abstractC12870d.mo22526b(mo22846a);
            }
            this.f37419e.mo22408l1(true);
            this.f37419e.mo22409k1(true);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: R8 */
    public void mo22513R8() {
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.loadUrl("https://blog.truecaller.com");
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: kg */
    public void mo22512kg() {
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.mo22527am("about");
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: m1 */
    public void mo22511m1() {
        n.B0(ViewActionEvent.f9985d.m35923o("settings_screen", ViewActionEvent.ViralityAction.FEEDBACK), this.f37420f);
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.mo22521yc();
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: nh */
    public void mo22510nh() {
        m22517Hj();
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    public void onResume() {
        List<? extends C13197i0> m3962T1 = C25225a.m3962T1(new C13197i0(0, m22516Ij(), "", ""));
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.mo22524su(m3962T1);
        }
        if (!this.f37419e.mo22420a()) {
            AbstractC12870d abstractC12870d2 = (AbstractC12870d) this.f57683a;
            if (abstractC12870d2 != null) {
                abstractC12870d2.mo22529Wi(false);
            }
        } else {
            List<? extends C13197i0> m3962T12 = C25225a.m3962T1(new C13197i0(0, String.valueOf(this.f37416b.getLong("profileUserId", 0L)), "", ""));
            AbstractC12870d abstractC12870d3 = (AbstractC12870d) this.f57683a;
            if (abstractC12870d3 != null) {
                abstractC12870d3.mo22520z7(m3962T12);
            }
        }
        List<? extends C13197i0> m3962T13 = C25225a.m3962T1(new C13197i0(0, this.f37417c.mo13286a(), "", ""));
        AbstractC12870d abstractC12870d4 = (AbstractC12870d) this.f57683a;
        if (abstractC12870d4 != null) {
            abstractC12870d4.mo22523ut(m3962T13);
        }
        if (!this.f37419e.mo22420a()) {
            AbstractC12870d abstractC12870d5 = (AbstractC12870d) this.f57683a;
            if (abstractC12870d5 == null) {
                return;
            }
            abstractC12870d5.mo22522vr(false);
        } else if (this.f37424j.mo22840d(AbstractC12603e.C12604a.f36737c)) {
        } else {
            if (this.f37424j.mo22840d(AbstractC12603e.C12605b.f36738c)) {
                AbstractC12870d abstractC12870d6 = (AbstractC12870d) this.f57683a;
                if (abstractC12870d6 == null) {
                    return;
                }
                abstractC12870d6.mo22525cm(C2752R.string.SettingsAboutRateInHuaweiAppGallery);
                return;
            }
            AbstractC12870d abstractC12870d7 = (AbstractC12870d) this.f57683a;
            if (abstractC12870d7 == null) {
                return;
            }
            abstractC12870d7.mo22530N6(false);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p685a.AbstractC12869c
    /* renamed from: sj */
    public void mo22509sj() {
        AbstractC12870d abstractC12870d = (AbstractC12870d) this.f57683a;
        if (abstractC12870d != null) {
            abstractC12870d.loadUrl("file:///android_asset/third-party-acknowledgement.html");
        }
    }
}
