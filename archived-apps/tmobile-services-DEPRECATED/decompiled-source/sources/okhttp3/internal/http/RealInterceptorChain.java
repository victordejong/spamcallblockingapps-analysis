package okhttp3.internal.http;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020!\u0012\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b3\u00104J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\t\u0010\nJM\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u0005H��¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010 \u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0007R\u001c\u0010\u0003\u001a\u00020!8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\"\u001a\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001c\u0010\u0006\u001a\u00020\u00058��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0006\u0010&\u001a\u0004\b'\u0010\u0007R\u001e\u0010\r\u001a\u0004\u0018\u00010\f8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010&R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001c\u0010\u0010\u001a\u00020\u00058��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010&\u001a\u0004\b/\u0010\u0007R\u001c\u0010\u000f\u001a\u00020\u000e8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u00100\u001a\u0004\b1\u0010\u0018R\u001c\u0010\u0011\u001a\u00020\u00058��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010&\u001a\u0004\b2\u0010\u0007¨\u00065"}, d2 = {"Lokhttp3/internal/http/RealInterceptorChain;", "okhttp3/Interceptor$Chain", "Lokhttp3/Call;", "call", "()Lokhttp3/Call;", "", "connectTimeoutMillis", "()I", "Lokhttp3/Connection;", "connection", "()Lokhttp3/Connection;", FirebaseAnalytics.Param.INDEX, "Lokhttp3/internal/connection/Exchange;", "exchange", "Lokhttp3/Request;", "request", "readTimeoutMillis", "writeTimeoutMillis", "copy$okhttp", "(ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)Lokhttp3/internal/http/RealInterceptorChain;", "copy", "Lokhttp3/Response;", "proceed", "(Lokhttp3/Request;)Lokhttp3/Response;", "()Lokhttp3/Request;", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "Lokhttp3/Interceptor$Chain;", "withConnectTimeout", "(ILjava/util/concurrent/TimeUnit;)Lokhttp3/Interceptor$Chain;", "withReadTimeout", "withWriteTimeout", "Lokhttp3/internal/connection/RealCall;", "Lokhttp3/internal/connection/RealCall;", "getCall$okhttp", "()Lokhttp3/internal/connection/RealCall;", "calls", "I", "getConnectTimeoutMillis$okhttp", "Lokhttp3/internal/connection/Exchange;", "getExchange$okhttp", "()Lokhttp3/internal/connection/Exchange;", "", "Lokhttp3/Interceptor;", "interceptors", "Ljava/util/List;", "getReadTimeoutMillis$okhttp", "Lokhttp3/Request;", "getRequest$okhttp", "getWriteTimeoutMillis$okhttp", "<init>", "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;III)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/RealInterceptorChain.class */
public final class RealInterceptorChain implements Interceptor.Chain {
    @NotNull
    private final RealCall call;
    private int calls;
    private final int connectTimeoutMillis;
    @Nullable
    private final Exchange exchange;
    private final int index;
    private final List<Interceptor> interceptors;
    private final int readTimeoutMillis;
    @NotNull
    private final Request request;
    private final int writeTimeoutMillis;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull RealCall call, @NotNull List<? extends Interceptor> interceptors, int i, @Nullable Exchange exchange, @NotNull Request request, int i2, int i3, int i4) {
        Intrinsics.m1830e(call, "call");
        Intrinsics.m1830e(interceptors, "interceptors");
        Intrinsics.m1830e(request, "request");
        this.call = call;
        this.interceptors = interceptors;
        this.index = i;
        this.exchange = exchange;
        this.request = request;
        this.connectTimeoutMillis = i2;
        this.readTimeoutMillis = i3;
        this.writeTimeoutMillis = i4;
    }

    public static /* synthetic */ RealInterceptorChain copy$okhttp$default(RealInterceptorChain realInterceptorChain, int i, Exchange exchange, Request request, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = realInterceptorChain.index;
        }
        if ((i5 & 2) != 0) {
            exchange = realInterceptorChain.exchange;
        }
        if ((i5 & 4) != 0) {
            request = realInterceptorChain.request;
        }
        if ((i5 & 8) != 0) {
            i2 = realInterceptorChain.connectTimeoutMillis;
        }
        if ((i5 & 16) != 0) {
            i3 = realInterceptorChain.readTimeoutMillis;
        }
        if ((i5 & 32) != 0) {
            i4 = realInterceptorChain.writeTimeoutMillis;
        }
        return realInterceptorChain.copy$okhttp(i, exchange, request, i2, i3, i4);
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Call call() {
        return this.call;
    }

    @Override // okhttp3.Interceptor.Chain
    public int connectTimeoutMillis() {
        return this.connectTimeoutMillis;
    }

    @Override // okhttp3.Interceptor.Chain
    @Nullable
    public Connection connection() {
        Exchange exchange = this.exchange;
        return exchange != null ? exchange.getConnection$okhttp() : null;
    }

    @NotNull
    public final RealInterceptorChain copy$okhttp(int i, @Nullable Exchange exchange, @NotNull Request request, int i2, int i3, int i4) {
        Intrinsics.m1830e(request, "request");
        return new RealInterceptorChain(this.call, this.interceptors, i, exchange, request, i2, i3, i4);
    }

    @NotNull
    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final int getConnectTimeoutMillis$okhttp() {
        return this.connectTimeoutMillis;
    }

    @Nullable
    public final Exchange getExchange$okhttp() {
        return this.exchange;
    }

    public final int getReadTimeoutMillis$okhttp() {
        return this.readTimeoutMillis;
    }

    @NotNull
    public final Request getRequest$okhttp() {
        return this.request;
    }

    public final int getWriteTimeoutMillis$okhttp() {
        return this.writeTimeoutMillis;
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Response proceed(@NotNull Request request) throws IOException {
        Intrinsics.m1830e(request, "request");
        boolean z = false;
        if (this.index < this.interceptors.size()) {
            this.calls++;
            Exchange exchange = this.exchange;
            if (exchange != null) {
                if (exchange.getFinder$okhttp().sameHostAndPort(request.url())) {
                    if (!(this.calls == 1)) {
                        throw new IllegalStateException(("network interceptor " + this.interceptors.get(this.index - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.interceptors.get(this.index - 1) + " must retain the same host and port").toString());
                }
            }
            RealInterceptorChain copy$okhttp$default = copy$okhttp$default(this, this.index + 1, null, request, 0, 0, 0, 58, null);
            Interceptor interceptor = this.interceptors.get(this.index);
            Response intercept = interceptor.intercept(copy$okhttp$default);
            if (intercept != null) {
                if (this.exchange != null) {
                    if (!(this.index + 1 >= this.interceptors.size() || copy$okhttp$default.calls == 1)) {
                        throw new IllegalStateException(("network interceptor " + interceptor + " must call proceed() exactly once").toString());
                    }
                }
                if (intercept.body() != null) {
                    z = true;
                }
                if (z) {
                    return intercept;
                }
                throw new IllegalStateException(("interceptor " + interceptor + " returned a response with no body").toString());
            }
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // okhttp3.Interceptor.Chain
    public int readTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Request request() {
        return this.request;
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withConnectTimeout(int i, @NotNull TimeUnit unit) {
        Intrinsics.m1830e(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, Util.checkDuration("connectTimeout", i, unit), 0, 0, 55, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor".toString());
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withReadTimeout(int i, @NotNull TimeUnit unit) {
        Intrinsics.m1830e(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, 0, Util.checkDuration("readTimeout", i, unit), 0, 47, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor".toString());
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Interceptor.Chain withWriteTimeout(int i, @NotNull TimeUnit unit) {
        Intrinsics.m1830e(unit, "unit");
        if (this.exchange == null) {
            return copy$okhttp$default(this, 0, null, null, 0, 0, Util.checkDuration("writeTimeout", i, unit), 31, null);
        }
        throw new IllegalStateException("Timeouts can't be adjusted in a network interceptor".toString());
    }

    @Override // okhttp3.Interceptor.Chain
    public int writeTimeoutMillis() {
        return this.writeTimeoutMillis;
    }
}
