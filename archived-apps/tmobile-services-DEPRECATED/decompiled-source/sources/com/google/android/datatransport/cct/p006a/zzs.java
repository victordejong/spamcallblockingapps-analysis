package com.google.android.datatransport.cct.p006a;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.io.IOException;
import java.io.Reader;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.a.zzs */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzs.class */
public abstract class zzs {
    @NonNull
    /* renamed from: b */
    public static zzs m15488b(@NonNull Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new zzl(Long.parseLong(jsonReader.nextString())) : new zzl(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: a */
    public abstract long mo15489a();
}
