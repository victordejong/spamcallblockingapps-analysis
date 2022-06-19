package com.google.android.datatransport.cct.p020f;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;
/* renamed from: com.google.android.datatransport.cct.f.n */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/n.class */
public abstract class AbstractC0732n {
    /* renamed from: a */
    static AbstractC0732n m3859a(long j) {
        return new h(j);
    }

    /* renamed from: b */
    public static AbstractC0732n m3858b(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? m3859a(Long.parseLong(jsonReader.nextString())) : m3859a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: c */
    public abstract long m3857c();
}
