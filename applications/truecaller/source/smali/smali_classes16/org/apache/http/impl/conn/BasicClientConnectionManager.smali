.class public Lorg/apache/http/impl/conn/BasicClientConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field private conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

.field private final connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field private final log:Lw3/a/b/b/a;

.field private poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

.field private final schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private volatile shutdown:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-static {}, Lorg/apache/http/impl/conn/SchemeRegistryFactory;->createDefault()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v0, "Scheme registry"

    .line 3
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    return-void
.end method

.method private assertNotShutdown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdown:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection manager has been shut down"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method private shutdownConnection(Lorg/apache/http/HttpClientConnection;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "I/O exception shutting down connection"

    invoke-interface {v0, v1, p1}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->close()V

    .line 6
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    const-string v0, "Time unit"

    .line 1
    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    move-wide p1, v0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 6
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getUpdated()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    .line 7
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->close()V

    .line 8
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
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
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdown()V
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

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 10

    const-string p2, "Route"

    .line 1
    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    .line 4
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection for route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {p2, v0}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->close()V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 10
    :cond_2
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez p2, :cond_3

    .line 11
    sget-object p2, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {p2}, Lorg/apache/http/conn/ClientConnectionOperator;->createConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v6

    .line 13
    new-instance p2, Lorg/apache/http/impl/conn/HttpPoolEntry;

    iget-object v3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/http/impl/conn/HttpPoolEntry;-><init>(Lw3/a/b/b/a;Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 14
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 15
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->close()V

    .line 17
    iget-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 18
    :cond_4
    new-instance p1, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/impl/conn/HttpPoolEntry;)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    .line 19
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getPoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object p1

    if-ne p1, p0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    .line 9
    invoke-static {p1, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 10
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdown:Z

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lorg/apache/http/HttpClientConnection;)V

    .line 13
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 14
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lorg/apache/http/HttpClientConnection;)V

    .line 16
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz p4, :cond_5

    move-object v2, p4

    goto :goto_1

    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_1
    invoke-virtual {v1, p2, p3, v2}, Lorg/apache/http/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 18
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v1}, Lw3/a/b/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_6

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    const-string p2, "indefinitely"

    .line 20
    :goto_2
    iget-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection can be kept alive "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :cond_7
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->detach()Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 22
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    .line 23
    iget-object p2, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 24
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 25
    :cond_8
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-void

    :catchall_0
    move-exception p2

    .line 27
    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->detach()Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 28
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    .line 29
    iget-object p3, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p3}, Lorg/apache/http/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 30
    iput-object p1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    :cond_9
    throw p2

    :catchall_1
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/BasicClientConnectionManager$1;-><init>(Lorg/apache/http/impl/conn/BasicClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 3
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_0
    :try_start_2
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 6
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 9
    iput-object v0, p0, Lorg/apache/http/impl/conn/BasicClientConnectionManager;->conn:Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;

    throw v1

    :catchall_1
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
