.class public Lcom/mopub/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/volley/CacheDispatcher$a;
    }
.end annotation


# static fields
.field public static final g:Z


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

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/mopub/volley/Cache;

.field public final d:Lcom/mopub/volley/ResponseDelivery;

.field public volatile e:Z

.field public final f:Lcom/mopub/volley/CacheDispatcher$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mopub/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mopub/volley/CacheDispatcher;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->e:Z

    .line 3
    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    .line 6
    iput-object p4, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    .line 7
    new-instance p1, Lcom/mopub/volley/CacheDispatcher$a;

    invoke-direct {p1, p0}, Lcom/mopub/volley/CacheDispatcher$a;-><init>(Lcom/mopub/volley/CacheDispatcher;)V

    iput-object p1, p0, Lcom/mopub/volley/CacheDispatcher;->f:Lcom/mopub/volley/CacheDispatcher$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    const-string v1, "cache-queue-take"

    .line 2
    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->h(I)V

    const/4 v2, 0x2

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "cache-discard-canceled"

    .line 5
    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->h(I)V

    goto/16 :goto_1

    .line 7
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mopub/volley/Cache;->get(Ljava/lang/String;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v1, "cache-miss"

    .line 8
    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->f:Lcom/mopub/volley/CacheDispatcher$a;

    invoke-static {v1, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/CacheDispatcher$a;Lcom/mopub/volley/Request;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/mopub/volley/Cache$Entry;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "cache-hit-expired"

    .line 12
    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 14
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->f:Lcom/mopub/volley/CacheDispatcher$a;

    invoke-static {v1, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/CacheDispatcher$a;Lcom/mopub/volley/Request;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v4, "cache-hit"

    .line 16
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 17
    new-instance v4, Lcom/mopub/volley/NetworkResponse;

    iget-object v5, v3, Lcom/mopub/volley/Cache$Entry;->data:[B

    iget-object v6, v3, Lcom/mopub/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/mopub/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 18
    invoke-virtual {v0, v4}, Lcom/mopub/volley/Request;->g(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    .line 19
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/mopub/volley/Cache$Entry;->refreshNeeded()Z

    move-result v5

    if-nez v5, :cond_4

    .line 21
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v1, v0, v4}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    goto :goto_0

    :cond_4
    const-string v5, "cache-hit-refresh-needed"

    .line 22
    invoke-virtual {v0, v5}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v3}, Lcom/mopub/volley/Request;->setCacheEntry(Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Request;

    .line 24
    iput-boolean v1, v4, Lcom/mopub/volley/Response;->intermediate:Z

    .line 25
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->f:Lcom/mopub/volley/CacheDispatcher$a;

    invoke-static {v1, v0}, Lcom/mopub/volley/CacheDispatcher$a;->a(Lcom/mopub/volley/CacheDispatcher$a;Lcom/mopub/volley/Request;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    new-instance v3, Le/n/f/a;

    invoke-direct {v3, p0, v0}, Le/n/f/a;-><init>(Lcom/mopub/volley/CacheDispatcher;Lcom/mopub/volley/Request;)V

    invoke-interface {v1, v0, v4, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/mopub/volley/CacheDispatcher;->d:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v1, v0, v4}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 28
    invoke-virtual {v0, v2}, Lcom/mopub/volley/Request;->h(I)V

    throw v1
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->e:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mopub/volley/CacheDispatcher;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lcom/mopub/volley/CacheDispatcher;->c:Lcom/mopub/volley/Cache;

    invoke-interface {v0}, Lcom/mopub/volley/Cache;->initialize()V

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/volley/CacheDispatcher;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-boolean v0, p0, Lcom/mopub/volley/CacheDispatcher;->e:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 7
    invoke-static {v2, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
