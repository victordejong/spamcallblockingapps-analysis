package gogolook.callgogolook2.p074ad;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.MoPubInitScenario;
import gogolook.callgogolook2.p074ad.AdUtils;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.C6199g;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p165k.C6232c;
import p081h.p160h.p161a.p167m.AbstractC6259c;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14015g2;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
/* renamed from: gogolook.callgogolook2.ad.AdUtils */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdUtils.class */
public class AdUtils {
    public static final int FIXED_ADDITION_VALUE = 8;
    public static final int FIXED_MULTIPLY_VALUE = 3;
    public static final String KEY_ADS_REMAIN_DAYS = "remain_days";
    public static final String KEY_ADS_SUBSCRIBE_ENABLED = "iap_enabled";
    public static final String KEY_ADS_TRIAL = "free_trial";
    public static final String KEY_DEBUG_MOPUB_SDK_INIT_DEV = "debug_mopub_sdk_init_dev";
    public static final String KEY_DEBUG_MOPUB_SDK_INIT_FAIL_APP_LAUNCH = "debug_mopub_sdk_init_fail_app_launch";
    public static final String KEY_DEBUG_MOPUB_SDK_INIT_FAIL_FOR_ALL = "debug_mopub_sdk_init_fail_for_all";
    public static final String KEY_DEBUG_MOPUB_SDK_INIT_PRODUCTION = "debug_mopub_sdk_init_production";
    public static final String KEY_MOPUB_ADS_DEV_ADUNIT = "ad_dev_ad_unit";
    public static final String KEY_MOPUB_ADS_PRODUCTION_ADUNIT = "ad_product_ad_unit";
    public static final long ONE_DAY = 86400000;
    public static final long TRACK_INSTALL_PERIOD = 43200000;
    public static final long TRACK_RETENTION_PERIOD = 31;
    public static final String VALUE_NO_SUBSCRIPTION = "0";
    public static final int VALUE_PREFS_ACTIVE = 1;
    public static final int VALUE_PREFS_DEFAULT = -1;
    public static final int VALUE_PREFS_INACTIVE = 0;
    public static final String VALUE_SUBSCRIPTION = "1";

    /* renamed from: a */
    public static long m28811a(String str) {
        return C6192e.m23607a(str).m23599d();
    }

    /* renamed from: a */
    public static void m28818a(int i) {
        if (m28805d() == 0 && i > 0) {
            AdStatusController.m28827c().m28829a(false);
        }
        C13915b3.m3048d("base_date_number", (i * 3) + 8);
    }

    /* renamed from: a */
    public static /* synthetic */ void m28817a(long j, C6262a.EnumC6266d dVar, long j2) {
        C14261f.m1989a(j2);
        C6219a.m23541b("WhoscallApp", "MoPub_SDK", String.format("[Scenario] : %d, %s [Duration] : %d", Long.valueOf(j), dVar == null ? C6262a.EnumC6267e.AD_MOPUB_SDK_INIT_SUCCEEDED.m23446a() : dVar.m23447a(), Long.valueOf(j2)));
    }

    @MainThread
    /* renamed from: a */
    public static void m28815a(Context context, @MoPubInitScenario final long j) {
        C6219a.m23544a(false);
        if (!m28802g()) {
            C6199g.m23589a(WCMoPubAdUnitConfiguration.INSTANCE);
            if (!AppAdsSettingsUtils.m28792a(j)) {
                return;
            }
            if (C6199g.m23587b()) {
                C6219a.m23541b("WhoscallApp", "MoPub_SDK", String.format("[Scenario] : %d, %s [Duration] : %d", Long.valueOf(j), C6262a.EnumC6267e.AD_MOPUB_SDK_INIT_SUCCEEDED.m23446a(), -1L));
            } else if (m28810a(true)) {
                C6219a.m23541b("WhoscallApp", "MoPub_SDK", String.format("[Scenario] : %d, %s [Duration] : %d", Long.valueOf(j), C6262a.EnumC6266d.ERROR_MOPUB_SDK_NOT_INITIALIZE.m23447a(), -1L));
            } else {
                C10062a c = C10062a.m13511c();
                Trace a = c.m13516a("mopub_init_time_scenario_" + j);
                a.start();
                C6199g.m23590a(context, new AbstractC6259c() { // from class: j.a.g.a
                    @Override // p081h.p160h.p161a.p167m.AbstractC6259c
                    /* renamed from: a */
                    public final void mo6256a(C6262a.EnumC6266d dVar, long j2) {
                        AdUtils.m28817a(j, dVar, j2);
                    }
                });
                a.stop();
            }
        }
    }

    /* renamed from: a */
    public static void m28814a(Context context, AdUnit adUnit) {
        Intent intent = new Intent(context, AdActivity.class);
        intent.putExtra(AdActivity.EXTRA_AD_UNIT_NAME, adUnit.m28821a());
        C14217x3.m2156c(context, intent);
    }

    /* renamed from: a */
    public static void m28813a(Context context, AdUnit adUnit, String str) {
    }

