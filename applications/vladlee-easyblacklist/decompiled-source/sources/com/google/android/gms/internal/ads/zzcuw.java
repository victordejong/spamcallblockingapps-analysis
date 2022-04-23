package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuw.class */
public final class zzcuw implements zzcty<JSONObject> {

    /* renamed from: a */
    private final JSONObject f13934a;

    public zzcuw(JSONObject jSONObject) {
        this.f13934a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzaxs.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f13934a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                zzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            zzavs.zzed("Failed putting app indexing json.");
        }
    }
}
