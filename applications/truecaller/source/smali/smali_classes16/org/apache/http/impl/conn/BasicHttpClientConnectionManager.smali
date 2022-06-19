.class public Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/HttpClientConnectionManager;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

.field private connConfig:Lorg/apache/http/config/ConnectionConfig;

.field private final connFactory:Lorg/apache/http/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

.field private expiry:J

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private leased:Z

.field private final log:Lw3/a/b/b/a;

.field private route:Lorg/apache/http/conn/routing/HttpRoute;

.field private socketConfig:Lorg/apache/http/config/SocketConfig;

.field private state:Ljava/lang/Object;

.field private updated:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-static {}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;

    invoke-direct {v0, p1, p3, p4}, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;-><init>(Lorg/apache/http/conn/HttpClientConnectionOperator;Lorg/apache/http/conn/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionOperator;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpClientConnectionOperator;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v0, "Connection operator"

    .line 4
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/HttpClientConnectionOperator;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    const-wide p1, 0x7fffffffffffffffL

    .line 6
    iput-wide p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    .line 7
    sget-object p1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/http/config/SocketConfig;

    .line 8
    sget-object p1, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lorg/apache/http/config/ConnectionConfig;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private checkExpiry()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Connection expired @ "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V

    :cond_1
    return-void
.end method

.method private declared-synchronized closeConnection()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Closing connection"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v2, "I/O exception closing connection"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getDefaultRegistry()Lorg/apache/http/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V

    :cond_0
    return-void
.end method

.method public declared-synchronized closeExpiredConnections()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->checkExpiry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Time unit"

    .line 1
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_1

    move-wide p1, v0

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 7
    iget-wide p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->updated:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    .line 8
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Connection not obtained from this manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    :goto_1
    move-object v2, p1

    .line 7
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    .line 8
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    iget-object v5, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/http/config/SocketConfig;

    move v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/HttpClientConnectionOperator;->connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/HttpClientConnection;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Connection manager has been shut down"

    invoke-static {v0, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get connection for route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Connection is still allocated"

    invoke-static {v1, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-static {v0, p1}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    invoke-static {v0, p2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    :cond_3
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V

    .line 7
    :cond_4
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 8
    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->checkExpiry()V

    .line 10
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-nez p2, :cond_5

    .line 11
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-interface {p2, p1, v0}, Lorg/apache/http/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/ManagedHttpClientConnection;

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 12
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {p2}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    .line 13
    iput-boolean v2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    .line 14
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConnectionConfig()Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lorg/apache/http/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method public declared-synchronized getSocketConfig()Lorg/apache/http/config/SocketConfig;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/http/config/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Connection not obtained from this manager"

    invoke-static {v0, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->updated:J

    .line 8
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p1

    const-wide v2, 0x7fffffffffffffffL

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 10
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 11
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 12
    iput-wide v2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    goto :goto_2

    .line 13
    :cond_3
    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-interface {p1, v1}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V

    .line 15
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p1}, Lw3/a/b/b/a;->j()Z

    move-result p1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_5

    cmp-long p1, p3, v4

    if-lez p1, :cond_4

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string p1, "indefinitely"

    .line 17
    :goto_1
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection can be kept alive "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_5
    cmp-long p1, p3, v4

    if-lez p1, :cond_6

    .line 18
    iget-wide p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->updated:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    goto :goto_2

    .line 19
    :cond_6
    iput-wide v2, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->expiry:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_2
    :try_start_2
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_3
    iput-boolean v1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
    .locals 1

    const-string v0, "Route"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager$1;-><init>(Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized setConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lorg/apache/http/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSocketConfig(Lorg/apache/http/config/SocketConfig;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    sget-object p1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lorg/apache/http/config/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shutdown()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->close()V

    return-void
.end method

.method public upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Connection not obtained from this manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicHttpClientConnectionManager;->conn:Lorg/apache/http/conn/ManagedHttpClientConnection;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/http/conn/HttpClientConnectionOperator;->upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V

    return-void
.end method
