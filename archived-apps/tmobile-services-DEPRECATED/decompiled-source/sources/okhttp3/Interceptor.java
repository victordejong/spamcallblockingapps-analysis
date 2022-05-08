package okhttp3;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bæ\u0080\u0001\u0018�� \u00072\u00020\u0001:\u0002\b\u0007J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lokhttp3/Interceptor;", "Lkotlin/Any;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Companion", "Chain", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Interceptor.class */
public interface Interceptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H&¢\u0006\u0004\b\u0010\u0010\u0007J\u000f\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\f\u0010\u0011J\u001f\u0010\u0015\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0017\u0010\u0016J\u001f\u0010\u0018\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0005H&¢\u0006\u0004\b\u0019\u0010\u0007¨\u0006\u001a"}, d2 = {"Lokhttp3/Interceptor$Chain;", "Lkotlin/Any;", "Lokhttp3/Call;", "call", "()Lokhttp3/Call;", "", "connectTimeoutMillis", "()I", "Lokhttp3/Connection;", "connection", "()Lokhttp3/Connection;", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "proceed", "(Lokhttp3/Request;)Lokhttp3/Response;", "readTimeoutMillis", "()Lokhttp3/Request;", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "withConnectTimeout", "(ILjava/util/concurrent/TimeUnit;)Lokhttp3/Interceptor$Chain;", "withReadTimeout", "withWriteTimeout", "writeTimeoutMillis", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Interceptor$Chain.class */
    public interface Chain {
        @NotNull
        Call call();

        int connectTimeoutMillis();

        @Nullable
        Connection connection();

        @NotNull
        Response proceed(@NotNull Request request) throws IOException;

        int readTimeoutMillis();

        @NotNull
        Request request();

        @NotNull
        Chain withConnectTimeout(int i, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withReadTimeout(int i, @NotNull TimeUnit timeUnit);

        @NotNull
        Chain withWriteTimeout(int i, @NotNull TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ8\u0010\t\u001a\u00020\b2#\b\u0004\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\u00060\u0001H\u0086\nø\u0001��¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Lokhttp3/Interceptor$Companion;", "Lkotlin/Function1;", "Lokhttp3/Interceptor$Chain;", "Lkotlin/ParameterName;", "name", "chain", "Lokhttp3/Response;", "block", "Lokhttp3/Interceptor;", "invoke", "(Lkotlin/Function1;)Lokhttp3/Interceptor;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Interceptor$Companion.class */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        public final Interceptor invoke(@NotNull final Function1<? super Chain, Response> block) {
            Intrinsics.m1830e(block, "block");
            return new Interceptor() { // from class: okhttp3.Interceptor$Companion$invoke$1
                @Override // okhttp3.Interceptor
                @NotNull
                public final Response intercept(@NotNull Interceptor.Chain it) {
                    Intrinsics.m1830e(it, "it");
                    return (Response) Function1.this.invoke(it);
                }
            };
        }
    }

    @NotNull
    Response intercept(@NotNull Chain chain) throws IOException;
}
