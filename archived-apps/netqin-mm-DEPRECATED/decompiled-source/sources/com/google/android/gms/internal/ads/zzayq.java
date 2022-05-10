package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzayq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayq.class */
public final class zzayq implements zzayr {

    /* renamed from: b */
    public boolean f24643b;

    /* renamed from: d */
    public zzdzc<?> f24645d;

    /* renamed from: f */
    public SharedPreferences f24647f;

    /* renamed from: g */
    public SharedPreferences.Editor f24648g;

    /* renamed from: i */
    public String f24650i;

    /* renamed from: j */
    public String f24651j;

    /* renamed from: a */
    public final Object f24642a = new Object();

    /* renamed from: c */
    public final List<Runnable> f24644c = new ArrayList();

    /* renamed from: e */
    public zzrk f24646e = null;

    /* renamed from: h */
    public boolean f24649h = true;

    /* renamed from: k */
    public boolean f24652k = false;

    /* renamed from: l */
    public String f24653l = "";

    /* renamed from: m */
    public long f24654m = 0;

    /* renamed from: n */
    public long f24655n = 0;

    /* renamed from: o */
    public long f24656o = 0;

    /* renamed from: p */
    public int f24657p = -1;

    /* renamed from: q */
    public int f24658q = 0;

    /* renamed from: r */
    public Set<String> f24659r = Collections.emptySet();

    /* renamed from: s */
    public JSONObject f24660s = new JSONObject();

    /* renamed from: t */
    public boolean f24661t = true;

    /* renamed from: u */
    public boolean f24662u = true;

    /* renamed from: v */
    public String f24663v = null;

