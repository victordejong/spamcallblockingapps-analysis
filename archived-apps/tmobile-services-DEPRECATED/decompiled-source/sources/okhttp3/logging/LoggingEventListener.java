package okhttp3.logging;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001:\u0001UB\u0011\b\u0002\u0012\u0006\u0010O\u001a\u00020N¢\u0006\u0004\bS\u0010TJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\fJ\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\fJ1\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ9\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ'\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010$\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b$\u0010#J-\u0010*\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010,\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00062\u0006\u0010.\u001a\u00020%H\u0002¢\u0006\u0004\b/\u00100J-\u00104\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00102\u001a\u0002012\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u00160'H\u0016¢\u0006\u0004\b4\u00105J\u001f\u00106\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b6\u00107J\u001f\u0010:\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b<\u0010\fJ\u001f\u0010=\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b=\u0010\u0011J\u001f\u0010@\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u0017\u0010B\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\bB\u0010\fJ\u001f\u0010C\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\bC\u0010;J\u0017\u0010D\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\bD\u0010\fJ\u001f\u0010E\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\bE\u0010\u0011J\u001f\u0010F\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\bF\u0010\bJ\u0017\u0010G\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\bG\u0010\fJ\u001f\u0010H\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\bH\u0010\bJ!\u0010K\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010J\u001a\u0004\u0018\u00010IH\u0016¢\u0006\u0004\bK\u0010LJ\u0017\u0010M\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\bM\u0010\fR\u0016\u0010O\u001a\u00020N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010Q\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010R¨\u0006V"}, d2 = {"Lokhttp3/logging/LoggingEventListener;", "Lokhttp3/EventListener;", "Lokhttp3/Call;", "call", "Lokhttp3/Response;", "cachedResponse", "", "cacheConditionalHit", "(Lokhttp3/Call;Lokhttp3/Response;)V", "response", "cacheHit", "cacheMiss", "(Lokhttp3/Call;)V", "callEnd", "Ljava/io/IOException;", "ioe", "callFailed", "(Lokhttp3/Call;Ljava/io/IOException;)V", "callStart", "canceled", "Ljava/net/InetSocketAddress;", "inetSocketAddress", "Ljava/net/Proxy;", "proxy", "Lokhttp3/Protocol;", "protocol", "connectEnd", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V", "connectFailed", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V", "connectStart", "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V", "Lokhttp3/Connection;", "connection", "connectionAcquired", "(Lokhttp3/Call;Lokhttp3/Connection;)V", "connectionReleased", "", "domainName", "", "Ljava/net/InetAddress;", "inetAddressList", "dnsEnd", "(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V", "dnsStart", "(Lokhttp3/Call;Ljava/lang/String;)V", "message", "logWithTime", "(Ljava/lang/String;)V", "Lokhttp3/HttpUrl;", "url", "proxies", "proxySelectEnd", "(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V", "proxySelectStart", "(Lokhttp3/Call;Lokhttp3/HttpUrl;)V", "", "byteCount", "requestBodyEnd", "(Lokhttp3/Call;J)V", "requestBodyStart", "requestFailed", "Lokhttp3/Request;", "request", "requestHeadersEnd", "(Lokhttp3/Call;Lokhttp3/Request;)V", "requestHeadersStart", "responseBodyEnd", "responseBodyStart", "responseFailed", "responseHeadersEnd", "responseHeadersStart", "satisfactionFailure", "Lokhttp3/Handshake;", "handshake", "secureConnectEnd", "(Lokhttp3/Call;Lokhttp3/Handshake;)V", "secureConnectStart", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "startNs", "J", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "Factory", "okhttp-logging-interceptor"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/logging/LoggingEventListener.class */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lokhttp3/logging/LoggingEventListener$Factory;", "okhttp3/EventListener$Factory", "Lokhttp3/Call;", "call", "Lokhttp3/EventListener;", "create", "(Lokhttp3/Call;)Lokhttp3/EventListener;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "okhttp-logging-interceptor"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/logging/LoggingEventListener$Factory.class */
    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        @JvmOverloads
        public Factory() {
            this(null, 1, null);
        }

        @JvmOverloads
        public Factory(@NotNull HttpLoggingInterceptor.Logger logger) {
            Intrinsics.m1830e(logger, "logger");
            this.logger = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }

        @Override // okhttp3.EventListener.Factory
        @NotNull
        public EventListener create(@NotNull Call call) {
            Intrinsics.m1830e(call, "call");
            return new LoggingEventListener(this.logger, null);
        }
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        HttpLoggingInterceptor.Logger logger = this.logger;
        logger.log('[' + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(@NotNull Call call, @NotNull Response cachedResponse) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(cachedResponse, "cachedResponse");
        logWithTime("cacheConditionalHit: " + cachedResponse);
    }

    @Override // okhttp3.EventListener
    public void cacheHit(@NotNull Call call, @NotNull Response response) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(response, "response");
        logWithTime("cacheHit: " + response);
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void callEnd(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public void callFailed(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(ioe, "ioe");
        logWithTime("callFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void callStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        this.startNs = System.nanoTime();
        logWithTime("callStart: " + call.request());
    }

    @Override // okhttp3.EventListener
    public void canceled(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public void connectEnd(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(inetSocketAddress, "inetSocketAddress");
        Intrinsics.m1830e(proxy, "proxy");
        logWithTime("connectEnd: " + protocol);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException ioe) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(inetSocketAddress, "inetSocketAddress");
        Intrinsics.m1830e(proxy, "proxy");
        Intrinsics.m1830e(ioe, "ioe");
        logWithTime("connectFailed: " + protocol + ' ' + ioe);
    }

    @Override // okhttp3.EventListener
    public void connectStart(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(inetSocketAddress, "inetSocketAddress");
        Intrinsics.m1830e(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(connection, "connection");
        logWithTime("connectionAcquired: " + connection);
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(@NotNull Call call, @NotNull Connection connection) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(@NotNull Call call, @NotNull String domainName, @NotNull List<? extends InetAddress> inetAddressList) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(domainName, "domainName");
        Intrinsics.m1830e(inetAddressList, "inetAddressList");
        logWithTime("dnsEnd: " + inetAddressList);
    }

    @Override // okhttp3.EventListener
    public void dnsStart(@NotNull Call call, @NotNull String domainName) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(domainName, "domainName");
        logWithTime("dnsStart: " + domainName);
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(@NotNull Call call, @NotNull HttpUrl url, @NotNull List<? extends Proxy> proxies) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(url, "url");
        Intrinsics.m1830e(proxies, "proxies");
        logWithTime("proxySelectEnd: " + proxies);
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(@NotNull Call call, @NotNull HttpUrl url) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(url, "url");
        logWithTime("proxySelectStart: " + url);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(@NotNull Call call, long j) {
        Intrinsics.m1830e(call, "call");
        logWithTime("requestBodyEnd: byteCount=" + j);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void requestFailed(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(ioe, "ioe");
        logWithTime("requestFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(@NotNull Call call, @NotNull Request request) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(request, "request");
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(@NotNull Call call, long j) {
        Intrinsics.m1830e(call, "call");
        logWithTime("responseBodyEnd: byteCount=" + j);
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void responseFailed(@NotNull Call call, @NotNull IOException ioe) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(ioe, "ioe");
        logWithTime("responseFailed: " + ioe);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(@NotNull Call call, @NotNull Response response) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(response, "response");
        logWithTime("responseHeadersEnd: " + response);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(@NotNull Call call, @NotNull Response response) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(response, "response");
        logWithTime("satisfactionFailure: " + response);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(@NotNull Call call, @Nullable Handshake handshake) {
        Intrinsics.m1830e(call, "call");
        logWithTime("secureConnectEnd: " + handshake);
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(@NotNull Call call) {
        Intrinsics.m1830e(call, "call");
        logWithTime("secureConnectStart");
    }
}
