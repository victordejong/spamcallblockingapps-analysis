package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczn.class */
public final class zzczn {
    public final int responseCode;
    public final String zzbzo;
    public final List<String> zzdbt;
    public final String zzdlk;
    public final long zzfwt;
    public final int zzgmb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzczn(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        int i = 0;
        long j = 0;
        String str2 = "";
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = zzaxs.zza(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.zzdbt = emptyList;
        this.zzgmb = i;
        this.zzbzo = str;
        this.zzdlk = str2;
        this.responseCode = i2;
        this.zzfwt = j;
    }
}
