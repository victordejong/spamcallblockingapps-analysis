package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiq.class */
public final class zzdiq implements zzdgu<JSONObject> {

    /* renamed from: a */
    public final Location f27387a;

    public zzdiq(Location location) {
        this.f27387a = location;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.f27387a != null) {
                JSONObject jSONObject3 = new JSONObject();
                float accuracy = this.f27387a.getAccuracy();
                long time = this.f27387a.getTime();
                long latitude = (long) (this.f27387a.getLatitude() * 1.0E7d);
                jSONObject3.put("radius", Float.valueOf(accuracy * 1000.0f));
                jSONObject3.put("lat", Long.valueOf(latitude));
                jSONObject3.put("long", Long.valueOf((long) (this.f27387a.getLongitude() * 1.0E7d)));
                jSONObject3.put("time", Long.valueOf(time * 1000));
                jSONObject2.put("uule", jSONObject3);
            }
        } catch (JSONException e) {
            zzayp.m16154e("Failed adding location to the request JSON.", e);
        }
    }
}
