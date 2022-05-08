package okhttp3.internal.platform;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.CloseGuard;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.platform.android.StandardAndroidSocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SuppressSignatureCheck
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� 52\u00020\u0001:\u000256B\u0007¢\u0006\u0004\b3\u00104J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ4\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0011\u0010\u0011\u001a\r\u0012\t\u0012\u00070\u000f¢\u0006\u0002\b\u00100\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\u001f\u001a\u00020\fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020#2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b$\u0010%J!\u0010(\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\f2\b\u0010'\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b\u0003\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u001c\u00101\u001a\b\u0012\u0004\u0012\u0002000\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00067"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform;", "Lokhttp3/internal/platform/Platform;", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "Lokhttp3/internal/tls/CertificateChainCleaner;", "buildCertificateChainCleaner", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;", "Lokhttp3/internal/tls/TrustRootIndex;", "buildTrustRootIndex", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "hostname", "", "Lokhttp3/Protocol;", "Lkotlin/jvm/JvmSuppressWildcards;", "protocols", "", "configureTlsExtensions", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "Ljava/net/Socket;", "socket", "Ljava/net/InetSocketAddress;", "address", "", "connectTimeout", "connectSocket", "(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V", "getSelectedProtocol", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "closer", "", "getStackTraceForCloseable", "(Ljava/lang/String;)Ljava/lang/Object;", "", "isCleartextTrafficPermitted", "(Ljava/lang/String;)Z", "message", "stackTrace", "logCloseableLeak", "(Ljava/lang/String;Ljava/lang/Object;)V", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;", "Lokhttp3/internal/platform/android/CloseGuard;", "closeGuard", "Lokhttp3/internal/platform/android/CloseGuard;", "Lokhttp3/internal/platform/android/SocketAdapter;", "socketAdapters", "Ljava/util/List;", "<init>", "()V", "Companion", "CustomTrustRootIndex", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform.class */
public final class AndroidPlatform extends Platform {
    public static final Companion Companion = new Companion(null);
    private static final boolean isSupported;
    private final CloseGuard closeGuard;
    private final List<SocketAdapter> socketAdapters;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0002\u0010\u0003R\u0019\u0010\u0005\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\n"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform$Companion;", "Lokhttp3/internal/platform/Platform;", "buildIfSupported", "()Lokhttp3/internal/platform/Platform;", "", "isSupported", "Z", "()Z", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Platform buildIfSupported() {
            return isSupported() ? new AndroidPlatform() : null;
        }

