package p131c.p161d.p170b.p224d.p260i.p261a;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzfe;
import com.google.android.gms.measurement.internal.zzfg;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzfi;
import com.google.android.gms.measurement.internal.zzfj;
import com.google.android.gms.measurement.internal.zzfu;
/* renamed from: c.d.b.d.i.a.k3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/k3.class */
public final class C4737k3 extends AbstractC4747l4 {
    @VisibleForTesting

    /* renamed from: D */
    public static final Pair<String, Long> f17205D = new Pair<>("", 0L);

    /* renamed from: c */
    public SharedPreferences f17209c;

    /* renamed from: d */
    public zzfj f17210d;

    /* renamed from: m */
    public String f17219m;

    /* renamed from: n */
    public boolean f17220n;

    /* renamed from: o */
    public long f17221o;

    /* renamed from: v */
    public boolean f17228v;

    /* renamed from: e */
    public final zzfg f17211e = new zzfg(this, "last_upload", 0);

    /* renamed from: f */
    public final zzfg f17212f = new zzfg(this, "last_upload_attempt", 0);

    /* renamed from: g */
    public final zzfg f17213g = new zzfg(this, "backoff", 0);

    /* renamed from: h */
    public final zzfg f17214h = new zzfg(this, "last_delete_stale", 0);

    /* renamed from: p */
    public final zzfg f17222p = new zzfg(this, "time_before_start", 10000);

    /* renamed from: q */
    public final zzfg f17223q = new zzfg(this, "session_timeout", 1800000);

    /* renamed from: r */
    public final zzfe f17224r = new zzfe(this, "start_new_session", true);

    /* renamed from: u */
    public final zzfg f17227u = new zzfg(this, "last_pause_time", 0);

    /* renamed from: s */
    public final zzfi f17225s = new zzfi(this, "non_personalized_ads", null);

    /* renamed from: t */
    public final zzfe f17226t = new zzfe(this, "allow_remote_dynamite", false);

    /* renamed from: i */
    public final zzfg f17215i = new zzfg(this, "midnight_offset", 0);

    /* renamed from: j */
    public final zzfg f17216j = new zzfg(this, "first_open_time", 0);

    /* renamed from: k */
    public final zzfg f17217k = new zzfg(this, "app_install_time", 0);

    /* renamed from: l */
    public final zzfi f17218l = new zzfi(this, "app_instance_id", null);

    /* renamed from: w */
    public zzfe f17229w = new zzfe(this, "app_backgrounded", false);

    /* renamed from: x */
    public zzfe f17230x = new zzfe(this, "deep_link_retrieval_complete", false);