    /* renamed from: a */
    public static void m28812a(AdUnit adUnit) {
        AppAdsSettingsUtils.m28790a(adUnit, AppAdsSettingsUtils.m28784b(adUnit) - 1);
    }

    /* renamed from: a */
    public static boolean m28819a() {
        return C13640c.m3745d().m3753a("aottertrek_enable");
    }

    /* renamed from: a */
    public static boolean m28816a(Context context) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        String h = CallStats.m28534h().m28539c().m28495h();
        boolean a = C14108o4.m2496a(h, C14108o4.EnumC14110b.CALL);
        boolean isEmpty = TextUtils.isEmpty(C14217x3.m2146e(context, h));
        boolean a2 = C13640c.m3745d().m3753a("contact_call_show_ad");
        if (a || !(!isEmpty) || a2) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m28810a(boolean z) {
        if (!m28809b()) {
            return false;
        }
        return PreferenceManager.getDefaultSharedPreferences(MyApplication.m29013o()).getBoolean(z ? KEY_DEBUG_MOPUB_SDK_INIT_FAIL_APP_LAUNCH : KEY_DEBUG_MOPUB_SDK_INIT_FAIL_FOR_ALL, false);
    }

    /* renamed from: b */
    public static boolean m28809b() {
        return C13565v.m3921g().m23335b() && TextUtils.equals(PreferenceManager.getDefaultSharedPreferences(MyApplication.m29013o()).getString("set_mopub_sdk_init_test", KEY_DEBUG_MOPUB_SDK_INIT_PRODUCTION), KEY_DEBUG_MOPUB_SDK_INIT_DEV);
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: b */
    public static boolean m28808b(@Nullable String str) {
        return !TextUtils.isEmpty(str) && m28806c();
    }

    /* renamed from: b */
    public static boolean m28807b(boolean z) {
        return !z || C13640c.m3745d().m3753a("contact_call_show_ad");
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: c */
    public static boolean m28806c() {
        try {
            return C13640c.m3745d().m3753a("enable_call_end_ndp_v2");
        } catch (Exception e) {
            C13973d4.m2952a(new Exception("Failed to get enable_call_end_ndp", e));
            return false;
        }
    }

    /* renamed from: d */
    public static int m28805d() {
        return C13915b3.m3067a("base_date_number") ? (C13915b3.m3066a("base_date_number", 8) - 8) / 3 : 0;
    }

    /* renamed from: e */
    public static void m28804e() {
        AdStatusController.m28827c().m28828b();
        C6199g.m23588a(true);
        C6268a.m23443a(new C6268a.AbstractC6269a() { // from class: gogolook.callgogolook2.ad.AdUtils.1
            @Override // p081h.p160h.p161a.p170p.C6268a.AbstractC6269a
            /* renamed from: a */
            public boolean mo23441a() {
                return AdStatusController.m28827c().m28831a();
            }
        });
        C6272d.m23427a(new C6272d.AbstractC6281i() { // from class: gogolook.callgogolook2.ad.AdUtils.2
            @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6281i
            /* renamed from: a */
            public int mo23410a(float f) {
                return C14217x3.m2201a(f);
            }
        });
        C6272d.m23428a(new C6272d.AbstractC6274b() { // from class: gogolook.callgogolook2.ad.AdUtils.3
            @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6274b
            /* renamed from: a */
            public String mo23412a() {
                return C14206w4.m2225a((int) R$string.ad_free_iap_learn_more);
            }

            @Override // p081h.p160h.p161a.p170p.C6272d.AbstractC6274b
            /* renamed from: b */
            public String mo23411b() {
                return C14206w4.m2225a((int) R$string.adn_adlabel_sponsored);
            }
        });
        C6232c.m23516a(new C6232c.AbstractC6245m() { // from class: gogolook.callgogolook2.ad.AdUtils.4
            @Override // p081h.p160h.p161a.p165k.C6232c.AbstractC6245m
            /* renamed from: a */
            public void mo23498a(String str, Object obj) {
            }

            @Override // p081h.p160h.p161a.p165k.C6232c.AbstractC6245m
            /* renamed from: a */
            public void mo23497a(Throwable th) {
                C14080m2.m2612a(th);
            }
        });
    }

    /* renamed from: f */
    public static boolean m28803f() {
        return C13565v.m3921g().m23335b() && TextUtils.equals(PreferenceManager.getDefaultSharedPreferences(MyApplication.m29013o()).getString("set_postcall_adn_test", KEY_MOPUB_ADS_PRODUCTION_ADUNIT), KEY_MOPUB_ADS_DEV_ADUNIT);
    }

    /* renamed from: g */
    public static boolean m28802g() {
        return m28800i() || m28805d() > 0 || C14217x3.m2138h() > System.currentTimeMillis() - (C13640c.m3745d().m3748b("no_ads_for_new_users") * ONE_DAY);
    }

    /* renamed from: h */
    public static boolean m28801h() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: i */
    public static boolean m28800i() {
        return C14015g2.m2842b();
    }
}
