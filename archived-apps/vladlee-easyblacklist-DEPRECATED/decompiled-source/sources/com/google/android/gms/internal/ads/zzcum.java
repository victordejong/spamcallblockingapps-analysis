package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcum.class */
public final class zzcum implements zzcty<JSONObject> {

    /* renamed from: a */
    private final AdvertisingIdClient.Info f13917a;

    /* renamed from: b */
    private final String f13918b;

    public zzcum(AdvertisingIdClient.Info info, String str) {
        this.f13917a = info;
        this.f13918b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzaxs.zzb(jSONObject, "pii");
            if (this.f13917a == null || TextUtils.isEmpty(this.f13917a.getId())) {
                zzb.put("pdid", this.f13918b);
                zzb.put("pdidtype", "ssaid");
                return;
            }
            zzb.put("rdid", this.f13917a.getId());
            zzb.put("is_lat", this.f13917a.isLimitAdTrackingEnabled());
            zzb.put("idtype", "adid");
        } catch (JSONException e) {
            zzavs.zza("Failed putting Ad ID.", e);
        }
    }
}
