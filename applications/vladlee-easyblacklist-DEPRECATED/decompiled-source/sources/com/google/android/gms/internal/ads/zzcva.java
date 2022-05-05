package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcva.class */
public final class zzcva implements zzcty<JSONObject> {

    /* renamed from: a */
    private JSONObject f13939a;

    public zzcva(JSONObject jSONObject) {
        this.f13939a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f13939a);
        } catch (JSONException e) {
            zzavs.zzed("Unable to get cache_state");
        }
    }
}
