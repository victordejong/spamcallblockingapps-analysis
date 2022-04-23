package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvs.class */
public final class zzcvs implements zzcty<JSONObject> {

    /* renamed from: a */
    private Bundle f13968a;

    public zzcvs(Bundle bundle) {
        this.f13968a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f13968a != null) {
            try {
                zzaxs.zzb(zzaxs.zzb(jSONObject2, "device"), "play_store").put("parental_controls", zzq.zzkq().zzd(this.f13968a));
            } catch (JSONException e) {
                zzavs.zzed("Failed putting parental controls bundle.");
            }
        }
    }
}
