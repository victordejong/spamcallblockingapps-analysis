package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavx.class */
public final class zzavx implements zzavu {

    /* renamed from: b */
    private boolean f11441b;

    /* renamed from: d */
    private zzdhe<?> f11443d;

    /* renamed from: f */
    private SharedPreferences f11445f;

    /* renamed from: g */
    private SharedPreferences.Editor f11446g;

    /* renamed from: j */
    private String f11449j;

    /* renamed from: k */
    private String f11450k;

    /* renamed from: a */
    private final Object f11440a = new Object();

    /* renamed from: c */
    private final List<Runnable> f11442c = new ArrayList();

    /* renamed from: e */
    private zzqi f11444e = null;

    /* renamed from: h */
    private boolean f11447h = false;

    /* renamed from: i */
    private boolean f11448i = true;

    /* renamed from: l */
    private boolean f11451l = false;

    /* renamed from: m */
    private String f11452m = "";

    /* renamed from: n */
    private long f11453n = 0;

    /* renamed from: o */
    private long f11454o = 0;

    /* renamed from: p */
    private long f11455p = 0;

    /* renamed from: q */
    private int f11456q = -1;

    /* renamed from: r */
    private int f11457r = 0;

    /* renamed from: s */
    private Set<String> f11458s = Collections.emptySet();

    /* renamed from: t */
    private JSONObject f11459t = new JSONObject();

    /* renamed from: u */
    private boolean f11460u = true;

    /* renamed from: v */
    private boolean f11461v = true;

    /* renamed from: w */
    private String f11462w = null;

    /* renamed from: x */
    private int f11463x = -1;

    /* renamed from: a */
    private final void m4261a() {
        zzdhe<?> zzdheVar = this.f11443d;
        if (zzdheVar != null && !zzdheVar.isDone()) {
            try {
                this.f11443d.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                zzavs.zzd("Interrupted while waiting for preferences loaded.", e);
            } catch (CancellationException | ExecutionException | TimeoutException e2) {
                zzavs.zzc("Fail to initialize AdSharedPreferenceManager.", e2);
            }
        }
    }

