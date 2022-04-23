package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvo.class */
public final class zzcvo implements zzcty<JSONObject> {

    /* renamed from: a */
    private final Location f13963a;

    public zzcvo(Location location) {
        this.f13963a = location;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.f13963a != null) {
                JSONObject jSONObject3 = new JSONObject();
                float accuracy = this.f13963a.getAccuracy();
                long time = this.f13963a.getTime();
                long latitude = (long) (this.f13963a.getLatitude() * 1.0E7d);
                jSONObject3.put("radius", Float.valueOf(accuracy * 1000.0f));
                jSONObject3.put("lat", Long.valueOf(latitude));
                jSONObject3.put("long", Long.valueOf((long) (this.f13963a.getLongitude() * 1.0E7d)));
                jSONObject3.put("time", Long.valueOf(time * 1000));
                jSONObject2.put("uule", jSONObject3);
            }
        } catch (JSONException e) {
            zzavs.zza("Failed adding location to the request JSON.", e);
        }
    }
}
