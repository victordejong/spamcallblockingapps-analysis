.class public Lorg/apache/http/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final backoffManager:Lorg/apache/http/client/BackoffManager;

.field private final connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ConnectionBackoffStrategy;Lorg/apache/http/client/BackoffManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP client request executor"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection backoff strategy"

    .line 3
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Backoff manager"

    .line 4
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 6
    iput-object p2, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    .line 7
    iput-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 1
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
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lorg/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Lorg/apache/http/HttpResponse;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {p3, p1}, Lorg/apache/http/client/BackoffManager;->backOff(Lorg/apache/http/conn/routing/HttpRoute;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {p3, p1}, Lorg/apache/http/client/BackoffManager;->probe(Lorg/apache/http/conn/routing/HttpRoute;)V

    :goto_0
    return-object p2

    :catch_0
    move-exception p2

    .line 8
    iget-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lorg/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    iget-object p3, p0, Lorg/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lorg/apache/http/client/BackoffManager;

    invoke-interface {p3, p1}, Lorg/apache/http/client/BackoffManager;->backOff(Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 10
    :cond_1
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_4

    .line 11
    instance-of p1, p2, Lorg/apache/http/HttpException;

    if-nez p1, :cond_3

    .line 12
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 13
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p1, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_3
    check-cast p2, Lorg/apache/http/HttpException;

    throw p2

    .line 16
    :cond_4
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2
.end method
