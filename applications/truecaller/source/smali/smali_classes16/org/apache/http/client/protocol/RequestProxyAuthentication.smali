.class public Lorg/apache/http/client/protocol/RequestProxyAuthentication;
.super Lorg/apache/http/client/protocol/RequestAuthenticationBase;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/http/client/protocol/RequestAuthenticationBase;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
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

    const-string v0, "Proxy-Authorization"

    .line 3
    invoke-interface {p1, v0}, Lorg/apache/http/HttpMessage;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http.connection"

    .line 4
    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/HttpRoutedConnection;

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAuthenticationBase;->log:Lw3/a/b/b/a;

    const-string p2, "HTTP connection not set in the context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/conn/HttpRoutedConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "http.auth.proxy-scope"

    .line 8
    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthState;

    if-nez v0, :cond_3

    .line 9
    iget-object p1, p0, Lorg/apache/http/client/protocol/RequestAuthenticationBase;->log:Lw3/a/b/b/a;

    const-string p2, "Proxy auth state not set in the context"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lorg/apache/http/client/protocol/RequestAuthenticationBase;->log:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    iget-object v1, p0, Lorg/apache/http/client/protocol/RequestAuthenticationBase;->log:Lw3/a/b/b/a;

    const-string v2, "Proxy auth state: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/auth/AuthState;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 12
    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/http/client/protocol/RequestAuthenticationBase;->process(Lorg/apache/http/auth/AuthState;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method