    /* renamed from: y */
    public zzfg f17231y = new zzfg(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: z */
    public final zzfi f17232z = new zzfi(this, "firebase_feature_rollouts", null);

    /* renamed from: A */
    public final zzfi f17206A = new zzfi(this, "deferred_attribution_cache", null);

    /* renamed from: B */
    public final zzfg f17207B = new zzfg(this, "deferred_attribution_cache_timestamp", 0);

    /* renamed from: C */
    public final zzfh f17208C = new zzfh(this, "default_event_parameters", null);

    public C4737k3(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: A */
    public final String m24931A() {
        mo9085c();
        String string = m24919q().getString("previous_os_version", null);
        m24901d().m24909l();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m24919q().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    /* renamed from: C */
    public final boolean m24930C() {
        return this.f17209c.contains("deferred_analytics_collection");
    }

    /* renamed from: a */
    public final Pair<String, Boolean> m24925a(String str) {
        mo9085c();
        long a = mo8779z().mo17092a();
        if (this.f17219m != null && a < this.f17221o) {
            return new Pair<>(this.f17219m, Boolean.valueOf(this.f17220n));
        }
        this.f17221o = a + m24897h().m9343e(str);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(mo8846B());
            if (advertisingIdInfo != null) {
                this.f17219m = advertisingIdInfo.getId();
                this.f17220n = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.f17219m == null) {
                this.f17219m = "";
            }
        } catch (Exception e) {
            mo8789p().m9145x().m9142a("Unable to get advertising id", e);
            this.f17219m = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.f17219m, Boolean.valueOf(this.f17220n));
    }

    /* renamed from: a */
    public final void m24926a(Boolean bool) {
        mo9085c();
        SharedPreferences.Editor edit = m24919q().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    /* renamed from: a */
    public final void m24924a(boolean z) {
        mo9085c();
        SharedPreferences.Editor edit = m24919q().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    /* renamed from: a */
    public final boolean m24929a(int i) {
        return zzac.m9320a(i, m24919q().getInt("consent_source", 100));
    }

    /* renamed from: a */
    public final boolean m24928a(long j) {
        return j - this.f17223q.m9131a() > this.f17227u.m9131a();
    }

    /* renamed from: a */
    public final boolean m24927a(zzac zzacVar, int i) {
        if (!zzml.m9520a() || !m24897h().m9354a(zzas.f29831H0)) {
            return false;
        }
        mo9085c();
        if (!m24929a(i)) {
            return false;
        }
        SharedPreferences.Editor edit = m24919q().edit();
        edit.putString("consent_settings", zzacVar.m9322a());
        edit.putInt("consent_source", i);
        edit.apply();
        return true;
    }

    /* renamed from: b */
    public final void m24923b(Boolean bool) {
        if (zzml.m9520a() && m24897h().m9354a(zzas.f29831H0)) {
            mo9085c();
            SharedPreferences.Editor edit = m24919q().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
    }

    /* renamed from: b */
    public final void m24922b(String str) {
        mo9085c();
        SharedPreferences.Editor edit = m24919q().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* renamed from: b */
    public final void m24921b(boolean z) {
        mo9085c();
        mo8789p().m9144y().m9142a("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m24919q().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* renamed from: c */
    public final void m24920c(String str) {
        mo9085c();
        SharedPreferences.Editor edit = m24919q().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: i */
    public final void mo8679i() {
        SharedPreferences sharedPreferences = mo8846B().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f17209c = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.f17228v = z;
        if (!z) {
            SharedPreferences.Editor edit = this.f17209c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f17210d = new zzfj(this, "health_monitor", Math.max(0L, zzas.f29861c.m9196a(null).longValue()));
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        return true;
    }

    @VisibleForTesting
    /* renamed from: q */
    public final SharedPreferences m24919q() {
        mo9085c();
        m24909l();
        return this.f17209c;
    }

    /* renamed from: r */
    public final String m24918r() {
        mo9085c();
        return m24919q().getString("gmp_app_id", null);
    }

    /* renamed from: s */
    public final String m24917s() {
        mo9085c();
        return m24919q().getString("admob_app_id", null);
    }

    /* renamed from: t */
    public final Boolean m24916t() {
        mo9085c();
        if (!m24919q().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(m24919q().getBoolean("use_service", false));
    }

    /* renamed from: u */
    public final void m24915u() {
        mo9085c();
        Boolean v = m24914v();
        SharedPreferences.Editor edit = m24919q().edit();
        edit.clear();
        edit.apply();
        if (v != null) {
            m24926a(v);
        }
    }

    /* renamed from: v */
    public final Boolean m24914v() {
        mo9085c();
        if (m24919q().contains("measurement_enabled")) {
            return Boolean.valueOf(m24919q().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* renamed from: w */
    public final Boolean m24913w() {
        if (!zzml.m9520a() || !m24897h().m9354a(zzas.f29831H0)) {
            return null;
        }
        mo9085c();
        if (m24919q().contains("measurement_enabled_from_api")) {
            return Boolean.valueOf(m24919q().getBoolean("measurement_enabled_from_api", true));
        }
        return null;
    }

    /* renamed from: x */
    public final int m24912x() {
        mo9085c();
        return m24919q().getInt("consent_source", 100);
    }

    /* renamed from: y */
    public final zzac m24911y() {
        mo9085c();
        return zzac.m9315a(m24919q().getString("consent_settings", "G1"));
    }
}
