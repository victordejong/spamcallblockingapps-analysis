.class public Lorg/apache/http/impl/conn/CPoolEntry;
.super Lorg/apache/http/pool/PoolEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/PoolEntry<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final log:Lw3/a/b/b/a;

.field private volatile routeComplete:Z


# direct methods
.method public constructor <init>(Lw3/a/b/b/a;Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 2
    iput-object p1, p0, Lorg/apache/http/impl/conn/CPoolEntry;->log:Lw3/a/b/b/a;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/conn/CPoolEntry;->log:Lw3/a/b/b/a;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExpired(J)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/http/pool/PoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lorg/apache/http/impl/conn/CPoolEntry;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/apache/http/impl/conn/CPoolEntry;->log:Lw3/a/b/b/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " expired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getExpiry()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public isRouteComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    return v0
.end method

.method public markRouteComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    return-void
.end method

.method public shutdownConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 2
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->shutdown()V

    return-void
.end method
