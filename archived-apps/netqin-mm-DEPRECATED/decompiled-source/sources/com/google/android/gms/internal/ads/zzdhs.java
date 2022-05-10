package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhs.class */
public final class zzdhs implements zzdgu<JSONObject> {

    /* renamed from: a */
    public final JSONObject f27346a;

    public zzdhs(JSONObject jSONObject) {
        this.f27346a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            JSONObject a = zzbao.m15955a(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f27346a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                a.put(next, jSONObject2.get(next));
            }
        } catch (JSONException e) {
            zzayp.m16153g("Failed putting app indexing json.");
        }
    }
}
