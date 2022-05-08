package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import com.google.gson.Gson;
import com.zendesk.logger.Logger;
import java.io.Closeable;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Type;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/Streams.class */
public class Streams {

    /* loaded from: classes3-dex2jar.jar:zendesk/support/Streams$Use.class */
    public interface Use<R, P extends Closeable> {
        R use(P p) throws Exception;
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static <T> T fromJson(final Gson gson, Source source, final Type type) {
        return (T) use(toReader(source), new Use<T, Reader>() { // from class: zendesk.support.Streams.1
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            public T use(Reader reader) throws Exception {
                return Gson.this.fromJson(reader, type);
            }
        });
    }

    public static void toJson(final Gson gson, Sink sink, final Object obj) {
        use(toWriter(sink), new Use<Void, Writer>() { // from class: zendesk.support.Streams.2
            public Void use(Writer writer) throws Exception {
                Gson.this.toJson(obj, writer);
                return null;
            }
        });
    }

    public static Reader toReader(Source source) {
        return source instanceof BufferedSource ? new InputStreamReader(((BufferedSource) source).inputStream()) : new InputStreamReader(Okio.buffer(source).inputStream());
    }

    public static Writer toWriter(Sink sink) {
        return sink instanceof BufferedSink ? new OutputStreamWriter(((BufferedSink) sink).outputStream()) : new OutputStreamWriter(Okio.buffer(sink).outputStream());
    }

    /* JADX WARN: Finally extract failed */
    public static <R, P extends Closeable> R use(@Nullable P p, @NonNull Use<R, P> use) {
        try {
            if (p == null) {
                return null;
            }
            try {
                R use2 = use.use(p);
                closeQuietly(p);
                return use2;
            } catch (Exception e) {
                Logger.m294i("Streams", "Error using stream", e, new Object[0]);
                closeQuietly(p);
                return null;
            }
        } catch (Throwable th) {
            closeQuietly(p);
            throw th;
        }
    }
}
