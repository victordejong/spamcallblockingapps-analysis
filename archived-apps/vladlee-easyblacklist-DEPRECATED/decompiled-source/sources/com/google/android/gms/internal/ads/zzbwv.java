package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwv.class */
public final class zzbwv extends zzbww {

    /* renamed from: b */
    private final JSONObject f12599b;

    /* renamed from: c */
    private final boolean f12600c;

    /* renamed from: d */
    private final boolean f12601d;

    /* renamed from: e */
    private final boolean f12602e;

    /* renamed from: f */
    private final boolean f12603f;

    public zzbwv(zzczl zzczlVar, JSONObject jSONObject) {
        super(zzczlVar);
        this.f12599b = zzaxs.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f12600c = zzaxs.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.f12601d = zzaxs.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f12602e = zzaxs.zza(false, jSONObject, "enable_omid");
        boolean z = false;
        if (jSONObject != null) {
            z = false;
            if (jSONObject.optJSONObject("overlay") != null) {
                z = true;
            }
        }
        this.f12603f = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final boolean zzaiw() {
        return this.f12602e;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final JSONObject zzajl() {
        JSONObject jSONObject = this.f12599b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f12604a.zzdks);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final boolean zzajm() {
        return this.f12603f;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final boolean zzajn() {
        return this.f12600c;
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final boolean zzajo() {
        return this.f12601d;
    }
}
