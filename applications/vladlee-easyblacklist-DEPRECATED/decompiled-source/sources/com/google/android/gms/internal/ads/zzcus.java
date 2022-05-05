package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcus.class */
public final class zzcus implements zzcty<JSONObject> {

    /* renamed from: a */
    private final String f13929a;

    public zzcus(String str) {
        this.f13929a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f13929a);
        } catch (JSONException e) {
            zzavs.zza("Failed putting Ad ID.", e);
        }
    }
}
