package p193e.p194a.p793g3;

import android.content.Context;
import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.provider.fetch.AdsConfigurationManager;
import com.truecaller.buildinfo.BuildName;
import com.truecaller.calling.CallingCleverTapState;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.clevertap.CleverTapProfile;
import com.truecaller.clevertap.MonthSegment;
import com.truecaller.clevertap.ProfileViewCountRecentSegment;
import com.truecaller.clevertap.TwoDigitCountSegment;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.messaging.clevertap.DefaultSMSUser;
import e.a.r.t.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17037b1;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1113o4.AbstractC18926g;
import p193e.p194a.p1113o4.C18922d;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.p278q0.AbstractC7178b;
import p193e.p194a.p195a.p278q0.C7177a;
import p193e.p194a.p195a.p278q0.C7179c;
import p193e.p194a.p195a.p278q0.C7180d;
import p193e.p194a.p195a.p278q0.C7181e;
import p193e.p194a.p195a.p278q0.C7182f;
import p193e.p194a.p195a.p278q0.C7183g;
import p193e.p194a.p195a.p278q0.C7184h;
import p193e.p194a.p195a.p278q0.C7185i;
import p193e.p194a.p195a.p278q0.C7186j;
import p193e.p194a.p195a.p278q0.C7187k;
import p193e.p194a.p195a.p278q0.C7188l;
import p193e.p194a.p195a.p278q0.C7189m;
import p193e.p194a.p195a.p278q0.C7190n;
import p193e.p194a.p195a.p278q0.C7191o;
import p193e.p194a.p195a.p278q0.C7192p;
import p193e.p194a.p195a.p278q0.C7193q;
import p193e.p194a.p195a.p278q0.C7194r;
import p193e.p194a.p195a.p278q0.C7195s;
import p193e.p194a.p195a.p278q0.C7196t;
import p193e.p194a.p195a.p278q0.C7197u;
import p193e.p194a.p195a.p278q0.C7198v;
import p193e.p194a.p195a.p278q0.C7199w;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p417k.C8497f;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p804h.AbstractC14693i;
import p193e.p194a.p804h.C14691h;
import p193e.p194a.p804h.C14695j;
import p193e.p194a.p804h.C14697k;
import p193e.p194a.p804h.C14700l0;
import p193e.p194a.p804h.C14702m0;
import p193e.p194a.p804h.C14704n0;
import p193e.p194a.p804h.C14705o;
import p193e.p194a.p804h.C14740v;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import s1.a.a.a.v0.f.d;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.g3.k */
/* loaded from: classes7-dex2jar.jar:e/a/g3/k.class */
public final class C14431k implements AbstractC14430j {

    /* renamed from: a */
    public final Context f41585a;

    /* renamed from: b */
    public final AbstractC17197v0 f41586b;

    /* renamed from: c */
    public final AbstractC19954i0 f41587c;

    /* renamed from: d */
    public final AbstractC21881d f41588d;

    /* renamed from: e */
    public final AbstractC8541a f41589e;

    /* renamed from: f */
    public final AbstractC8438a f41590f;

    /* renamed from: g */
    public final C8601l0 f41591g;

    /* renamed from: h */
    public final CleverTapManager f41592h;

    /* renamed from: i */
    public final AdsConfigurationManager f41593i;

    /* renamed from: j */
    public final AbstractC8432l f41594j;

    /* renamed from: k */
    public final AbstractC10925a f41595k;

    /* renamed from: l */
    public final C8497f f41596l;

    /* renamed from: m */
    public final AbstractC17037b1 f41597m;

    /* renamed from: n */
    public final C14429i f41598n;

    /* renamed from: o */
    public final AbstractC20235a f41599o;

    /* renamed from: p */
    public final AbstractC7178b f41600p;

    /* renamed from: q */
    public final AbstractC14693i f41601q;

    /* renamed from: r */
    public final AbstractC19219a0 f41602r;

    /* renamed from: s */
    public final AbstractC18926g f41603s;

    /* renamed from: t */
    public final AbstractC17229a f41604t;

