package okhttp3;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.security.auth.x500.X500Principal;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� -:\u0001-B;\b��\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0)¢\u0006\u0004\b+\u0010,J\u000f\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0007¢\u0006\u0004\b\u0016\u0010\u0010J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0004\b\u0018\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0019\u0010\u0004\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010!\u001a\u0004\b\u0004\u0010\u0003R\u001f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0007@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\"\u001a\u0004\b\u0011\u0010\u0010R\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u00128G@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0014R#\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8G@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b\u0017\u0010\u0010R\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u00128G@\u0006¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0014R\u0019\u0010\u001d\u001a\u00020\u001a8\u0007@\u0006¢\u0006\f\n\u0004\b\u001d\u0010%\u001a\u0004\b\u001d\u0010\u001cR\u001a\u0010(\u001a\u00020\u001e*\u00020\u000e8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006."}, d2 = {"Lokhttp3/Handshake;", "Lokhttp3/CipherSuite;", "-deprecated_cipherSuite", "()Lokhttp3/CipherSuite;", "cipherSuite", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "Ljava/security/cert/Certificate;", "-deprecated_localCertificates", "()Ljava/util/List;", "localCertificates", "Ljava/security/Principal;", "-deprecated_localPrincipal", "()Ljava/security/Principal;", "localPrincipal", "-deprecated_peerCertificates", "peerCertificates", "-deprecated_peerPrincipal", "peerPrincipal", "Lokhttp3/TlsVersion;", "-deprecated_tlsVersion", "()Lokhttp3/TlsVersion;", "tlsVersion", "", "toString", "()Ljava/lang/String;", "Lokhttp3/CipherSuite;", "Ljava/util/List;", "peerCertificates$delegate", "Lkotlin/Lazy;", "Lokhttp3/TlsVersion;", "getName", "(Ljava/security/cert/Certificate;)Ljava/lang/String;", "name", "Lkotlin/Function0;", "peerCertificatesFn", "<init>", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Handshake.class */
public final class Handshake {
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final CipherSuite cipherSuite;
    @NotNull
    private final List<Certificate> localCertificates;
    @NotNull
    private final Lazy peerCertificates$delegate;
    @NotNull
    private final TlsVersion tlsVersion;

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J;\u0010\u0006\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0007¢\u0006\u0004\b\u0006\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J#\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000b*\f\u0012\u0006\b\u0001\u0012\u00020\f\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lokhttp3/Handshake$Companion;", "Ljavax/net/ssl/SSLSession;", "sslSession", "Lokhttp3/Handshake;", "-deprecated_get", "(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;", "get", "Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "cipherSuite", "", "Ljava/security/cert/Certificate;", "peerCertificates", "localCertificates", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;", "handshake", "", "toImmutableList", "([Ljava/security/cert/Certificate;)Ljava/util/List;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/Handshake$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List<Certificate> toImmutableList(Certificate[] certificateArr) {
            return certificateArr != null ? Util.immutableListOf((Certificate[]) Arrays.copyOf(certificateArr, certificateArr.length)) : CollectionsKt__CollectionsKt.m2175f();
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final Handshake m24643deprecated_get(@NotNull SSLSession sslSession) throws IOException {
            Intrinsics.m1830e(sslSession, "sslSession");
            return get(sslSession);
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final Handshake get(@NotNull SSLSession handshake) throws IOException {
            List<Certificate> list;
            Intrinsics.m1830e(handshake, "$this$handshake");
            String cipherSuite = handshake.getCipherSuite();
            if (cipherSuite != null) {
                int hashCode = cipherSuite.hashCode();
                if (hashCode == 1019404634 ? cipherSuite.equals("TLS_NULL_WITH_NULL_NULL") : hashCode == 1208658923 && cipherSuite.equals("SSL_NULL_WITH_NULL_NULL")) {
                    throw new IOException("cipherSuite == " + cipherSuite);
                }
                CipherSuite forJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
                String protocol = handshake.getProtocol();
                if (protocol == null) {
                    throw new IllegalStateException("tlsVersion == null".toString());
                } else if (!Intrinsics.m1834a("NONE", protocol)) {
                    TlsVersion forJavaName2 = TlsVersion.Companion.forJavaName(protocol);
                    try {
                        list = toImmutableList(handshake.getPeerCertificates());
                    } catch (SSLPeerUnverifiedException e) {
                        list = CollectionsKt__CollectionsKt.m2175f();
                    }
                    return new Handshake(forJavaName2, forJavaName, toImmutableList(handshake.getLocalCertificates()), new Handshake$Companion$handshake$1(list));
                } else {
                    throw new IOException("tlsVersion == NONE");
                }
            } else {
                throw new IllegalStateException("cipherSuite == null".toString());
            }
        }

        @JvmStatic
        @NotNull
        public final Handshake get(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> peerCertificates, @NotNull List<? extends Certificate> localCertificates) {
            Intrinsics.m1830e(tlsVersion, "tlsVersion");
            Intrinsics.m1830e(cipherSuite, "cipherSuite");
            Intrinsics.m1830e(peerCertificates, "peerCertificates");
            Intrinsics.m1830e(localCertificates, "localCertificates");
            return new Handshake(tlsVersion, cipherSuite, Util.toImmutableList(localCertificates), new Handshake$Companion$get$1(Util.toImmutableList(peerCertificates)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> localCertificates, @NotNull Function0<? extends List<? extends Certificate>> peerCertificatesFn) {
        Lazy a;
        Intrinsics.m1830e(tlsVersion, "tlsVersion");
        Intrinsics.m1830e(cipherSuite, "cipherSuite");
        Intrinsics.m1830e(localCertificates, "localCertificates");
        Intrinsics.m1830e(peerCertificatesFn, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = localCertificates;
        a = LazyKt__LazyJVMKt.m2487a(new Handshake$peerCertificates$2(peerCertificatesFn));
        this.peerCertificates$delegate = a;
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final Handshake get(@NotNull SSLSession sSLSession) throws IOException {
        return Companion.get(sSLSession);
    }

    @JvmStatic
    @NotNull
    public static final Handshake get(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> list, @NotNull List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    private final String getName(Certificate certificate) {
        String type;
        if (certificate instanceof X509Certificate) {
            type = ((X509Certificate) certificate).getSubjectDN().toString();
        } else {
            type = certificate.getType();
            Intrinsics.m1831d(type, "type");
        }
        return type;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_cipherSuite  reason: not valid java name */
    public final CipherSuite m24637deprecated_cipherSuite() {
        return this.cipherSuite;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_localCertificates  reason: not valid java name */
    public final List<Certificate> m24638deprecated_localCertificates() {
        return this.localCertificates;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_localPrincipal  reason: not valid java name */
    public final Principal m24639deprecated_localPrincipal() {
        return localPrincipal();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_peerCertificates  reason: not valid java name */
    public final List<Certificate> m24640deprecated_peerCertificates() {
        return peerCertificates();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_peerPrincipal  reason: not valid java name */
    public final Principal m24641deprecated_peerPrincipal() {
        return peerPrincipal();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_tlsVersion  reason: not valid java name */
    public final TlsVersion m24642deprecated_tlsVersion() {
        return this.tlsVersion;
    }

    @JvmName
    @NotNull
    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.tlsVersion == this.tlsVersion && Intrinsics.m1834a(handshake.cipherSuite, this.cipherSuite) && Intrinsics.m1834a(handshake.peerCertificates(), peerCertificates()) && Intrinsics.m1834a(handshake.localCertificates, this.localCertificates)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.tlsVersion.hashCode()) * 31) + this.cipherSuite.hashCode()) * 31) + peerCertificates().hashCode()) * 31) + this.localCertificates.hashCode();
    }

    @JvmName
    @NotNull
    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    @JvmName
    @Nullable
    public final Principal localPrincipal() {
        Object F = CollectionsKt.m2210F(this.localCertificates);
        boolean z = F instanceof X509Certificate;
        X500Principal x500Principal = null;
        if (!z) {
            F = null;
        }
        X509Certificate x509Certificate = (X509Certificate) F;
        if (x509Certificate != null) {
            x500Principal = x509Certificate.getSubjectX500Principal();
        }
        return x500Principal;
    }

    @JvmName
    @NotNull
    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    @JvmName
    @Nullable
    public final Principal peerPrincipal() {
        Object F = CollectionsKt.m2210F(peerCertificates());
        boolean z = F instanceof X509Certificate;
        X500Principal x500Principal = null;
        if (!z) {
            F = null;
        }
        X509Certificate x509Certificate = (X509Certificate) F;
        if (x509Certificate != null) {
            x500Principal = x509Certificate.getSubjectX500Principal();
        }
        return x500Principal;
    }

    @JvmName
    @NotNull
    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    @NotNull
    public String toString() {
        int p;
        int p2;
        List<Certificate> peerCertificates = peerCertificates();
        p = CollectionsKt__IterablesKt.m2164p(peerCertificates, 10);
        ArrayList arrayList = new ArrayList(p);
        for (Certificate certificate : peerCertificates) {
            arrayList.add(getName(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{");
        sb.append("tlsVersion=");
        sb.append(this.tlsVersion);
        sb.append(' ');
        sb.append("cipherSuite=");
        sb.append(this.cipherSuite);
        sb.append(' ');
        sb.append("peerCertificates=");
        sb.append(obj);
        sb.append(' ');
        sb.append("localCertificates=");
        List<Certificate> list = this.localCertificates;
        p2 = CollectionsKt__IterablesKt.m2164p(list, 10);
        ArrayList arrayList2 = new ArrayList(p2);
        for (Certificate certificate2 : list) {
            arrayList2.add(getName(certificate2));
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
