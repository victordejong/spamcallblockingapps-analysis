.class public final Lorg/apache/http/client/params/HttpClientParamConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    invoke-static {p0, v0}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestConfig(Lorg/apache/http/params/HttpParams;Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig;
    .locals 4

    .line 2
    invoke-static {p1}, Lorg/apache/http/client/config/RequestConfig;->copy(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1

    const-string v2, "http.socket.timeout"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    const-string v2, "http.connection.stalecheck"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    const-string v2, "http.connection.timeout"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isExpectContinueEnabled()Z

    move-result v1

    const-string v2, "http.protocol.expect-continue"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v1

    const-string v2, "http.protocol.handle-authentication"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v1

    const-string v2, "http.protocol.allow-circular-redirects"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "http.conn-manager.timeout"

    invoke-interface {p0, v3, v1, v2}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    const-string v2, "http.protocol.max-redirects"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v1

    const-string v2, "http.protocol.handle-redirects"

    invoke-interface {p0, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {p0, v1, p1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object p1

    const-string v0, "http.route.default-proxy"

    .line 3
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;

    :cond_0
    const-string v0, "http.route.local-address"

    .line 5
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;

    :cond_1
    const-string v0, "http.auth.target-scheme-pref"

    .line 7
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    :cond_2
    const-string v0, "http.auth.proxy-scheme-pref"

    .line 9
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1, v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;

    :cond_3
    const-string v0, "http.protocol.cookie-policy"

    .line 11
    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p1, p0}, Lorg/apache/http/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p0

    return-object p0
.end method
