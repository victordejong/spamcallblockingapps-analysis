package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwh.class */
public final class zzcwh implements zzcty<JSONObject> {

    /* renamed from: a */
    private final Map<String, Object> f13986a;

    public zzcwh(Map<String, Object> map) {
        this.f13986a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", zzq.zzkq().zzi(this.f13986a));
        } catch (JSONException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzavs.zzed(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
