package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdnw.class */
public final class zzdnw {

    /* renamed from: a */
    public final List<String> f27611a;

    /* renamed from: b */
    public final String f27612b;

    /* renamed from: c */
    public final int f27613c;

    /* renamed from: d */
    public final String f27614d;

    /* renamed from: e */
    public final int f27615e;

    /* renamed from: f */
    public final long f27616f;

    /* renamed from: g */
    public final zzdnx f27617g;

    public zzdnw(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        String str2 = "";
        zzdnx zzdnxVar = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = zzbao.m15964a(jsonReader);
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
                if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23855m4)).booleanValue() || !"public_error".equals(nextName) || jsonReader.peek() != JsonToken.BEGIN_OBJECT) {
                    jsonReader.skipValue();
                } else {
                    zzdnxVar = new zzdnx(jsonReader);
                }
            }
        }
        jsonReader.endObject();
        this.f27611a = emptyList;
        this.f27613c = i;
        this.f27612b = str;
        this.f27614d = str2;
        this.f27615e = i2;
        this.f27616f = j;
        this.f27617g = zzdnxVar;
    }
}
