.class public Lcom/mopub/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/mopub/volley/Network;

.field public final c:Lcom/mopub/volley/Cache;

.field public final d:Lcom/mopub/volley/ResponseDelivery;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Network;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    .line 3
    iput-object p1, p0, Lcom/mopub/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/mopub/volley/NetworkDispatcher;->b:Lcom/mopub/volley/Network;

    .line 5
    iput-object p3, p0, Lcom/mopub/volley/NetworkDispatcher;->c:Lcom/mopub/volley/Cache;

    .line 6
    iput-object p4, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->h(I)V

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "network-queue-take"

    .line 4
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "network-discard-cancelled"

    .line 6
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->c(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->e()V

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 9
    iget-object v4, p0, Lcom/mopub/volley/NetworkDispatcher;->b:Lcom/mopub/volley/Network;

    invoke-interface {v4, v0}, Lcom/mopub/volley/Network;->performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;

    move-result-object v4

    const-string v5, "network-http-complete"

    .line 10
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 11
    iget-boolean v5, v4, Lcom/mopub/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "not-modified"

    .line 12
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->e()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->g(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v4

    const-string v5, "network-parse-complete"

    .line 15
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    if-eqz v5, :cond_2

    .line 17
    iget-object v5, p0, Lcom/mopub/volley/NetworkDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/mopub/volley/Cache;->put(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V

    const-string v5, "network-cache-written"

    .line 18
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->markDelivered()V

    .line 20
    iget-object v5, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v5, v0, v4}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    .line 21
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->f(Lcom/mopub/volley/Response;)V
    :try_end_0
    .catch Lcom/mopub/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 22
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v5, Lcom/mopub/volley/VolleyError;

    invoke-direct {v5, v4}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 25
    iput-wide v6, v5, Lcom/mopub/volley/VolleyError;->a:J

    .line 26
    iget-object v1, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v1, v0, v5}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 27
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->e()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 29
    iput-wide v5, v4, Lcom/mopub/volley/VolleyError;->a:J

    .line 30
    iget-object v1, p0, Lcom/mopub/volley/NetworkDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v1, v0, v4}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 31
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->h(I)V

    return-void

    :goto_1
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->h(I)V

    throw v1
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/volley/NetworkDispatcher;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->e:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 5
    invoke-static {v1, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
