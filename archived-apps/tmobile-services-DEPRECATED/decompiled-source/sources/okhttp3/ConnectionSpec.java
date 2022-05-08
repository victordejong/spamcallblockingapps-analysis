package okhttp3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\u0018�� +:\u0002,+B9\b��\u0012\u0006\u0010&\u001a\u00020\u0003\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010#\u0012\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010#¢\u0006\u0004\b)\u0010*J\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H��¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\tH\u0007¢\u0006\u0004\b\u001e\u0010\fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"R\u001b\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8G@\u0006¢\u0006\u0006\u001a\u0004\b\r\u0010\fR\u001e\u0010$\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0019\u0010&\u001a\u00020\u00038\u0007@\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b&\u0010\u001bR\u0019\u0010\u001c\u001a\u00020\u00038\u0007@\u0006¢\u0006\f\n\u0004\b\u001c\u0010'\u001a\u0004\b\u001c\u0010\u001bR\u001b\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\t8G@\u0006¢\u0006\u0006\u001a\u0004\b\u001f\u0010\fR\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010%¨\u0006-"}, d2 = {"Lokhttp3/ConnectionSpec;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "isFallback", "", "apply$okhttp", "(Ljavax/net/ssl/SSLSocket;Z)V", "apply", "", "Lokhttp3/CipherSuite;", "-deprecated_cipherSuites", "()Ljava/util/List;", "cipherSuites", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "socket", "isCompatible", "(Ljavax/net/ssl/SSLSocket;)Z", "supportedSpec", "(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;", "-deprecated_supportsTlsExtensions", "()Z", "supportsTlsExtensions", "Lokhttp3/TlsVersion;", "-deprecated_tlsVersions", "tlsVersions", "", "toString", "()Ljava/lang/String;", "", "cipherSuitesAsString", "[Ljava/lang/String;", "isTls", "Z", "tlsVersionsAsString", "<init>", "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/ConnectionSpec.class */
public final class ConnectionSpec {
    @JvmField
    @NotNull
    public static final ConnectionSpec COMPATIBLE_TLS;
    @JvmField
    @NotNull
    public static final ConnectionSpec MODERN_TLS;
    @JvmField
    @NotNull
    public static final ConnectionSpec RESTRICTED_TLS;
    private final String[] cipherSuitesAsString;
    private final boolean isTls;
    private final boolean supportsTlsExtensions;
    private final String[] tlsVersionsAsString;
    public static final Companion Companion = new Companion(null);
    private static final CipherSuite[] RESTRICTED_CIPHER_SUITES = {CipherSuite.TLS_AES_128_GCM_SHA256, CipherSuite.TLS_AES_256_GCM_SHA384, CipherSuite.TLS_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256};
    private static final CipherSuite[] APPROVED_CIPHER_SUITES = {CipherSuite.TLS_AES_128_GCM_SHA256, CipherSuite.TLS_AES_256_GCM_SHA384, CipherSuite.TLS_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
    @JvmField
    @NotNull
    public static final ConnectionSpec CLEARTEXT = new Builder(false).build();

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018��B\u0011\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\r¢\u0006\u0004\b\"\u0010\u001cB\u0011\b\u0016\u0012\u0006\u0010#\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010$J\r\u0010\u0001\u001a\u00020��¢\u0006\u0004\b\u0001\u0010\u0002J\r\u0010\u0003\u001a\u00020��¢\u0006\u0004\b\u0003\u0010\u0002J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\t\u001a\u00020��2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\"\u00020\b¢\u0006\u0004\b\t\u0010\nJ!\u0010\t\u001a\u00020��2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\u0007\"\u00020\u000b¢\u0006\u0004\b\t\u0010\fJ\u0017\u0010\u000e\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0010\u001a\u00020��2\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\"\u00020\b¢\u0006\u0004\b\u0010\u0010\nJ!\u0010\u0010\u001a\u00020��2\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\u0007\"\u00020\u0011¢\u0006\u0004\b\u0010\u0010\u0012R*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u000e\u001a\u00020\r8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\r8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR*\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0013\u001a\u0004\b \u0010\u0015\"\u0004\b!\u0010\u0017¨\u0006%"}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", "allEnabledCipherSuites", "()Lokhttp3/ConnectionSpec$Builder;", "allEnabledTlsVersions", "Lokhttp3/ConnectionSpec;", "build", "()Lokhttp3/ConnectionSpec;", "", "", "cipherSuites", "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/CipherSuite;", "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;", "", "supportsTlsExtensions", "(Z)Lokhttp3/ConnectionSpec$Builder;", "tlsVersions", "Lokhttp3/TlsVersion;", "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;", "[Ljava/lang/String;", "getCipherSuites$okhttp", "()[Ljava/lang/String;", "setCipherSuites$okhttp", "([Ljava/lang/String;)V", "Z", "getSupportsTlsExtensions$okhttp", "()Z", "setSupportsTlsExtensions$okhttp", "(Z)V", "tls", "getTls$okhttp", "setTls$okhttp", "getTlsVersions$okhttp", "setTlsVersions$okhttp", "<init>", "connectionSpec", "(Lokhttp3/ConnectionSpec;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/ConnectionSpec$Builder.class */
    public static final class Builder {
        @Nullable
        private String[] cipherSuites;
        private boolean supportsTlsExtensions;
        private boolean tls;
        @Nullable
        private String[] tlsVersions;

        public Builder(@NotNull ConnectionSpec connectionSpec) {
            Intrinsics.m1830e(connectionSpec, "connectionSpec");
            this.tls = connectionSpec.isTls();
            this.cipherSuites = connectionSpec.cipherSuitesAsString;
            this.tlsVersions = connectionSpec.tlsVersionsAsString;
            this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions();
        }

        public Builder(boolean z) {
            this.tls = z;
        }

        @NotNull
        public final Builder allEnabledCipherSuites() {
            if (this.tls) {
                this.cipherSuites = null;
                return this;
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        @NotNull
        public final Builder allEnabledTlsVersions() {
            if (this.tls) {
                this.tlsVersions = null;
                return this;
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        @NotNull
        public final ConnectionSpec build() {
            return new ConnectionSpec(this.tls, this.supportsTlsExtensions, this.cipherSuites, this.tlsVersions);
        }

        @NotNull
        public final Builder cipherSuites(@NotNull String... cipherSuites) {
            Intrinsics.m1830e(cipherSuites, "cipherSuites");
            if (this.tls) {
                if (!(cipherSuites.length == 0)) {
                    Object clone = cipherSuites.clone();
                    if (clone != null) {
                        this.cipherSuites = (String[]) clone;
                        return this;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                }
                throw new IllegalArgumentException("At least one cipher suite is required".toString());
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        @NotNull
        public final Builder cipherSuites(@NotNull CipherSuite... cipherSuites) {
            Intrinsics.m1830e(cipherSuites, "cipherSuites");
            if (this.tls) {
                ArrayList arrayList = new ArrayList(cipherSuites.length);
                for (CipherSuite cipherSuite : cipherSuites) {
                    arrayList.add(cipherSuite.javaName());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return cipherSuites((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections".toString());
        }

        @Nullable
        public final String[] getCipherSuites$okhttp() {
            return this.cipherSuites;
        }

        public final boolean getSupportsTlsExtensions$okhttp() {
            return this.supportsTlsExtensions;
        }

        public final boolean getTls$okhttp() {
            return this.tls;
        }

        @Nullable
        public final String[] getTlsVersions$okhttp() {
            return this.tlsVersions;
        }

        public final void setCipherSuites$okhttp(@Nullable String[] strArr) {
            this.cipherSuites = strArr;
        }

        public final void setSupportsTlsExtensions$okhttp(boolean z) {
            this.supportsTlsExtensions = z;
        }

        public final void setTls$okhttp(boolean z) {
            this.tls = z;
        }

        public final void setTlsVersions$okhttp(@Nullable String[] strArr) {
            this.tlsVersions = strArr;
        }

        @Deprecated
        @NotNull
        public final Builder supportsTlsExtensions(boolean z) {
            if (this.tls) {
                this.supportsTlsExtensions = z;
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections".toString());
        }

        @NotNull
        public final Builder tlsVersions(@NotNull String... tlsVersions) {
            Intrinsics.m1830e(tlsVersions, "tlsVersions");
            if (this.tls) {
                if (!(tlsVersions.length == 0)) {
                    Object clone = tlsVersions.clone();
                    if (clone != null) {
                        this.tlsVersions = (String[]) clone;
                        return this;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                }
                throw new IllegalArgumentException("At least one TLS version is required".toString());
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }

        @NotNull
        public final Builder tlsVersions(@NotNull TlsVersion... tlsVersions) {
            Intrinsics.m1830e(tlsVersions, "tlsVersions");
            if (this.tls) {
                ArrayList arrayList = new ArrayList(tlsVersions.length);
                for (TlsVersion tlsVersion : tlsVersions) {
                    arrayList.add(tlsVersion.javaName());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return tlsVersions((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections".toString());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007¨\u0006\u000e"}, d2 = {"Lokhttp3/ConnectionSpec$Companion;", "", "Lokhttp3/CipherSuite;", "APPROVED_CIPHER_SUITES", "[Lokhttp3/CipherSuite;", "Lokhttp3/ConnectionSpec;", "CLEARTEXT", "Lokhttp3/ConnectionSpec;", "COMPATIBLE_TLS", "MODERN_TLS", "RESTRICTED_CIPHER_SUITES", "RESTRICTED_TLS", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/ConnectionSpec$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Builder builder = new Builder(true);
        CipherSuite[] cipherSuiteArr = RESTRICTED_CIPHER_SUITES;
        RESTRICTED_TLS = builder.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2).supportsTlsExtensions(true).build();
        Builder builder2 = new Builder(true);
        CipherSuite[] cipherSuiteArr2 = APPROVED_CIPHER_SUITES;
        MODERN_TLS = builder2.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2).supportsTlsExtensions(true).build();
        Builder builder3 = new Builder(true);
        CipherSuite[] cipherSuiteArr3 = APPROVED_CIPHER_SUITES;
        COMPATIBLE_TLS = builder3.cipherSuites((CipherSuite[]) Arrays.copyOf(cipherSuiteArr3, cipherSuiteArr3.length)).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).supportsTlsExtensions(true).build();
    }

    public ConnectionSpec(boolean z, boolean z2, @Nullable String[] strArr, @Nullable String[] strArr2) {
        this.isTls = z;
        this.supportsTlsExtensions = z2;
        this.cipherSuitesAsString = strArr;
        this.tlsVersionsAsString = strArr2;
    }

    private final ConnectionSpec supportedSpec(SSLSocket sSLSocket, boolean z) {
        String[] cipherSuitesIntersection;
        String[] tlsVersionsIntersection;
        Comparator d;
        if (this.cipherSuitesAsString != null) {
            String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            Intrinsics.m1831d(enabledCipherSuites, "sslSocket.enabledCipherSuites");
            cipherSuitesIntersection = Util.intersect(enabledCipherSuites, this.cipherSuitesAsString, CipherSuite.Companion.getORDER_BY_NAME$okhttp());
        } else {
            cipherSuitesIntersection = sSLSocket.getEnabledCipherSuites();
        }
        if (this.tlsVersionsAsString != null) {
            String[] enabledProtocols = sSLSocket.getEnabledProtocols();
            Intrinsics.m1831d(enabledProtocols, "sslSocket.enabledProtocols");
            String[] strArr = this.tlsVersionsAsString;
            d = ComparisonsKt__ComparisonsKt.m1947d();
            tlsVersionsIntersection = Util.intersect(enabledProtocols, strArr, d);
        } else {
            tlsVersionsIntersection = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        Intrinsics.m1831d(supportedCipherSuites, "supportedCipherSuites");
        int indexOf = Util.indexOf(supportedCipherSuites, "TLS_FALLBACK_SCSV", CipherSuite.Companion.getORDER_BY_NAME$okhttp());
        String[] cipherSuitesIntersection2 = cipherSuitesIntersection;
        if (z) {
            cipherSuitesIntersection2 = cipherSuitesIntersection;
            if (indexOf != -1) {
                Intrinsics.m1831d(cipherSuitesIntersection, "cipherSuitesIntersection");
                String str = supportedCipherSuites[indexOf];
                Intrinsics.m1831d(str, "supportedCipherSuites[indexOfFallbackScsv]");
                cipherSuitesIntersection2 = Util.concat(cipherSuitesIntersection, str);
            }
        }
        Builder builder = new Builder(this);
        Intrinsics.m1831d(cipherSuitesIntersection2, "cipherSuitesIntersection");
        Builder cipherSuites = builder.cipherSuites((String[]) Arrays.copyOf(cipherSuitesIntersection2, cipherSuitesIntersection2.length));
        Intrinsics.m1831d(tlsVersionsIntersection, "tlsVersionsIntersection");
        return cipherSuites.tlsVersions((String[]) Arrays.copyOf(tlsVersionsIntersection, tlsVersionsIntersection.length)).build();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_cipherSuites  reason: not valid java name */
    public final List<CipherSuite> m24616deprecated_cipherSuites() {
        return cipherSuites();
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_supportsTlsExtensions  reason: not valid java name */
    public final boolean m24617deprecated_supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_tlsVersions  reason: not valid java name */
    public final List<TlsVersion> m24618deprecated_tlsVersions() {
        return tlsVersions();
    }

    public final void apply$okhttp(@NotNull SSLSocket sslSocket, boolean z) {
        Intrinsics.m1830e(sslSocket, "sslSocket");
        ConnectionSpec supportedSpec = supportedSpec(sslSocket, z);
        if (supportedSpec.tlsVersions() != null) {
            sslSocket.setEnabledProtocols(supportedSpec.tlsVersionsAsString);
        }
        if (supportedSpec.cipherSuites() != null) {
            sslSocket.setEnabledCipherSuites(supportedSpec.cipherSuitesAsString);
        }
    }

    @JvmName
    @Nullable
    public final List<CipherSuite> cipherSuites() {
        List<CipherSuite> list;
        String[] strArr = this.cipherSuitesAsString;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(CipherSuite.Companion.forJavaName(str));
            }
            list = CollectionsKt___CollectionsKt.m2133U(arrayList);
        } else {
            list = null;
        }
        return list;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z = this.isTls;
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        if (z != connectionSpec.isTls) {
            return false;
        }
        if (z) {
            return Arrays.equals(this.cipherSuitesAsString, connectionSpec.cipherSuitesAsString) && Arrays.equals(this.tlsVersionsAsString, connectionSpec.tlsVersionsAsString) && this.supportsTlsExtensions == connectionSpec.supportsTlsExtensions;
        }
        return true;
    }

    public int hashCode() {
        int i;
        if (this.isTls) {
            String[] strArr = this.cipherSuitesAsString;
            int i2 = 0;
            int hashCode = strArr != null ? Arrays.hashCode(strArr) : 0;
            String[] strArr2 = this.tlsVersionsAsString;
            if (strArr2 != null) {
                i2 = Arrays.hashCode(strArr2);
            }
            i = ((((527 + hashCode) * 31) + i2) * 31) + (!this.supportsTlsExtensions ? 1 : 0);
        } else {
            i = 17;
        }
        return i;
    }

    public final boolean isCompatible(@NotNull SSLSocket socket) {
        Comparator d;
        Intrinsics.m1830e(socket, "socket");
        if (!this.isTls) {
            return false;
        }
        String[] strArr = this.tlsVersionsAsString;
        if (strArr != null) {
            String[] enabledProtocols = socket.getEnabledProtocols();
            d = ComparisonsKt__ComparisonsKt.m1947d();
            if (!Util.hasIntersection(strArr, enabledProtocols, d)) {
                return false;
            }
        }
        String[] strArr2 = this.cipherSuitesAsString;
        return strArr2 == null || Util.hasIntersection(strArr2, socket.getEnabledCipherSuites(), CipherSuite.Companion.getORDER_BY_NAME$okhttp());
    }

    @JvmName
    public final boolean isTls() {
        return this.isTls;
    }

    @JvmName
    public final boolean supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    @JvmName
    @Nullable
    public final List<TlsVersion> tlsVersions() {
        List<TlsVersion> list;
        String[] strArr = this.tlsVersionsAsString;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(TlsVersion.Companion.forJavaName(str));
            }
            list = CollectionsKt___CollectionsKt.m2133U(arrayList);
        } else {
            list = null;
        }
        return list;
    }

    @NotNull
    public String toString() {
        if (!this.isTls) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(cipherSuites(), "[all enabled]") + ", tlsVersions=" + Objects.toString(tlsVersions(), "[all enabled]") + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ')';
    }
}
