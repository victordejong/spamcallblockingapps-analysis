package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdic.class */
public final class zzdic implements zzdgu<JSONObject> {

    /* renamed from: a */
    public JSONObject f27362a;

    public zzdic(JSONObject jSONObject) {
        this.f27362a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f27362a);
        } catch (JSONException e) {
            zzayp.m16153g("Unable to get cache_state");
        }
    }
}
