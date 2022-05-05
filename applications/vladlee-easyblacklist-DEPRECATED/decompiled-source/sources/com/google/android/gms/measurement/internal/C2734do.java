package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.do */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/do.class */
public final class C2734do extends AbstractC2764er {

    /* renamed from: a */
    static final Pair<String, Long> f16675a = new Pair<>("", 0L);

    /* renamed from: A */
    private boolean f16676A;

    /* renamed from: B */
    private long f16677B;

    /* renamed from: b */
    public zzfj f16678b;

    /* renamed from: s */
    public boolean f16695s;

    /* renamed from: y */
    private SharedPreferences f16700y;

    /* renamed from: z */
    private String f16701z;

    /* renamed from: c */
    public final zzfk f16679c = new zzfk(this, "last_upload", 0);

    /* renamed from: d */
    public final zzfk f16680d = new zzfk(this, "last_upload_attempt", 0);

    /* renamed from: e */
    public final zzfk f16681e = new zzfk(this, "backoff", 0);

    /* renamed from: f */
    public final zzfk f16682f = new zzfk(this, "last_delete_stale", 0);

    /* renamed from: k */
    public final zzfk f16687k = new zzfk(this, "time_before_start", 10000);

    /* renamed from: l */
    public final zzfk f16688l = new zzfk(this, "session_timeout", 1800000);

    /* renamed from: m */
    public final zzfh f16689m = new zzfh(this, "start_new_session", true);

    /* renamed from: q */
    public final zzfk f16693q = new zzfk(this, "last_pause_time", 0);

    /* renamed from: r */
    public final zzfk f16694r = new zzfk(this, "time_active", 0);

    /* renamed from: n */
    public final zzfm f16690n = new zzfm(this, "non_personalized_ads", null);

    /* renamed from: o */
    public final zzfh f16691o = new zzfh(this, "use_dynamite_api", false);

    /* renamed from: p */
    public final zzfh f16692p = new zzfh(this, "allow_remote_dynamite", false);

    /* renamed from: g */
    public final zzfk f16683g = new zzfk(this, "midnight_offset", 0);

    /* renamed from: h */
    public final zzfk f16684h = new zzfk(this, "first_open_time", 0);

    /* renamed from: i */
    public final zzfk f16685i = new zzfk(this, "app_install_time", 0);

    /* renamed from: j */
    public final zzfm f16686j = new zzfm(this, "app_instance_id", null);

    /* renamed from: t */
    public zzfh f16696t = new zzfh(this, "app_backgrounded", false);

    /* renamed from: u */
    public zzfh f16697u = new zzfh(this, "deep_link_retrieval_complete", false);

    /* renamed from: v */
    public zzfk f16698v = new zzfk(this, "deep_link_retrieval_attempts", 0);

    /* renamed from: w */
    public final zzfm f16699w = new zzfm(this, "firebase_feature_rollouts", null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734do(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Pair<String, Boolean> m2140a(String str) {
        zzd();
        long elapsedRealtime = zzm().elapsedRealtime();
        String str2 = this.f16701z;
        if (str2 != null && elapsedRealtime < this.f16677B) {
            return new Pair<>(str2, Boolean.valueOf(this.f16676A));
        }
        this.f16677B = elapsedRealtime + zzt().zza(str, zzap.zzb);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzn());
            if (advertisingIdInfo != null) {
                this.f16701z = advertisingIdInfo.getId();
                this.f16676A = advertisingIdInfo.isLimitAdTrackingEnabled();
            }
            if (this.f16701z == null) {
                this.f16701z = "";
            }
        } catch (Exception e) {
            zzr().zzw().zza("Unable to get advertising id", e);
            this.f16701z = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.f16701z, Boolean.valueOf(this.f16676A));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2139a(boolean z) {
        zzd();
        zzr().zzx().zza("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m2136c().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: a */
    protected final boolean mo1646a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m2141a(long j) {
        return j - this.f16688l.zza() > this.f16693q.zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final String m2138b(String str) {
        zzd();
        String str2 = (String) m2140a(str).first;
        MessageDigest d = zzkm.m1608d();
        if (d == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, d.digest(str2.getBytes())));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: b */
    protected final void mo1618b() {
        this.f16700y = zzn().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f16695s = this.f16700y.getBoolean("has_been_opened", false);
        if (!this.f16695s) {
            SharedPreferences.Editor edit = this.f16700y.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f16678b = new zzfj(this, "health_monitor", Math.max(0L, zzap.zzc.zza(null).longValue()), (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m2137b(boolean z) {
        zzd();
        zzr().zzx().zza("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m2136c().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final SharedPreferences m2136c() {
        zzd();
        m2056l();
        return this.f16700y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m2135c(String str) {
        zzd();
        SharedPreferences.Editor edit = m2136c().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m2134c(boolean z) {
        zzd();
        zzr().zzx().zza("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = m2136c().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m2133d() {
        zzd();
        return m2136c().getString("gmp_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m2132d(String str) {
        zzd();
        SharedPreferences.Editor edit = m2136c().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final String m2131e() {
        zzd();
        return m2136c().getString("admob_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final Boolean m2130f() {
        zzd();
        if (!m2136c().contains("use_service")) {
            return null;
        }
        return Boolean.valueOf(m2136c().getBoolean("use_service", false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m2129g() {
        zzd();
        zzr().zzx().zza("Clearing collection preferences.");
        Boolean h = m2128h();
        SharedPreferences.Editor edit = m2136c().edit();
        edit.clear();
        edit.apply();
        if (h != null) {
            m2137b(h.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final Boolean m2128h() {
        zzd();
        if (m2136c().contains("measurement_enabled")) {
            return Boolean.valueOf(m2136c().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public final String m2127i() {
        zzd();
        String string = m2136c().getString("previous_os_version", null);
        zzl().m2056l();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = m2136c().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final boolean m2126j() {
        return this.f16700y.contains("deferred_analytics_collection");
    }
}