    /* renamed from: b */
    private final Bundle m4259b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.f11440a) {
            bundle.putBoolean("use_https", this.f11448i);
            bundle.putBoolean("content_url_opted_out", this.f11460u);
            bundle.putBoolean("content_vertical_opted_out", this.f11461v);
            bundle.putBoolean("auto_collect_location", this.f11451l);
            bundle.putInt("version_code", this.f11457r);
            bundle.putStringArray("never_pool_slots", (String[]) this.f11458s.toArray(new String[0]));
            bundle.putString("app_settings_json", this.f11452m);
            bundle.putLong("app_settings_last_update_ms", this.f11453n);
            bundle.putLong("app_last_background_time_ms", this.f11454o);
            bundle.putInt("request_in_session_count", this.f11456q);
            bundle.putLong("first_ad_req_time_ms", this.f11455p);
            bundle.putString("native_advanced_settings", this.f11459t.toString());
            bundle.putString("display_cutout", this.f11462w);
            bundle.putInt("app_measurement_npa", this.f11463x);
            if (this.f11449j != null) {
                bundle.putString("content_url_hashes", this.f11449j);
            }
            if (this.f11450k != null) {
                bundle.putString("content_vertical_hashes", this.f11450k);
            }
        }
        return bundle;
    }

    /* renamed from: c */
    private final void m4258c() {
        zzazd.zzdwe.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.es

            /* renamed from: a */
            private final zzavx f8440a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8440a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8440a.zzvt();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4260a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f11440a) {
            this.f11445f = sharedPreferences;
            this.f11446g = edit;
            boolean z = false;
            if (PlatformVersion.isAtLeastM()) {
                z = false;
                if (!NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    z = true;
                }
            }
            this.f11447h = z;
            this.f11448i = this.f11445f.getBoolean("use_https", this.f11448i);
            this.f11460u = this.f11445f.getBoolean("content_url_opted_out", this.f11460u);
            this.f11449j = this.f11445f.getString("content_url_hashes", this.f11449j);
            this.f11451l = this.f11445f.getBoolean("auto_collect_location", this.f11451l);
            this.f11461v = this.f11445f.getBoolean("content_vertical_opted_out", this.f11461v);
            this.f11450k = this.f11445f.getString("content_vertical_hashes", this.f11450k);
            this.f11457r = this.f11445f.getInt("version_code", this.f11457r);
            this.f11452m = this.f11445f.getString("app_settings_json", this.f11452m);
            this.f11453n = this.f11445f.getLong("app_settings_last_update_ms", this.f11453n);
            this.f11454o = this.f11445f.getLong("app_last_background_time_ms", this.f11454o);
            this.f11456q = this.f11445f.getInt("request_in_session_count", this.f11456q);
            this.f11455p = this.f11445f.getLong("first_ad_req_time_ms", this.f11455p);
            this.f11458s = this.f11445f.getStringSet("never_pool_slots", this.f11458s);
            this.f11462w = this.f11445f.getString("display_cutout", this.f11462w);
            this.f11463x = this.f11445f.getInt("app_measurement_npa", this.f11463x);
            try {
                this.f11459t = new JSONObject(this.f11445f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                zzavs.zzd("Could not convert native advanced settings to json object", e);
            }
            m4259b();
            m4258c();
        }
    }

    public final void zza(final Context context, String str, boolean z) {
        final String str2;
        synchronized (this.f11440a) {
            if (this.f11445f == null) {
                if (str == null) {
                    str2 = "admob";
                } else {
                    String valueOf = String.valueOf(str);
                    str2 = valueOf.length() != 0 ? "admob__".concat(valueOf) : new String("admob__");
                }
                this.f11443d = zzazd.zzdwe.zzf(new Runnable(this, context, str2) { // from class: com.google.android.gms.internal.ads.er

                    /* renamed from: a */
                    private final zzavx f8437a;

                    /* renamed from: b */
                    private final Context f8438b;

                    /* renamed from: c */
                    private final String f8439c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8437a = this;
                        this.f8438b = context;
                        this.f8439c = str2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8437a.m4260a(this.f8438b, this.f8439c);
                    }
                });
                this.f11441b = z;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zza(String str, String str2, boolean z) {
        m4261a();
        synchronized (this.f11440a) {
            JSONArray optJSONArray = this.f11459t.optJSONArray(str);
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
                jSONObject.put("timestamp_ms", zzq.zzkx().currentTimeMillis());
                jSONArray.put(length, jSONObject);
                this.f11459t.put(str, jSONArray);
            } catch (JSONException e) {
                zzavs.zzd("Could not update native advanced settings", e);
            }
            if (this.f11446g != null) {
                this.f11446g.putString("native_advanced_settings", this.f11459t.toString());
                this.f11446g.apply();
            }
            new Bundle().putString("native_advanced_settings", this.f11459t.toString());
            m4258c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzao(boolean z) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11460u != z) {
                this.f11460u = z;
                if (this.f11446g != null) {
                    this.f11446g.putBoolean("content_url_opted_out", z);
                    this.f11446g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", this.f11460u);
                bundle.putBoolean("content_vertical_opted_out", this.f11461v);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzap(boolean z) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11461v != z) {
                this.f11461v = z;
                if (this.f11446g != null) {
                    this.f11446g.putBoolean("content_vertical_opted_out", z);
                    this.f11446g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", this.f11460u);
                bundle.putBoolean("content_vertical_opted_out", this.f11461v);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzaq(boolean z) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11451l != z) {
                this.f11451l = z;
                if (this.f11446g != null) {
                    this.f11446g.putBoolean("auto_collect_location", z);
                    this.f11446g.apply();
                }
                new Bundle().putBoolean("auto_collect_location", z);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzb(Runnable runnable) {
        this.f11442c.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzcp(int i) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11457r != i) {
                this.f11457r = i;
                if (this.f11446g != null) {
                    this.f11446g.putInt("version_code", i);
                    this.f11446g.apply();
                }
                new Bundle().putInt("version_code", i);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzcq(int i) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11456q != i) {
                this.f11456q = i;
                if (this.f11446g != null) {
                    this.f11446g.putInt("request_in_session_count", i);
                    this.f11446g.apply();
                }
                new Bundle().putInt("request_in_session_count", i);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzee(String str) {
        m4261a();
        synchronized (this.f11440a) {
            if (str != null) {
                if (!str.equals(this.f11449j)) {
                    this.f11449j = str;
                    if (this.f11446g != null) {
                        this.f11446g.putString("content_url_hashes", str);
                        this.f11446g.apply();
                    }
                    new Bundle().putString("content_url_hashes", str);
                    m4258c();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzef(String str) {
        m4261a();
        synchronized (this.f11440a) {
            if (str != null) {
                if (!str.equals(this.f11450k)) {
                    this.f11450k = str;
                    if (this.f11446g != null) {
                        this.f11446g.putString("content_vertical_hashes", str);
                        this.f11446g.apply();
                    }
                    new Bundle().putString("content_vertical_hashes", str);
                    m4258c();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzeg(String str) {
        m4261a();
        synchronized (this.f11440a) {
            long currentTimeMillis = zzq.zzkx().currentTimeMillis();
            this.f11453n = currentTimeMillis;
            if (str != null && !str.equals(this.f11452m)) {
                this.f11452m = str;
                if (this.f11446g != null) {
                    this.f11446g.putString("app_settings_json", str);
                    this.f11446g.putLong("app_settings_last_update_ms", currentTimeMillis);
                    this.f11446g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", str);
                bundle.putLong("app_settings_last_update_ms", currentTimeMillis);
                m4258c();
                for (Runnable runnable : this.f11442c) {
                    runnable.run();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzeh(String str) {
        m4261a();
        synchronized (this.f11440a) {
            if (!TextUtils.equals(this.f11462w, str)) {
                this.f11462w = str;
                if (this.f11446g != null) {
                    this.f11446g.putString("display_cutout", str);
                    this.f11446g.apply();
                }
                new Bundle().putString("display_cutout", str);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzez(long j) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11454o != j) {
                this.f11454o = j;
                if (this.f11446g != null) {
                    this.f11446g.putLong("app_last_background_time_ms", j);
                    this.f11446g.apply();
                }
                new Bundle().putLong("app_last_background_time_ms", j);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzfa(long j) {
        m4261a();
        synchronized (this.f11440a) {
            if (this.f11455p != j) {
                this.f11455p = j;
                if (this.f11446g != null) {
                    this.f11446g.putLong("first_ad_req_time_ms", j);
                    this.f11446g.apply();
                }
                new Bundle().putLong("first_ad_req_time_ms", j);
                m4258c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final zzqi zzvt() {
        if (!this.f11441b) {
            return null;
        }
        if ((zzvu() && zzvw()) || !zzaaw.zzcsy.get().booleanValue()) {
            return null;
        }
        synchronized (this.f11440a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f11444e == null) {
                this.f11444e = new zzqi();
            }
            this.f11444e.zzmb();
            zzavs.zzey("start fetching content...");
            return this.f11444e;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final boolean zzvu() {
        boolean z;
        m4261a();
        synchronized (this.f11440a) {
            z = this.f11460u;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final String zzvv() {
        String str;
        m4261a();
        synchronized (this.f11440a) {
            str = this.f11449j;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final boolean zzvw() {
        boolean z;
        m4261a();
        synchronized (this.f11440a) {
            z = this.f11461v;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final String zzvx() {
        String str;
        m4261a();
        synchronized (this.f11440a) {
            str = this.f11450k;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final boolean zzvy() {
        boolean z;
        m4261a();
        synchronized (this.f11440a) {
            z = this.f11451l;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final int zzvz() {
        int i;
        m4261a();
        synchronized (this.f11440a) {
            i = this.f11457r;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final zzavf zzwa() {
        zzavf zzavfVar;
        m4261a();
        synchronized (this.f11440a) {
            zzavfVar = new zzavf(this.f11452m, this.f11453n);
        }
        return zzavfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final long zzwb() {
        long j;
        m4261a();
        synchronized (this.f11440a) {
            j = this.f11454o;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final int zzwc() {
        int i;
        m4261a();
        synchronized (this.f11440a) {
            i = this.f11456q;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final long zzwd() {
        long j;
        m4261a();
        synchronized (this.f11440a) {
            j = this.f11455p;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final JSONObject zzwe() {
        JSONObject jSONObject;
        m4261a();
        synchronized (this.f11440a) {
            jSONObject = this.f11459t;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final void zzwf() {
        m4261a();
        synchronized (this.f11440a) {
            this.f11459t = new JSONObject();
            if (this.f11446g != null) {
                this.f11446g.remove("native_advanced_settings");
                this.f11446g.apply();
            }
            new Bundle().putString("native_advanced_settings", "{}");
            m4258c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavu
    public final String zzwg() {
        String str;
        m4261a();
        synchronized (this.f11440a) {
            str = this.f11462w;
        }
        return str;
    }
}
