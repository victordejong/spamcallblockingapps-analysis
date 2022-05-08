package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018��B{\u0012\u0006\u0010F\u001a\u000205\u0012\u0006\u0010G\u001a\u00020\u0017\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u00100\u001a\u00020-\u0012\b\u00104\u001a\u0004\u0018\u000101\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001a\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010(\u001a\u00020%\u0012\b\u0010$\u001a\u0004\u0018\u00010!\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010,\u001a\u00020)¢\u0006\u0004\bH\u0010IJ\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\u00020\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020��H��¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u0005H\u0007¢\u0006\u0004\b\u001f\u0010\bJ\u0011\u0010$\u001a\u0004\u0018\u00010!H\u0007¢\u0006\u0004\b\"\u0010#J\u000f\u0010(\u001a\u00020%H\u0007¢\u0006\u0004\b&\u0010'J\u000f\u0010,\u001a\u00020)H\u0007¢\u0006\u0004\b*\u0010+J\u000f\u00100\u001a\u00020-H\u0007¢\u0006\u0004\b.\u0010/J\u0011\u00104\u001a\u0004\u0018\u000101H\u0007¢\u0006\u0004\b2\u00103J\u000f\u00106\u001a\u000205H\u0016¢\u0006\u0004\b6\u00107J\u000f\u0010;\u001a\u000208H\u0007¢\u0006\u0004\b9\u0010:R\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0004\u0010<\u001a\u0004\b\u0004\u0010\u0003R\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058G@\u0006¢\u0006\f\n\u0004\b\t\u0010=\u001a\u0004\b\t\u0010\bR\u0019\u0010\r\u001a\u00020\n8\u0007@\u0006¢\u0006\f\n\u0004\b\r\u0010>\u001a\u0004\b\r\u0010\fR\u001b\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0007@\u0006¢\u0006\f\n\u0004\b\u001d\u0010?\u001a\u0004\b\u001d\u0010\u001cR\u001f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u00058G@\u0006¢\u0006\f\n\u0004\b \u0010=\u001a\u0004\b \u0010\bR\u001b\u0010$\u001a\u0004\u0018\u00010!8\u0007@\u0006¢\u0006\f\n\u0004\b$\u0010@\u001a\u0004\b$\u0010#R\u0019\u0010(\u001a\u00020%8\u0007@\u0006¢\u0006\f\n\u0004\b(\u0010A\u001a\u0004\b(\u0010'R\u0019\u0010,\u001a\u00020)8\u0007@\u0006¢\u0006\f\n\u0004\b,\u0010B\u001a\u0004\b,\u0010+R\u0019\u00100\u001a\u00020-8\u0007@\u0006¢\u0006\f\n\u0004\b0\u0010C\u001a\u0004\b0\u0010/R\u001b\u00104\u001a\u0004\u0018\u0001018\u0007@\u0006¢\u0006\f\n\u0004\b4\u0010D\u001a\u0004\b4\u00103R\u0019\u0010;\u001a\u0002088G@\u0006¢\u0006\f\n\u0004\b;\u0010E\u001a\u0004\b;\u0010:¨\u0006J"}, d2 = {"Lokhttp3/Address;", "Lokhttp3/CertificatePinner;", "-deprecated_certificatePinner", "()Lokhttp3/CertificatePinner;", "certificatePinner", "", "Lokhttp3/ConnectionSpec;", "-deprecated_connectionSpecs", "()Ljava/util/List;", "connectionSpecs", "Lokhttp3/Dns;", "-deprecated_dns", "()Lokhttp3/Dns;", "dns", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "that", "equalsNonHost$okhttp", "(Lokhttp3/Address;)Z", "equalsNonHost", "", "hashCode", "()I", "Ljavax/net/ssl/HostnameVerifier;", "-deprecated_hostnameVerifier", "()Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/Protocol;", "-deprecated_protocols", "protocols", "Ljava/net/Proxy;", "-deprecated_proxy", "()Ljava/net/Proxy;", "proxy", "Lokhttp3/Authenticator;", "-deprecated_proxyAuthenticator", "()Lokhttp3/Authenticator;", "proxyAuthenticator", "Ljava/net/ProxySelector;", "-deprecated_proxySelector", "()Ljava/net/ProxySelector;", "proxySelector", "Ljavax/net/SocketFactory;", "-deprecated_socketFactory", "()Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "-deprecated_sslSocketFactory", "()Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "", "toString", "()Ljava/lang/String;", "Lokhttp3/HttpUrl;", "-deprecated_url", "()Lokhttp3/HttpUrl;", "url", "Lokhttp3/CertificatePinner;", "Ljava/util/List;", "Lokhttp3/Dns;", "Ljavax/net/ssl/HostnameVerifier;", "Ljava/net/Proxy;", "Lokhttp3/Authenticator;", "Ljava/net/ProxySelector;", "Ljavax/net/SocketFactory;", "Ljavax/net/ssl/SSLSocketFactory;", "Lokhttp3/HttpUrl;", "uriHost", "uriPort", "<init>", "(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Address.class */
public final class Address {
    @Nullable
    private final CertificatePinner certificatePinner;
    @NotNull
    private final List<ConnectionSpec> connectionSpecs;
    @NotNull
    private final Dns dns;
    @Nullable
    private final HostnameVerifier hostnameVerifier;
    @NotNull
    private final List<Protocol> protocols;
    @Nullable
    private final Proxy proxy;
    @NotNull
    private final Authenticator proxyAuthenticator;
    @NotNull
    private final ProxySelector proxySelector;
    @NotNull
    private final SocketFactory socketFactory;
    @Nullable
    private final SSLSocketFactory sslSocketFactory;
    @NotNull
    private final HttpUrl url;

    public Address(@NotNull String uriHost, int i, @NotNull Dns dns, @NotNull SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, @NotNull Authenticator proxyAuthenticator, @Nullable Proxy proxy, @NotNull List<? extends Protocol> protocols, @NotNull List<ConnectionSpec> connectionSpecs, @NotNull ProxySelector proxySelector) {
        Intrinsics.m1830e(uriHost, "uriHost");
        Intrinsics.m1830e(dns, "dns");
        Intrinsics.m1830e(socketFactory, "socketFactory");
        Intrinsics.m1830e(proxyAuthenticator, "proxyAuthenticator");
        Intrinsics.m1830e(protocols, "protocols");
        Intrinsics.m1830e(connectionSpecs, "connectionSpecs");
        Intrinsics.m1830e(proxySelector, "proxySelector");
        this.dns = dns;
        this.socketFactory = socketFactory;
        this.sslSocketFactory = sSLSocketFactory;
        this.hostnameVerifier = hostnameVerifier;
        this.certificatePinner = certificatePinner;
        this.proxyAuthenticator = proxyAuthenticator;
        this.proxy = proxy;
        this.proxySelector = proxySelector;
        this.url = new HttpUrl.Builder().scheme(this.sslSocketFactory != null ? "https" : "http").host(uriHost).port(i).build();
        this.protocols = Util.toImmutableList(protocols);
        this.connectionSpecs = Util.toImmutableList(connectionSpecs);
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_certificatePinner  reason: not valid java name */
    public final CertificatePinner m24582deprecated_certificatePinner() {
        return this.certificatePinner;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_connectionSpecs  reason: not valid java name */
    public final List<ConnectionSpec> m24583deprecated_connectionSpecs() {
        return this.connectionSpecs;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_dns  reason: not valid java name */
    public final Dns m24584deprecated_dns() {
        return this.dns;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_hostnameVerifier  reason: not valid java name */
    public final HostnameVerifier m24585deprecated_hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_protocols  reason: not valid java name */
    public final List<Protocol> m24586deprecated_protocols() {
        return this.protocols;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_proxy  reason: not valid java name */
    public final Proxy m24587deprecated_proxy() {
        return this.proxy;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_proxyAuthenticator  reason: not valid java name */
    public final Authenticator m24588deprecated_proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_proxySelector  reason: not valid java name */
    public final ProxySelector m24589deprecated_proxySelector() {
        return this.proxySelector;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_socketFactory  reason: not valid java name */
    public final SocketFactory m24590deprecated_socketFactory() {
        return this.socketFactory;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_sslSocketFactory  reason: not valid java name */
    public final SSLSocketFactory m24591deprecated_sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_url  reason: not valid java name */
    public final HttpUrl m24592deprecated_url() {
        return this.url;
    }

    @JvmName
    @Nullable
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    @JvmName
    @NotNull
    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    @JvmName
    @NotNull
    public final Dns dns() {
        return this.dns;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Intrinsics.m1834a(this.url, address.url) && equalsNonHost$okhttp(address)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final boolean equalsNonHost$okhttp(@NotNull Address that) {
        Intrinsics.m1830e(that, "that");
        return Intrinsics.m1834a(this.dns, that.dns) && Intrinsics.m1834a(this.proxyAuthenticator, that.proxyAuthenticator) && Intrinsics.m1834a(this.protocols, that.protocols) && Intrinsics.m1834a(this.connectionSpecs, that.connectionSpecs) && Intrinsics.m1834a(this.proxySelector, that.proxySelector) && Intrinsics.m1834a(this.proxy, that.proxy) && Intrinsics.m1834a(this.sslSocketFactory, that.sslSocketFactory) && Intrinsics.m1834a(this.hostnameVerifier, that.hostnameVerifier) && Intrinsics.m1834a(this.certificatePinner, that.certificatePinner) && this.url.port() == that.url.port();
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.url.hashCode()) * 31) + this.dns.hashCode()) * 31) + this.proxyAuthenticator.hashCode()) * 31) + this.protocols.hashCode()) * 31) + this.connectionSpecs.hashCode()) * 31) + this.proxySelector.hashCode()) * 31) + Objects.hashCode(this.proxy)) * 31) + Objects.hashCode(this.sslSocketFactory)) * 31) + Objects.hashCode(this.hostnameVerifier)) * 31) + Objects.hashCode(this.certificatePinner);
    }

    @JvmName
    @Nullable
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @JvmName
    @NotNull
    public final List<Protocol> protocols() {
        return this.protocols;
    }

    @JvmName
    @Nullable
    public final Proxy proxy() {
        return this.proxy;
    }

    @JvmName
    @NotNull
    public final Authenticator proxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @JvmName
    @NotNull
    public final ProxySelector proxySelector() {
        return this.proxySelector;
    }

    @JvmName
    @NotNull
    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    @JvmName
    @Nullable
    public final SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @NotNull
    public String toString() {
        Object obj;
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Address{");
        sb2.append(this.url.host());
        sb2.append(':');
        sb2.append(this.url.port());
        sb2.append(", ");
        if (this.proxy != null) {
            sb = new StringBuilder();
            sb.append("proxy=");
            obj = this.proxy;
        } else {
            sb = new StringBuilder();
            sb.append("proxySelector=");
            obj = this.proxySelector;
        }
        sb.append(obj);
        sb2.append(sb.toString());
        sb2.append("}");
        return sb2.toString();
    }

    @JvmName
    @NotNull
    public final HttpUrl url() {
        return this.url;
    }
}
