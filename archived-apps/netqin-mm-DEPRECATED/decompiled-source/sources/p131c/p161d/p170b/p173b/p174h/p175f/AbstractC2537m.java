package p131c.p161d.p170b.p173b.p174h.p175f;

import android.util.JsonReader;
import android.util.JsonToken;
import java.io.IOException;
import java.io.Reader;
/* renamed from: c.d.b.b.h.f.m */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/m.class */
public abstract class AbstractC2537m {
    /* renamed from: a */
    public static AbstractC2537m m29564a(long j) {
        return new C2528h(j);
    }

    /* renamed from: a */
    public static AbstractC2537m m29563a(Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (!jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    jsonReader.skipValue();
                } else if (jsonReader.peek() == JsonToken.STRING) {
                    AbstractC2537m a = m29564a(Long.parseLong(jsonReader.nextString()));
                    jsonReader.close();
                    return a;
                } else {
                    AbstractC2537m a2 = m29564a(jsonReader.nextLong());
                    jsonReader.close();
                    return a2;
                }
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } catch (Throwable th) {
            jsonReader.close();
            throw th;
        }
    }

    /* renamed from: a */
    public abstract long mo29565a();
}
