package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbze.class */
public final class zzbze {

    /* renamed from: a */
    private final Executor f12759a;

    /* renamed from: b */
    private final zzbyu f12760b;

    public zzbze(Executor executor, zzbyu zzbyuVar) {
        this.f12759a = executor;
        this.f12760b = zzbyuVar;
    }

    public final zzdhe<List<zzbzf>> zzg(JSONObject jSONObject, String str) {
        zzdhe zzdheVar;
        final String optString;
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return zzdgs.zzaj(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = optJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (!(optJSONObject == null || (optString = optJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.NAME)) == null)) {
                String optString2 = optJSONObject.optString("type");
                char c = "string".equals(optString2) ? (char) 1 : "image".equals(optString2) ? (char) 2 : (char) 0;
                if (c == 1) {
                    zzdheVar = zzdgs.zzaj(new zzbzf(optString, optJSONObject.optString("string_value")));
                } else if (c == 2) {
                    zzdheVar = zzdgs.zzb(this.f12760b.zzc(optJSONObject, "image_value"), new zzded(optString) { // from class: com.google.android.gms.internal.ads.ox

                        /* renamed from: a */
                        private final String f10308a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10308a = optString;
                        }

                        @Override // com.google.android.gms.internal.ads.zzded
                        public final Object apply(Object obj) {
                            return new zzbzf(this.f10308a, (zzabu) obj);
                        }
                    }, this.f12759a);
                }
                arrayList.add(zzdheVar);
            }
            zzdheVar = zzdgs.zzaj(null);
            arrayList.add(zzdheVar);
        }
        return zzdgs.zzb(zzdgs.zzg(arrayList), C2128ow.f10307a, this.f12759a);
    }
}
