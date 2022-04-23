package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczp.class */
public final class zzczp implements zzaxx {

    /* renamed from: a */
    private final JSONObject f14089a;
    public final String zzdhr;
    public final String zzdht;
    public final JSONObject zzfka;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzczp(JsonReader jsonReader) {
        this.f14089a = zzaxs.zzc(jsonReader);
        this.zzdht = this.f14089a.optString("ad_html", null);
        this.zzdhr = this.f14089a.optString("ad_base_url", null);
        this.zzfka = this.f14089a.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza(JsonWriter jsonWriter) {
        zzaxs.zza(jsonWriter, this.f14089a);
    }
}
