package p081h.p203i.p204a.p206b.p207i.p208f;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.Reader;
/* renamed from: h.i.a.b.i.f.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/n.class */
public abstract class AbstractC6541n {
    /* renamed from: a */
    public static AbstractC6541n m22364a(long j) {
        return new C6529h(j);
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC6541n m22363a(@NonNull Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? m22364a(Long.parseLong(jsonReader.nextString())) : m22364a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: a */
    public abstract long mo22365a();
}
