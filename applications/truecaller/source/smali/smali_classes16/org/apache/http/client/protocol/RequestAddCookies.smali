.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final log:Lw3/a/b/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    const-string p2, "Cookie store not specified in HTTP context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lorg/apache/http/config/Lookup;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    const-string p2, "CookieSpec registry not specified in HTTP context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/protocol/HttpCoreContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    if-nez v3, :cond_3

    .line 11
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    const-string p2, "Target host not set in the context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v4

    if-nez v4, :cond_4

    .line 13
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    const-string p2, "Connection route not set in the context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lorg/apache/http/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "default"

    .line 16
    :cond_5
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    invoke-interface {v6}, Lw3/a/b/b/a;->j()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CookieSpec selected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 18
    :cond_6
    instance-of v6, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    .line 19
    move-object v6, p1

    check-cast v6, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    goto :goto_0

    .line 20
    :cond_7
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 22
    :cond_8
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_9

    .line 24
    invoke-interface {v4}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    .line 25
    :cond_9
    new-instance v8, Lorg/apache/http/cookie/CookieOrigin;

    const/4 v9, 0x0

    if-ltz v3, :cond_a

    goto :goto_1

    :cond_a
    move v3, v9

    :goto_1
    invoke-static {v7}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_2

    :cond_b
    const-string v7, "/"

    :goto_2
    invoke-interface {v4}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v4

    invoke-direct {v8, v6, v3, v7, v4}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 26
    invoke-interface {v2, v5}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/CookieSpecProvider;

    if-nez v2, :cond_d

    .line 27
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    invoke-interface {p1}, Lw3/a/b/b/a;->j()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 28
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported cookie policy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_c
    return-void

    .line 29
    :cond_d
    invoke-interface {v2, v0}, Lorg/apache/http/cookie/CookieSpecProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v0

    .line 30
    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 34
    invoke-interface {v5, v4}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v6

    const-string v7, "Cookie "

    if-nez v6, :cond_10

    .line 35
    invoke-interface {v0, v5, v8}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 36
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    invoke-interface {v6}, Lw3/a/b/b/a;->j()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 37
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " match "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 38
    :cond_f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 39
    :cond_10
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    invoke-interface {v6}, Lw3/a/b/b/a;->j()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 40
    iget-object v6, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lw3/a/b/b/a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " expired"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_11
    const/4 v5, 0x1

    move v9, v5

    goto :goto_3

    :cond_12
    if-eqz v9, :cond_13

    .line 41
    invoke-interface {v1, v4}, Lorg/apache/http/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    .line 42
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 43
    invoke-interface {v0, v3}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 45
    invoke-interface {p1, v2}, Lorg/apache/http/HttpMessage;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_4

    .line 46
    :cond_14
    invoke-interface {v0}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v1

    if-lez v1, :cond_15

    .line 47
    invoke-interface {v0}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 48
    invoke-interface {p1, v1}, Lorg/apache/http/HttpMessage;->addHeader(Lorg/apache/http/Header;)V

    :cond_15
    const-string p1, "http.cookie-spec"

    .line 49
    invoke-interface {p2, p1, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "http.cookie-origin"

    .line 50
    invoke-interface {p2, p1, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
