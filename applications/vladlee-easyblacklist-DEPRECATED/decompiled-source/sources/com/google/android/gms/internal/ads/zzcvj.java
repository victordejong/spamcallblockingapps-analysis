package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvj.class */
public final class zzcvj implements zzcty<JSONObject> {

    /* renamed from: a */
    private String f13954a;

    /* renamed from: b */
    private String f13955b;

    public zzcvj(String str, String str2) {
        this.f13954a = str;
        this.f13955b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzaxs.zzb(jSONObject, "pii");
            zzb.put("doritos", this.f13954a);
            zzb.put("doritos_v2", this.f13955b);
        } catch (JSONException e) {
            zzavs.zzed("Failed putting doritos string.");
        }
    }
}