    @Inject
    public C14431k(Context context, AbstractC17197v0 abstractC17197v0, AbstractC19954i0 abstractC19954i0, AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C8601l0 c8601l0, CleverTapManager cleverTapManager, AdsConfigurationManager adsConfigurationManager, AbstractC8432l abstractC8432l, AbstractC10925a abstractC10925a, C8497f c8497f, AbstractC17037b1 abstractC17037b1, C14429i c14429i, AbstractC20235a abstractC20235a, AbstractC7178b abstractC7178b, AbstractC14693i abstractC14693i, AbstractC19219a0 abstractC19219a0, AbstractC18926g abstractC18926g, AbstractC17229a abstractC17229a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c8601l0, "timestampUtil");
        l.e(cleverTapManager, "cleverTapManager");
        l.e(adsConfigurationManager, "adsConfigurationManager");
        l.e(abstractC8432l, "accountsManager");
        l.e(abstractC10925a, "buildHelper");
        l.e(c8497f, "languageUtil");
        l.e(abstractC17037b1, "premiumSubscriptionStatusRepository");
        l.e(c14429i, "premiumUserPropGenerator");
        l.e(abstractC20235a, "remoteConfig");
        l.e(abstractC7178b, "messagingUserPropGenerator");
        l.e(abstractC14693i, "callingCleverTapUtils");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC18926g, "pushIdProvider");
        l.e(abstractC17229a, "firebasePersonalisationManager");
        this.f41585a = context;
        this.f41586b = abstractC17197v0;
        this.f41587c = abstractC19954i0;
        this.f41588d = abstractC21881d;
        this.f41589e = abstractC8541a;
        this.f41590f = abstractC8438a;
        this.f41591g = c8601l0;
        this.f41592h = cleverTapManager;
        this.f41593i = adsConfigurationManager;
        this.f41594j = abstractC8432l;
        this.f41595k = abstractC10925a;
        this.f41596l = c8497f;
        this.f41597m = abstractC17037b1;
        this.f41598n = c14429i;
        this.f41599o = abstractC20235a;
        this.f41600p = abstractC7178b;
        this.f41601q = abstractC14693i;
        this.f41602r = abstractC19219a0;
        this.f41603s = abstractC18926g;
        this.f41604t = abstractC17229a;
    }

    @Override // p193e.p194a.p793g3.AbstractC14430j
    /* renamed from: a */
    public boolean mo20107a() {
        CallingCleverTapState callingCleverTapState;
        C14439s c14439s;
        int mo11751l;
        TwoDigitCountSegment twoDigitCountSegment;
        int mo11751l2;
        C14438r c14438r;
        Long l;
        Locale locale;
        MonthSegment monthSegment;
        C18922d mo14315a = this.f41603s.mo14315a();
        if (mo14315a != null) {
            this.f41592h.updatePushRegistrationId(mo14315a.f53059b, mo14315a.f53058a);
        }
        C14697k c14697k = (C14697k) this.f41601q;
        if (!c14697k.f42197b.mo13777t()) {
            callingCleverTapState = CallingCleverTapState.NOT_SUPPORTED;
        } else if (c14697k.f42197b.mo13791f()) {
            c14697k.f42199d.putBoolean("defaultDialerGrantedLoggedToCleverTap", true);
            callingCleverTapState = CallingCleverTapState.ENABLED;
        } else {
            callingCleverTapState = c14697k.f42199d.getBoolean("defaultDialerGrantedLoggedToCleverTap") ? CallingCleverTapState.CHURN : CallingCleverTapState.DISABLED;
        }
        C14705o c14705o = new C14705o(callingCleverTapState);
        C14433m c14433m = new C14433m();
        c14433m.m20105a(new C14437q(this.f41598n.f41584a.m17200a()));
        String str = "UNDEFINED";
        if (!this.f41586b.mo16408H()) {
            String string = this.f41588d.getString("lastPremiumLaunchContext");
            if (string != null) {
                str = string;
            }
            l.d(str, "generalSettings.getStrin…ONTEXT) ?: PROP_UNDEFINED");
            c14439s = new C14439s(str);
        } else {
            c14439s = new C14439s("UNDEFINED");
        }
        c14433m.m20105a(c14439s);
        mo11751l = this.f41587c.mo11751l(0L, null);
        if (mo11751l != 0) {
            Objects.requireNonNull(TwoDigitCountSegment.Companion);
            twoDigitCountSegment = mo11751l == 0 ? TwoDigitCountSegment.NONE : (1 <= mo11751l && 5 >= mo11751l) ? TwoDigitCountSegment.ONE_TO_FIVE : (6 <= mo11751l && 10 >= mo11751l) ? TwoDigitCountSegment.SIX_TO_TEN : (11 <= mo11751l && 20 >= mo11751l) ? TwoDigitCountSegment.ELEVEN_TO_TWENTY : (21 <= mo11751l && 30 >= mo11751l) ? TwoDigitCountSegment.TWENTY_ONE_TO_THIRTY : TwoDigitCountSegment.THIRTY_ONE_MORE;
        } else {
            twoDigitCountSegment = TwoDigitCountSegment.NONE;
        }
        c14433m.m20105a(new C14440t(twoDigitCountSegment));
        AbstractC19954i0 abstractC19954i0 = this.f41587c;
        b y = new b().y(30);
        l.d(y, "DateTime.now().minusDays…MIT_IN_DAYS\n            )");
        mo11751l2 = abstractC19954i0.mo11751l(((e) y).a, null);
        Objects.requireNonNull(ProfileViewCountRecentSegment.Companion);
        c14433m.m20105a(new C14441u(mo11751l2 == 0 ? ProfileViewCountRecentSegment.NONE : mo11751l2 == 1 ? ProfileViewCountRecentSegment.ONE : mo11751l2 == 2 ? ProfileViewCountRecentSegment.TWO : mo11751l2 == 3 ? ProfileViewCountRecentSegment.THREE : (4 <= mo11751l2 && 7 >= mo11751l2) ? ProfileViewCountRecentSegment.FOUR_TO_SEVEN : (8 <= mo11751l2 && 15 >= mo11751l2) ? ProfileViewCountRecentSegment.EIGHT_TO_FIFTEEN : (16 <= mo11751l2 && 30 >= mo11751l2) ? ProfileViewCountRecentSegment.SIXTEEN_TO_THIRTY : ProfileViewCountRecentSegment.THIRTY_ONE_MORE));
        if (!this.f41586b.mo16408H()) {
            long j = this.f41588d.getLong("lastPremiumTimestamp", 0L);
            long days = TimeUnit.MILLISECONDS.toDays(this.f41591g.m28258c() - j) / 30;
            if (j == 0) {
                monthSegment = MonthSegment.UNDEFINED;
            } else {
                int i = (int) days;
                Objects.requireNonNull(MonthSegment.Companion);
                monthSegment = i == 0 ? MonthSegment.CURRENT_MONTH : i == 1 ? MonthSegment.ONE_MONTH : i == 2 ? MonthSegment.TWO_MONTH : i == 3 ? MonthSegment.THREE_MONTH : (4 <= i && 6 >= i) ? MonthSegment.FOUR_SIX_MONTH : (7 <= i && 9 >= i) ? MonthSegment.SEVEN_NINE_MONTH : (10 <= i && 12 >= i) ? MonthSegment.TEN_TWELVE_MONTH : MonthSegment.YEAR_MORE;
            }
            c14438r = new C14438r(monthSegment);
        } else {
            this.f41588d.putLong("lastPremiumTimestamp", this.f41591g.m28258c());
            c14438r = new C14438r(MonthSegment.UNDEFINED);
        }
        c14433m.m20105a(c14438r);
        c14433m.m20105a(new C14444x(this.f41593i.m35955h()));
        c14433m.m20105a(new C14411a(BuildName.Companion.m35807a(this.f41595k.getName())));
        c14433m.m20105a(new C14442v(this.f41597m.mo16607a().name()));
        c14433m.m20105a(new C14443w(!this.f41588d.getBoolean("showProfileViewNotifications", true)));
        c14433m.m20105a(new C14414b0(this.f41599o.getString("likelyToSpend_23310")));
        c14433m.m20105a(new C14436p(this.f41604t.mo16359a()));
        C7182f c7182f = (C7182f) this.f41600p;
        Objects.requireNonNull(c7182f);
        ArrayList<AbstractC14434n> arrayList = new ArrayList();
        boolean mo13794c = c7182f.f23079c.mo13794c();
        arrayList.add(mo13794c ? new C7183g(DefaultSMSUser.YES) : c7182f.f23078b.mo31035m0() ? new C7183g(DefaultSMSUser.CHURN) : new C7183g(DefaultSMSUser.NO));
        c7182f.f23078b.mo31029n0(mo13794c);
        arrayList.add(new C7186j(c7182f.m30004g(c7182f.m30010a(1073741824))));
        arrayList.add(new C7184h(c7182f.m30004g(c7182f.m30010a(536870912))));
        arrayList.add(new C7185i(c7182f.m30004g(c7182f.m30010a(8))));
        arrayList.add(new C7196t(c7182f.m30005f(c7182f.m30008c(c7182f.m30007d(false)))));
        Cursor query = c7182f.f23077a.query(C17891a1.f50888a.buildUpon().appendEncodedPath("business_im").build(), null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    l.d(query, "it");
                    l = Long.valueOf(C19291g.m13632E0(query, "business_im_date"));
                } else {
                    l = null;
                }
                th = null;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C25225a.m4016G(query, th);
                }
            }
        } else {
            l = null;
        }
        arrayList.add(new C7191o(c7182f.m30005f(l)));
        StringBuilder m8728C = C22128a.m8728C("(info5 & 2) != 0 AND ");
        m8728C.append(c7182f.m30007d(false));
        arrayList.add(new C7194r(c7182f.m30005f(c7182f.m30008c(m8728C.toString()))));
        arrayList.add(new C7197u(c7182f.m30005f(c7182f.m30008c(c7182f.m30007d(true)))));
        StringBuilder m8728C2 = C22128a.m8728C("(info5 & 2) != 0 AND ");
        m8728C2.append(c7182f.m30007d(true));
        arrayList.add(new C7195s(c7182f.m30005f(c7182f.m30008c(m8728C2.toString()))));
        arrayList.add(new C7192p(c7182f.m30005f(c7182f.m30009b(false))));
        arrayList.add(new C7193q(c7182f.m30005f(c7182f.m30009b(true))));
        b mo31187K0 = c7182f.f23078b.mo31187K0();
        l.d(mo31187K0, "settings.manualCleanupLastDate");
        Long valueOf = Long.valueOf(((e) mo31187K0).a);
        if (!(valueOf.longValue() != 0)) {
            valueOf = null;
        }
        arrayList.add(new C7198v(c7182f.m30005f(valueOf)));
        b mo31198I = c7182f.f23078b.mo31198I();
        l.d(mo31198I, "settings.autoCleanupLastDate");
        Long valueOf2 = Long.valueOf(((e) mo31198I).a);
        if (!(valueOf2.longValue() != 0)) {
            valueOf2 = null;
        }
        arrayList.add(new C7190n(c7182f.m30005f(valueOf2)));
        arrayList.add(new C7199w(c7182f.m30006e(c7182f.f23078b.mo31021o2())));
        arrayList.add(new C7177a(c7182f.m30006e(c7182f.f23078b.mo31163P())));
        arrayList.add(new C7187k(((Number) d.c3((f) null, new C7179c(c7182f, null), 1, (Object) null)).intValue()));
        arrayList.add(new C7188l(((Number) d.c3((f) null, new C7180d(c7182f, null), 1, (Object) null)).intValue()));
        arrayList.add(new C7189m(((Number) d.c3((f) null, new C7181e(c7182f, null), 1, (Object) null)).intValue()));
        for (AbstractC14434n abstractC14434n : arrayList) {
            c14433m.m20105a(abstractC14434n);
        }
        C14697k c14697k2 = (C14697k) this.f41601q;
        c14433m.m20105a(new C14740v(!c14697k2.f42196a.mo21257l() ? CallingCleverTapState.NOT_SUPPORTED : c14697k2.f42196a.mo21263f() ? CallingCleverTapState.ENABLED : ((!c14697k2.f42196a.mo21261h() || c14697k2.f42196a.mo21262g()) && (!c14697k2.f42196a.mo21262g() || c14697k2.f42197b.mo13791f() || !c14697k2.f42199d.getBoolean("defaultDialerGrantedLoggedToCleverTap"))) ? CallingCleverTapState.DISABLED : CallingCleverTapState.CHURN));
        c14433m.m20105a(c14705o);
        C14697k c14697k3 = (C14697k) this.f41601q;
        c14433m.m20105a(new C14691h(!c14697k3.f42198c.isSupported() ? CallingCleverTapState.NOT_SUPPORTED : c14697k3.f42198c.mo14508q() ? CallingCleverTapState.ENABLED : c14697k3.f42198c.mo14513l() ? CallingCleverTapState.CHURN : CallingCleverTapState.DISABLED));
        c14433m.m20105a(new C14435o(this.f41602r.mo13831b()));
        c14433m.m20105a(new C14704n0(((C14697k) this.f41601q).f42200e.isEnabled() ? CallingCleverTapState.ENABLED : CallingCleverTapState.DISABLED));
        C14697k c14697k4 = (C14697k) this.f41601q;
        c14433m.m20105a(new C14702m0((!c14697k4.f42200e.isEnabled() || !c14697k4.f42200e.mo24175r()) ? CallingCleverTapState.DISABLED : CallingCleverTapState.ENABLED));
        C14697k c14697k5 = (C14697k) this.f41601q;
        c14433m.m20105a(new C14700l0(!c14697k5.f42201f.mo17820z() ? CallingCleverTapState.NOT_SUPPORTED : c14697k5.f42201f.mo17844b() ? CallingCleverTapState.ENABLED : CallingCleverTapState.DISABLED));
        C14697k c14697k6 = (C14697k) this.f41601q;
        Objects.requireNonNull(c14697k6);
        c14433m.m20105a((AbstractC14434n) d.c3((f) null, new C14695j(c14697k6, null), 1, (Object) null));
        for (AbstractC14434n abstractC14434n2 : i.T(new AbstractC14434n[]{new C14446z(this.f41599o.mo11313a("likelyToBuyMonthlySub", false)), new C14412a0(this.f41599o.mo11313a("likelyToBuyYearlySub", false)), new C14445y(this.f41599o.mo11313a("likelyToBuyGoldSub", false))})) {
            c14433m.m20105a(abstractC14434n2);
        }
        CleverTapManager cleverTapManager = this.f41592h;
        String string2 = this.f41589e.getString("profileFirstName");
        String string3 = this.f41590f.getString("profileNumber");
        String string4 = this.f41589e.getString("profileEmail");
        CountryListDto.C3679a m28281h = C8588j.m28281h(this.f41585a);
        if (C18334g0.m15277B("languageAuto", true)) {
            locale = this.f41596l.m28446c(this.f41585a);
            if (locale == null) {
                C8497f c8497f = this.f41596l;
                locale = Locale.getDefault();
                l.d(locale, "Locale.getDefault()");
                Objects.requireNonNull(c8497f);
                l.e(locale, "defaultLocale");
                Locale m28443f = c8497f.m28443f();
                if (m28443f != null) {
                    locale = m28443f;
                }
            }
        } else {
            locale = new Locale(C18334g0.m15251Q("language"));
        }
        C15576b m18677a = C15565c.m18677a(locale);
        StringBuilder sb = new StringBuilder();
        l.d(m18677a, "language");
        sb.append(m18677a.f44042j.f26267b);
        sb.append('-');
        sb.append(m18677a.f44042j.f26268c);
        String sb2 = sb.toString();
        String str2 = null;
        if (m28281h != null) {
            str2 = m28281h.f10911b;
        }
        cleverTapManager.onUserLogin(new CleverTapProfile(string2, string3, string4, str2, sb2));
        this.f41592h.updateProfile(c14433m);
        C14697k c14697k7 = (C14697k) this.f41601q;
        Objects.requireNonNull(c14697k7);
        l.e(c14705o, "defaultDialerProperty");
        if (((HashMap) c14705o.m20104a()).get("DefaultDailerState") == CallingCleverTapState.ENABLED) {
            c14697k7.f42199d.putBoolean("defaultDialerGrantedLoggedToCleverTap", true);
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p793g3.AbstractC14430j
    /* renamed from: b */
    public boolean mo20106b() {
        return this.f41589e.getBoolean("featureCleverTap") && this.f41594j.mo28580d() && c.qa();
    }
}