    /* renamed from: w */
    public int f24664w = -1;

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final zzaxy mo16075a() {
        zzaxy zzaxyVar;
        m16149o();
        synchronized (this.f24642a) {
            zzaxyVar = new zzaxy(this.f24653l, this.f24654m);
        }
        return zzaxyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16074a(int i) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24658q != i) {
                this.f24658q = i;
                if (this.f24648g != null) {
                    this.f24648g.putInt("version_code", i);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putInt("version_code", i);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16073a(long j) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24655n != j) {
                this.f24655n = j;
                if (this.f24648g != null) {
                    this.f24648g.putLong("app_last_background_time_ms", j);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putLong("app_last_background_time_ms", j);
                m16150a(bundle);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16152a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f24642a) {
            this.f24647f = sharedPreferences;
            this.f24648g = edit;
            if (PlatformVersion.m17059i()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.f24649h = this.f24647f.getBoolean("use_https", this.f24649h);
            this.f24661t = this.f24647f.getBoolean("content_url_opted_out", this.f24661t);
            this.f24650i = this.f24647f.getString("content_url_hashes", this.f24650i);
            this.f24652k = this.f24647f.getBoolean("auto_collect_location", this.f24652k);
            this.f24662u = this.f24647f.getBoolean("content_vertical_opted_out", this.f24662u);
            this.f24651j = this.f24647f.getString("content_vertical_hashes", this.f24651j);
            this.f24658q = this.f24647f.getInt("version_code", this.f24658q);
            this.f24653l = this.f24647f.getString("app_settings_json", this.f24653l);
            this.f24654m = this.f24647f.getLong("app_settings_last_update_ms", this.f24654m);
            this.f24655n = this.f24647f.getLong("app_last_background_time_ms", this.f24655n);
            this.f24657p = this.f24647f.getInt("request_in_session_count", this.f24657p);
            this.f24656o = this.f24647f.getLong("first_ad_req_time_ms", this.f24656o);
            this.f24659r = this.f24647f.getStringSet("never_pool_slots", this.f24659r);
            this.f24663v = this.f24647f.getString("display_cutout", this.f24663v);
            this.f24664w = this.f24647f.getInt("app_measurement_npa", this.f24664w);
            try {
                this.f24660s = new JSONObject(this.f24647f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzbbq.m15853c("Could not convert native advanced settings to json object", e);
            }
            m16150a(m16148p());
        }
    }

    /* renamed from: a */
    public final void m16151a(final Context context, String str, boolean z) {
        final String str2;
        synchronized (this.f24642a) {
            if (this.f24647f == null) {
                if (str == null) {
                    str2 = AppLovinMediationProvider.ADMOB;
                } else {
                    String valueOf = String.valueOf(str);
                    str2 = valueOf.length() != 0 ? "admob__".concat(valueOf) : new String("admob__");
                }
                this.f24645d = zzbbz.f24764a.mo12978a(new Runnable(this, context, str2) { // from class: c.d.b.d.g.a.f5

                    /* renamed from: a */
                    public final zzayq f12877a;

                    /* renamed from: b */
                    public final Context f12878b;

                    /* renamed from: c */
                    public final String f12879c;

                    {
                        this.f12877a = this;
                        this.f12878b = context;
                        this.f12879c = str2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12877a.m16152a(this.f12878b, this.f12879c);
                    }
                });
                this.f24643b = z;
            }
        }
    }

    /* renamed from: a */
    public final void m16150a(Bundle bundle) {
        zzbbz.f24764a.execute(new Runnable(this) { // from class: c.d.b.d.g.a.e5

            /* renamed from: a */
            public final zzayq f12799a;

            {
                this.f12799a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12799a.mo16050m();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16072a(Runnable runnable) {
        this.f24644c.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16071a(String str) {
        m16149o();
        synchronized (this.f24642a) {
            try {
                long b = zzp.m17962j().mo17091b();
                this.f24654m = b;
                if (str != null && !str.equals(this.f24653l)) {
                    this.f24653l = str;
                    if (this.f24648g != null) {
                        this.f24648g.putString("app_settings_json", str);
                        this.f24648g.putLong("app_settings_last_update_ms", b);
                        this.f24648g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("app_settings_json", str);
                    bundle.putLong("app_settings_last_update_ms", b);
                    m16150a(bundle);
                    for (Runnable runnable : this.f24644c) {
                        runnable.run();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16070a(String str, String str2, boolean z) {
        m16149o();
        synchronized (this.f24642a) {
            try {
                JSONArray optJSONArray = this.f24660s.optJSONArray(str);
                JSONArray jSONArray = optJSONArray;
                if (optJSONArray == null) {
                    jSONArray = new JSONArray();
                }
                int length = jSONArray.length();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject == null) {
                        return;
                    }
                    if (str2.equals(optJSONObject.optString("template_id"))) {
                        if (!z || !optJSONObject.optBoolean("uses_media_view", false)) {
                            length = i;
                        } else {
                            return;
                        }
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("template_id", str2);
                    jSONObject.put("uses_media_view", z);
                    jSONObject.put("timestamp_ms", zzp.m17962j().mo17091b());
                    jSONArray.put(length, jSONObject);
                    this.f24660s.put(str, jSONArray);
                } catch (JSONException e) {
                    zzbbq.m15853c("Could not update native advanced settings", e);
                }
                if (this.f24648g != null) {
                    this.f24648g.putString("native_advanced_settings", this.f24660s.toString());
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("native_advanced_settings", this.f24660s.toString());
                m16150a(bundle);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: a */
    public final void mo16069a(boolean z) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24662u != z) {
                this.f24662u = z;
                if (this.f24648g != null) {
                    this.f24648g.putBoolean("content_vertical_opted_out", z);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", this.f24661t);
                bundle.putBoolean("content_vertical_opted_out", this.f24662u);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: b */
    public final long mo16068b() {
        long j;
        m16149o();
        synchronized (this.f24642a) {
            j = this.f24655n;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: b */
    public final void mo16067b(int i) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24657p != i) {
                this.f24657p = i;
                if (this.f24648g != null) {
                    this.f24648g.putInt("request_in_session_count", i);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putInt("request_in_session_count", i);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: b */
    public final void mo16066b(long j) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24656o != j) {
                this.f24656o = j;
                if (this.f24648g != null) {
                    this.f24648g.putLong("first_ad_req_time_ms", j);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putLong("first_ad_req_time_ms", j);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: b */
    public final void mo16065b(String str) {
        m16149o();
        synchronized (this.f24642a) {
            if (!TextUtils.equals(this.f24663v, str)) {
                this.f24663v = str;
                if (this.f24648g != null) {
                    this.f24648g.putString("display_cutout", str);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("display_cutout", str);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: b */
    public final void mo16064b(boolean z) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24652k != z) {
                this.f24652k = z;
                if (this.f24648g != null) {
                    this.f24648g.putBoolean("auto_collect_location", z);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("auto_collect_location", z);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: c */
    public final int mo16063c() {
        int i;
        m16149o();
        synchronized (this.f24642a) {
            i = this.f24658q;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: c */
    public final void mo16062c(String str) {
        m16149o();
        synchronized (this.f24642a) {
            if (str != null) {
                if (!str.equals(this.f24650i)) {
                    this.f24650i = str;
                    if (this.f24648g != null) {
                        this.f24648g.putString("content_url_hashes", str);
                        this.f24648g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    m16150a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: c */
    public final void mo16061c(boolean z) {
        m16149o();
        synchronized (this.f24642a) {
            if (this.f24661t != z) {
                this.f24661t = z;
                if (this.f24648g != null) {
                    this.f24648g.putBoolean("content_url_opted_out", z);
                    this.f24648g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", this.f24661t);
                bundle.putBoolean("content_vertical_opted_out", this.f24662u);
                m16150a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: d */
    public final void mo16059d(String str) {
        m16149o();
        synchronized (this.f24642a) {
            if (str != null) {
                if (!str.equals(this.f24651j)) {
                    this.f24651j = str;
                    if (this.f24648g != null) {
                        this.f24648g.putString("content_vertical_hashes", str);
                        this.f24648g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    m16150a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: d */
    public final boolean mo16060d() {
        boolean z;
        m16149o();
        synchronized (this.f24642a) {
            z = this.f24652k;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: e */
    public final String mo16058e() {
        String str;
        m16149o();
        synchronized (this.f24642a) {
            str = this.f24651j;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: f */
    public final String mo16057f() {
        String str;
        m16149o();
        synchronized (this.f24642a) {
            str = this.f24663v;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: g */
    public final boolean mo16056g() {
        boolean z;
        m16149o();
        synchronized (this.f24642a) {
            z = this.f24662u;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: h */
    public final void mo16055h() {
        m16149o();
        synchronized (this.f24642a) {
            this.f24660s = new JSONObject();
            if (this.f24648g != null) {
                this.f24648g.remove("native_advanced_settings");
                this.f24648g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            m16150a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: i */
    public final String mo16054i() {
        String str;
        m16149o();
        synchronized (this.f24642a) {
            str = this.f24650i;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: j */
    public final JSONObject mo16053j() {
        JSONObject jSONObject;
        m16149o();
        synchronized (this.f24642a) {
            jSONObject = this.f24660s;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: k */
    public final boolean mo16052k() {
        boolean z;
        m16149o();
        synchronized (this.f24642a) {
            z = this.f24661t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: l */
    public final long mo16051l() {
        long j;
        m16149o();
        synchronized (this.f24642a) {
            j = this.f24656o;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: m */
    public final zzrk mo16050m() {
        if (!this.f24643b) {
            return null;
        }
        if ((mo16052k() && mo16056g()) || !zzacq.f23970b.mo16862a().booleanValue()) {
            return null;
        }
        synchronized (this.f24642a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f24646e == null) {
                this.f24646e = new zzrk();
            }
            this.f24646e.m11501b();
            zzbbq.m15854c("start fetching content...");
            return this.f24646e;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayr
    /* renamed from: n */
    public final int mo16049n() {
        int i;
        m16149o();
        synchronized (this.f24642a) {
            i = this.f24657p;
        }
        return i;
    }

    /* renamed from: o */
    public final void m16149o() {
        Throwable e;
        zzdzc<?> zzdzcVar = this.f24645d;
        if (zzdzcVar != null && !zzdzcVar.isDone()) {
            try {
                this.f24645d.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                zzbbq.m15853c("Interrupted while waiting for preferences loaded.", e2);
            } catch (CancellationException e3) {
                e = e3;
                zzbbq.m15855b("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e4) {
                e = e4;
                zzbbq.m15855b("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e5) {
                e = e5;
                zzbbq.m15855b("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    /* renamed from: p */
    public final Bundle m16148p() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.f24642a) {
            bundle.putBoolean("use_https", this.f24649h);
            bundle.putBoolean("content_url_opted_out", this.f24661t);
            bundle.putBoolean("content_vertical_opted_out", this.f24662u);
            bundle.putBoolean("auto_collect_location", this.f24652k);
            bundle.putInt("version_code", this.f24658q);
            bundle.putStringArray("never_pool_slots", (String[]) this.f24659r.toArray(new String[0]));
            bundle.putString("app_settings_json", this.f24653l);
            bundle.putLong("app_settings_last_update_ms", this.f24654m);
            bundle.putLong("app_last_background_time_ms", this.f24655n);
            bundle.putInt("request_in_session_count", this.f24657p);
            bundle.putLong("first_ad_req_time_ms", this.f24656o);
            bundle.putString("native_advanced_settings", this.f24660s.toString());
            bundle.putString("display_cutout", this.f24663v);
            bundle.putInt("app_measurement_npa", this.f24664w);
            if (this.f24650i != null) {
                bundle.putString("content_url_hashes", this.f24650i);
            }
            if (this.f24651j != null) {
                bundle.putString("content_vertical_hashes", this.f24651j);
            }
        }
        return bundle;
    }
}
