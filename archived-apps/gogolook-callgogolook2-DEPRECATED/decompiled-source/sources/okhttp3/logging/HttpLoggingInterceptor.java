package okhttp3.logging;

import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import p645m.AbstractC15174e;
import p645m.C15170c;
import p645m.C15179j;
/* loaded from: classes3-dex2jar.jar:okhttp3/logging/HttpLoggingInterceptor.class */
public final class HttpLoggingInterceptor implements Interceptor {
    public static final Charset UTF8 = Charset.forName("UTF-8");
    public volatile Set<String> headersToRedact;
    public volatile Level level;
    public final Logger logger;

    /* loaded from: classes3-dex2jar.jar:okhttp3/logging/HttpLoggingInterceptor$Level.class */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/logging/HttpLoggingInterceptor$Logger.class */
    public interface Logger {
        public static final Logger DEFAULT = new Logger() { // from class: okhttp3.logging.HttpLoggingInterceptor.Logger.1
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public void log(String str) {
                Platform.get().log(4, str, null);
            }
        };

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    public HttpLoggingInterceptor(Logger logger) {
        this.headersToRedact = Collections.emptySet();
        this.level = Level.NONE;
        this.logger = logger;
    }

    public static boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return str != null && !str.equalsIgnoreCase(HlsPlaylistParser.KEYFORMAT_IDENTITY) && !str.equalsIgnoreCase("gzip");
    }

    public static boolean isPlaintext(C15170c cVar) {
        try {
            C15170c cVar2 = new C15170c();
            cVar.m359a(cVar2, 0L, cVar.m348i() < 64 ? cVar.m348i() : 64L);
            for (int i = 0; i < 16; i++) {
                if (cVar2.mo292v()) {
                    return true;
                }
                int h = cVar2.m350h();
                if (Character.isISOControl(h) && !Character.isWhitespace(h)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Long l;
        Throwable th;
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z = true;
        boolean z2 = level == Level.BODY;
        boolean z3 = z2 || level == Level.HEADERS;
        RequestBody body = request.body();
        if (body == null) {
            z = false;
        }
        Connection connection = chain.connection();
        StringBuilder sb = new StringBuilder();
        sb.append("--> ");
        sb.append(request.method());
        sb.append(' ');
        sb.append(request.url());
        sb.append(connection != null ? " " + connection.protocol() : "");
        String sb2 = sb.toString();
        String str = sb2;
        if (!z3) {
            str = sb2;
            if (z) {
                str = sb2 + " (" + body.contentLength() + "-byte body)";
            }
        }
        this.logger.log(str);
        if (z3) {
            if (z) {
                if (body.contentType() != null) {
                    this.logger.log("Content-Type: " + body.contentType());
                }
                if (body.contentLength() != -1) {
                    this.logger.log("Content-Length: " + body.contentLength());
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (!"Content-Type".equalsIgnoreCase(name) && !"Content-Length".equalsIgnoreCase(name)) {
                    logHeader(headers, i);
                }
            }
            if (!z2 || !z) {
                this.logger.log("--> END " + request.method());
            } else if (bodyHasUnknownEncoding(request.headers())) {
                this.logger.log("--> END " + request.method() + " (encoded body omitted)");
            } else {
                C15170c cVar = new C15170c();
                body.writeTo(cVar);
                Charset charset = UTF8;
                MediaType contentType = body.contentType();
                if (contentType != null) {
                    charset = contentType.charset(UTF8);
                }
                this.logger.log("");
                if (isPlaintext(cVar)) {
                    this.logger.log(cVar.mo302a(charset));
                    this.logger.log("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
                } else {
                    this.logger.log("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                }
            }
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            long contentLength = body2.contentLength();
            String str2 = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
            Logger logger = this.logger;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("<-- ");
            sb3.append(proceed.code());
            sb3.append(proceed.message().isEmpty() ? "" : ' ' + proceed.message());
            sb3.append(' ');
            sb3.append(proceed.request().url());
            sb3.append(" (");
            sb3.append(millis);
            sb3.append("ms");
            sb3.append(!z3 ? UserProfile.CARD_CATE_SEPARATOR + str2 + " body" : "");
            sb3.append(')');
            logger.log(sb3.toString());
            if (z3) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    logHeader(headers2, i2);
                }
                if (!z2 || !HttpHeaders.hasBody(proceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyHasUnknownEncoding(proceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    AbstractC15174e source = body2.source();
                    source.request(Long.MAX_VALUE);
                    C15170c q = source.mo296q();
                    C15179j jVar = null;
                    if ("gzip".equalsIgnoreCase(headers2.get("Content-Encoding"))) {
                        l = Long.valueOf(q.m348i());
                        try {
                            jVar = new C15179j(q.clone());
                        } catch (Throwable th2) {
                            th = th2;
                        }
                        try {
                            q = new C15170c();
                            q.mo311a(jVar);
                            jVar.close();
                        } catch (Throwable th3) {
                            th = th3;
                            if (jVar != null) {
                                jVar.close();
                            }
                            throw th;
                        }
                    } else {
                        l = null;
                    }
                    Charset charset2 = UTF8;
                    MediaType contentType2 = body2.contentType();
                    if (contentType2 != null) {
                        charset2 = contentType2.charset(UTF8);
                    }
                    if (!isPlaintext(q)) {
                        this.logger.log("");
                        this.logger.log("<-- END HTTP (binary " + q.m348i() + "-byte body omitted)");
                        return proceed;
                    }
                    if (contentLength != 0) {
                        this.logger.log("");
                        this.logger.log(q.clone().mo302a(charset2));
                    }
                    if (l != null) {
                        this.logger.log("<-- END HTTP (" + q.m348i() + "-byte, " + l + "-gzipped-byte body)");
                    } else {
                        this.logger.log("<-- END HTTP (" + q.m348i() + "-byte body)");
                    }
                }
            }
            return proceed;
        } catch (Exception e) {
            this.logger.log("<-- HTTP FAILED: " + e);
            throw e;
        }
    }

    public final void logHeader(Headers headers, int i) {
        String value = this.headersToRedact.contains(headers.name(i)) ? "██" : headers.value(i);
        Logger logger = this.logger;
        logger.log(headers.name(i) + ": " + value);
    }

    public HttpLoggingInterceptor setLevel(Level level) {
        if (level != null) {
            this.level = level;
            return this;
        }
        throw new NullPointerException("level == null. Use Level.NONE instead.");
    }
}
