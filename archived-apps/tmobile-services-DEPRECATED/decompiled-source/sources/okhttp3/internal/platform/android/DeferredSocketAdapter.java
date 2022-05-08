package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import okhttp3.internal.platform.android.SocketAdapter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001a\u0010\u001bJ/\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/platform/android/DeferredSocketAdapter;", "Lokhttp3/internal/platform/android/SocketAdapter;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "hostname", "", "Lokhttp3/Protocol;", "protocols", "", "configureTlsExtensions", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "getDelegate", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;", "getSelectedProtocol", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "", "isSupported", "()Z", "matchesSocket", "(Ljavax/net/ssl/SSLSocket;)Z", "delegate", "Lokhttp3/internal/platform/android/SocketAdapter;", "Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "socketAdapterFactory", "Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "<init>", "(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V", "Factory", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/DeferredSocketAdapter.class */
public final class DeferredSocketAdapter implements SocketAdapter {
    private SocketAdapter delegate;
    private final Factory socketAdapterFactory;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "Lkotlin/Any;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "Lokhttp3/internal/platform/android/SocketAdapter;", "create", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;", "", "matchesSocket", "(Ljavax/net/ssl/SSLSocket;)Z", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/android/DeferredSocketAdapter$Factory.class */
    public interface Factory {
        @NotNull
        SocketAdapter create(@NotNull SSLSocket sSLSocket);

        boolean matchesSocket(@NotNull SSLSocket sSLSocket);
    }

    public DeferredSocketAdapter(@NotNull Factory socketAdapterFactory) {
        Intrinsics.m1830e(socketAdapterFactory, "socketAdapterFactory");
        this.socketAdapterFactory = socketAdapterFactory;
    }

    private final SocketAdapter getDelegate(SSLSocket sSLSocket) {
        SocketAdapter socketAdapter;
        synchronized (this) {
            if (this.delegate == null && this.socketAdapterFactory.matchesSocket(sSLSocket)) {
                this.delegate = this.socketAdapterFactory.create(sSLSocket);
            }
            socketAdapter = this.delegate;
        }
        return socketAdapter;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<? extends Protocol> protocols) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        Intrinsics.m1830e(protocols, "protocols");
        SocketAdapter delegate = getDelegate(sslSocket);
        if (delegate != null) {
            delegate.configureTlsExtensions(sslSocket, str, protocols);
        }
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        SocketAdapter delegate = getDelegate(sslSocket);
        return delegate != null ? delegate.getSelectedProtocol(sslSocket) : null;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return true;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocket(@NotNull SSLSocket sslSocket) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        return this.socketAdapterFactory.matchesSocket(sslSocket);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocketFactory(@NotNull SSLSocketFactory sslSocketFactory) {
        Intrinsics.m1830e(sslSocketFactory, "sslSocketFactory");
        return SocketAdapter.DefaultImpls.matchesSocketFactory(this, sslSocketFactory);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) {
        Intrinsics.m1830e(sslSocketFactory, "sslSocketFactory");
        return SocketAdapter.DefaultImpls.trustManager(this, sslSocketFactory);
    }
}