        public final boolean isSupported() {
            return AndroidPlatform.isSupported;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0080\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÂ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÂ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0019\u001a\u00020\u0018HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001bR\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;", "Lokhttp3/internal/tls/TrustRootIndex;", "Ljavax/net/ssl/X509TrustManager;", "component1", "()Ljavax/net/ssl/X509TrustManager;", "Ljava/lang/reflect/Method;", "component2", "()Ljava/lang/reflect/Method;", "trustManager", "findByIssuerAndSignatureMethod", "copy", "(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/security/cert/X509Certificate;", "cert", "findByIssuerAndSignature", "(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/lang/reflect/Method;", "Ljavax/net/ssl/X509TrustManager;", "<init>", "(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex.class */
    public static final class CustomTrustRootIndex implements TrustRootIndex {
        private final Method findByIssuerAndSignatureMethod;
        private final X509TrustManager trustManager;

        public CustomTrustRootIndex(@NotNull X509TrustManager trustManager, @NotNull Method findByIssuerAndSignatureMethod) {
            Intrinsics.m1830e(trustManager, "trustManager");
            Intrinsics.m1830e(findByIssuerAndSignatureMethod, "findByIssuerAndSignatureMethod");
            this.trustManager = trustManager;
            this.findByIssuerAndSignatureMethod = findByIssuerAndSignatureMethod;
        }

        private final X509TrustManager component1() {
            return this.trustManager;
        }

        private final Method component2() {
            return this.findByIssuerAndSignatureMethod;
        }

        public static /* synthetic */ CustomTrustRootIndex copy$default(CustomTrustRootIndex customTrustRootIndex, X509TrustManager x509TrustManager, Method method, int i, Object obj) {
            if ((i & 1) != 0) {
                x509TrustManager = customTrustRootIndex.trustManager;
            }
            if ((i & 2) != 0) {
                method = customTrustRootIndex.findByIssuerAndSignatureMethod;
            }
            return customTrustRootIndex.copy(x509TrustManager, method);
        }

        @NotNull
        public final CustomTrustRootIndex copy(@NotNull X509TrustManager trustManager, @NotNull Method findByIssuerAndSignatureMethod) {
            Intrinsics.m1830e(trustManager, "trustManager");
            Intrinsics.m1830e(findByIssuerAndSignatureMethod, "findByIssuerAndSignatureMethod");
            return new CustomTrustRootIndex(trustManager, findByIssuerAndSignatureMethod);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CustomTrustRootIndex)) {
                return false;
            }
            CustomTrustRootIndex customTrustRootIndex = (CustomTrustRootIndex) obj;
            return Intrinsics.m1834a(this.trustManager, customTrustRootIndex.trustManager) && Intrinsics.m1834a(this.findByIssuerAndSignatureMethod, customTrustRootIndex.findByIssuerAndSignatureMethod);
        }

        @Override // okhttp3.internal.tls.TrustRootIndex
        @Nullable
        public X509Certificate findByIssuerAndSignature(@NotNull X509Certificate cert) {
            X509Certificate x509Certificate;
            Object invoke;
            Intrinsics.m1830e(cert, "cert");
            try {
                invoke = this.findByIssuerAndSignatureMethod.invoke(this.trustManager, cert);
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException e2) {
                x509Certificate = null;
            }
            if (invoke != null) {
                x509Certificate = ((TrustAnchor) invoke).getTrustedCert();
                return x509Certificate;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.TrustAnchor");
        }

        public int hashCode() {
            X509TrustManager x509TrustManager = this.trustManager;
            int i = 0;
            int hashCode = x509TrustManager != null ? x509TrustManager.hashCode() : 0;
            Method method = this.findByIssuerAndSignatureMethod;
            if (method != null) {
                i = method.hashCode();
            }
            return (hashCode * 31) + i;
        }

        @NotNull
        public String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.trustManager + ", findByIssuerAndSignatureMethod=" + this.findByIssuerAndSignatureMethod + ")";
        }
    }

    static {
        int i;
        boolean z = true;
        boolean z2 = false;
        if (Platform.Companion.isAndroid() && (i = Build.VERSION.SDK_INT) < 30) {
            if (i >= 21) {
                z2 = true;
            }
            if (!z2) {
                throw new IllegalStateException(("Expected Android API level 21+ but was " + Build.VERSION.SDK_INT).toString());
            }
        } else {
            z = false;
        }
        isSupported = z;
    }

    public AndroidPlatform() {
        List j;
        j = CollectionsKt__CollectionsKt.m2171j(StandardAndroidSocketAdapter.Companion.buildIfSupported$default(StandardAndroidSocketAdapter.Companion, null, 1, null), new DeferredSocketAdapter(AndroidSocketAdapter.Companion.getPlayProviderFactory()), new DeferredSocketAdapter(ConscryptSocketAdapter.Companion.getFactory()), new DeferredSocketAdapter(BouncyCastleSocketAdapter.Companion.getFactory()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : j) {
            if (((SocketAdapter) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.socketAdapters = arrayList;
        this.closeGuard = CloseGuard.Companion.get();
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public CertificateChainCleaner buildCertificateChainCleaner(@NotNull X509TrustManager trustManager) {
        Intrinsics.m1830e(trustManager, "trustManager");
        AndroidCertificateChainCleaner buildIfSupported = AndroidCertificateChainCleaner.Companion.buildIfSupported(trustManager);
        return buildIfSupported != null ? buildIfSupported : super.buildCertificateChainCleaner(trustManager);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public TrustRootIndex buildTrustRootIndex(@NotNull X509TrustManager trustManager) {
        TrustRootIndex trustRootIndex;
        Intrinsics.m1830e(trustManager, "trustManager");
        try {
            Method method = trustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            Intrinsics.m1831d(method, "method");
            method.setAccessible(true);
            trustRootIndex = new CustomTrustRootIndex(trustManager, method);
        } catch (NoSuchMethodException e) {
            trustRootIndex = super.buildTrustRootIndex(trustManager);
        }
        return trustRootIndex;
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        Object obj;
        Intrinsics.m1830e(sslSocket, "sslSocket");
        Intrinsics.m1830e(protocols, "protocols");
        Iterator<T> it = this.socketAdapters.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((SocketAdapter) obj).matchesSocket(sslSocket)) {
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            socketAdapter.configureTlsExtensions(sslSocket, str, protocols);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void connectSocket(@NotNull Socket socket, @NotNull InetSocketAddress address, int i) throws IOException {
        Intrinsics.m1830e(socket, "socket");
        Intrinsics.m1830e(address, "address");
        try {
            socket.connect(address, i);
        } catch (ClassCastException e) {
            if (Build.VERSION.SDK_INT == 26) {
                throw new IOException("Exception in connect", e);
            }
            throw e;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        Object obj;
        String str;
        Intrinsics.m1830e(sslSocket, "sslSocket");
        Iterator<T> it = this.socketAdapters.iterator();
        while (true) {
            str = null;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((SocketAdapter) obj).matchesSocket(sslSocket)) {
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            str = socketAdapter.getSelectedProtocol(sslSocket);
        }
        return str;
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public Object getStackTraceForCloseable(@NotNull String closer) {
        Intrinsics.m1830e(closer, "closer");
        return this.closeGuard.createAndOpen(closer);
    }

    @Override // okhttp3.internal.platform.Platform
    public boolean isCleartextTrafficPermitted(@NotNull String hostname) {
        boolean z;
        Intrinsics.m1830e(hostname, "hostname");
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            z = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
        } else if (i >= 23) {
            NetworkSecurityPolicy instance = NetworkSecurityPolicy.getInstance();
            Intrinsics.m1831d(instance, "NetworkSecurityPolicy.getInstance()");
            z = instance.isCleartextTrafficPermitted();
        } else {
            z = true;
        }
        return z;
    }

    @Override // okhttp3.internal.platform.Platform
    public void logCloseableLeak(@NotNull String message, @Nullable Object obj) {
        Intrinsics.m1830e(message, "message");
        if (!this.closeGuard.warnIfOpen(obj)) {
            Platform.log$default(this, message, 5, null, 4, null);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) {
        Object obj;
        X509TrustManager x509TrustManager;
        Intrinsics.m1830e(sslSocketFactory, "sslSocketFactory");
        Iterator<T> it = this.socketAdapters.iterator();
        while (true) {
            x509TrustManager = null;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((SocketAdapter) obj).matchesSocketFactory(sslSocketFactory)) {
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            x509TrustManager = socketAdapter.trustManager(sslSocketFactory);
        }
        return x509TrustManager;
    }
}
