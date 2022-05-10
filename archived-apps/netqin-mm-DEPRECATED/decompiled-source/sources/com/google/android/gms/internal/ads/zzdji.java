package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdji.class */
public final class zzdji implements zzdgu<JSONObject> {

    /* renamed from: a */
    public final Map<String, Object> f27410a;

    public zzdji(Map<String, Object> map) {
        this.f27410a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzp.m17969c().m16118a(this.f27410a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzayp.m16153g(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
