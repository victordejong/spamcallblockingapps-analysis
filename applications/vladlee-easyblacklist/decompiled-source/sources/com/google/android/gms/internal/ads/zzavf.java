package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavf.class */
public final class zzavf {

    /* renamed from: a */
    private final long f11411a;

    /* renamed from: b */
    private final List<String> f11412b = new ArrayList();

    /* renamed from: c */
    private final List<String> f11413c = new ArrayList();

    /* renamed from: d */
    private final Map<String, zzakx> f11414d = new HashMap();

    /* renamed from: e */
    private String f11415e;

    /* renamed from: f */
    private String f11416f;

    /* renamed from: g */
    private JSONObject f11417g;

    /* renamed from: h */
    private boolean f11418h;

    public zzavf(String str, long j) {
        JSONObject optJSONObject;
        this.f11418h = false;
        this.f11416f = str;
        this.f11411a = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f11417g = new JSONObject(str);
                if (this.f11417g.optInt("status", -1) != 1) {
                    this.f11418h = false;
                    zzavs.zzez("App settings could not be fetched successfully.");
                    return;
                }
                this.f11418h = true;
                this.f11415e = this.f11417g.optString("app_id");
                JSONArray optJSONArray = this.f11417g.optJSONArray("ad_unit_id_settings");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject = optJSONArray.getJSONObject(i);
                        String optString = jSONObject.optString("format");
                        String optString2 = jSONObject.optString("ad_unit_id");
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if ("interstitial".equalsIgnoreCase(optString)) {
                                this.f11413c.add(optString2);
                            } else if ("rewarded".equalsIgnoreCase(optString) && (optJSONObject = jSONObject.optJSONObject("mediation_config")) != null) {
                                this.f11414d.put(optString2, new zzakx(optJSONObject));
                            }
                        }
                    }
                }
                JSONArray optJSONArray2 = this.f11417g.optJSONArray("persistable_banner_ad_unit_ids");
                if (optJSONArray2 != null) {
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        this.f11412b.add(optJSONArray2.optString(i2));
                    }
                }
            } catch (JSONException e) {
                zzavs.zzd("Exception occurred while processing app setting json", e);
                zzq.zzku().zza(e, "AppSettings.parseAppSettingsJson");
            }
        }
    }

    public final long zzvj() {
        return this.f11411a;
    }

    public final boolean zzvk() {
        return this.f11418h;
    }

    public final String zzvl() {
        return this.f11416f;
    }

    public final String zzvm() {
        return this.f11415e;
    }

    public final Map<String, zzakx> zzvn() {
        return this.f11414d;
    }

    public final JSONObject zzvo() {
        return this.f11417g;
    }
}
