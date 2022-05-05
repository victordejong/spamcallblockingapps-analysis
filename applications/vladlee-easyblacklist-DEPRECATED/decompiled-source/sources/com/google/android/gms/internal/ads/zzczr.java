package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczr.class */
public final class zzczr {
    public final List<zzczl> zzgme;
    public final zzczn zzgmf;
    public final List<zzczq> zzgmg;

    private zzczr(JsonReader jsonReader) {
        List<zzczl> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzczn zzcznVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("responses".equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(nextName2)) {
                        emptyList = new ArrayList<>();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new zzczl(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        zzcznVar = new zzczn(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                zzcznVar = zzcznVar;
                emptyList = emptyList;
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (true) {
                    emptyList = emptyList;
                    zzcznVar = zzcznVar;
                    if (!jsonReader.hasNext()) {
                        break;
                    }
                    jsonReader.beginObject();
                    String str = null;
                    Map<String, String> map = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (AppMeasurementSdk.ConditionalUserProperty.NAME.equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            map = zzaxs.zzb(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new zzczq(str, map));
                    }
                    jsonReader.endObject();
                }
            }
            jsonReader.endArray();
        }
        this.zzgmg = arrayList;
        this.zzgme = emptyList;
        this.zzgmf = zzcznVar == null ? new zzczn(new JsonReader(new StringReader("{}"))) : zzcznVar;
    }

    public static zzczr zza(Reader reader) {
        try {
            try {
                zzczr zzczrVar = new zzczr(new JsonReader(reader));
                IOUtils.closeQuietly(reader);
                return zzczrVar;
            } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
                throw new zzczm("unable to parse ServerResponse", e);
            }
        } catch (Throwable th) {
            IOUtils.closeQuietly(reader);
            throw th;
        }
    }
}
