.class public Lorg/apache/http/impl/execchain/RetryExec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final log:Lw3/a/b/b/a;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    const-string v0, "HTTP request executor"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request retry handler"

    .line 4
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RetryExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 6
    iput-object p2, p0, Lorg/apache/http/impl/execchain/RetryExec;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "HTTP route"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 3
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/execchain/RetryExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    if-eqz p4, :cond_1

    .line 6
    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    const-string p2, "Request has been aborted"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 8
    throw v2

    .line 9
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/http/impl/execchain/RetryExec;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v3, v2, v1, p3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    iget-object v3, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    invoke-interface {v3}, Lw3/a/b/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    const-string v4, "I/O exception ("

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when processing request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lw3/a/b/b/a;->k(Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object v3, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    invoke-interface {v3}, Lw3/a/b/b/a;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    iget-object v3, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 14
    :cond_3
    invoke-static {p2}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {p2, v0}, Lorg/apache/http/message/AbstractHttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 16
    iget-object v2, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    invoke-interface {v2}, Lw3/a/b/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iget-object v2, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying request to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lw3/a/b/b/a;->k(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/execchain/RetryExec;->log:Lw3/a/b/b/a;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-interface {p1, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 19
    new-instance p1, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity"

    invoke-direct {p1, p2, v2}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_6
    instance-of p2, v2, Lorg/apache/http/NoHttpResponseException;

    if-eqz p2, :cond_7

    .line 21
    new-instance p2, Lorg/apache/http/NoHttpResponseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to respond"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 23
    throw p2

    .line 24
    :cond_7
    throw v2
.end method
