package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.zzq;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcps.class */
public final class zzcps {
    public final String zzgeg;
    public String zzgeh;

    public zzcps(JsonReader jsonReader) {
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str2 = nextName == null ? "" : nextName;
            char c = 65535;
            if (str2.hashCode() == -995427962 && str2.equals("params")) {
                c = 0;
            }
            if (c != 0) {
                jsonReader.skipValue();
            } else {
                str = jsonReader.nextString();
            }
        }
        this.zzgeg = str;
        jsonReader.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzcps m3707a(Bundle bundle) {
        try {
            this.zzgeh = zzq.zzkq().zzd(bundle).toString();
        } catch (JSONException e) {
            this.zzgeh = "{}";
        }
        return this;
    }
}
