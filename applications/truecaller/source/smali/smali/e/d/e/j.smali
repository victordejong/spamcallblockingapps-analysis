.class public Le/d/e/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Le/d/e/i;

.field public final c:Le/d/e/b;

.field public final d:Le/d/e/r;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Le/d/e/i;Le/d/e/b;Le/d/e/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;",
            "Le/d/e/i;",
            "Le/d/e/b;",
            "Le/d/e/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/d/e/j;->e:Z

    .line 3
    iput-object p1, p0, Le/d/e/j;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Le/d/e/j;->b:Le/d/e/i;

    .line 5
    iput-object p3, p0, Le/d/e/j;->c:Le/d/e/b;

    .line 6
    iput-object p4, p0, Le/d/e/j;->d:Le/d/e/r;

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
    iget-object v0, p0, Le/d/e/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/e/o;

    const-string v1, "post-error"

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "network-queue-take"

    .line 3
    invoke-virtual {v0, v3}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Le/d/e/o;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    .line 5
    invoke-virtual {v0, v3}, Le/d/e/o;->finish(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Le/d/e/o;->notifyListenerResponseNotUsable()V

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Le/d/e/o;->getTrafficStatsTag()I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 8
    iget-object v3, p0, Le/d/e/j;->b:Le/d/e/i;
    :try_end_0
    .catch Le/d/e/v; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v3, Le/d/e/x/b;

    :try_start_1
    invoke-virtual {v3, v0}, Le/d/e/x/b;->f(Le/d/e/o;)Le/d/e/l;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 9
    invoke-virtual {v0, v4}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 10
    iget-boolean v4, v3, Le/d/e/l;->e:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Le/d/e/o;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    .line 11
    invoke-virtual {v0, v3}, Le/d/e/o;->finish(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Le/d/e/o;->notifyListenerResponseNotUsable()V

    goto/16 :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v3}, Le/d/e/o;->parseNetworkResponse(Le/d/e/l;)Le/d/e/q;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 14
    invoke-virtual {v0, v4}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Le/d/e/o;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Le/d/e/q;->b:Le/d/e/b$a;

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, p0, Le/d/e/j;->c:Le/d/e/b;

    invoke-virtual {v0}, Le/d/e/o;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Le/d/e/q;->b:Le/d/e/b$a;
    :try_end_1
    .catch Le/d/e/v; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v4, Le/d/e/x/d;

    :try_start_2
    invoke-virtual {v4, v5, v6}, Le/d/e/x/d;->d(Ljava/lang/String;Le/d/e/b$a;)V

    const-string v4, "network-cache-written"

    .line 17
    invoke-virtual {v0, v4}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Le/d/e/o;->markDelivered()V

    .line 19
    iget-object v4, p0, Le/d/e/j;->d:Le/d/e/r;
    :try_end_2
    .catch Le/d/e/v; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v4, Le/d/e/g;

    :try_start_3
    invoke-virtual {v4, v0, v3}, Le/d/e/g;->a(Le/d/e/o;Le/d/e/q;)V

    .line 20
    invoke-virtual {v0, v3}, Le/d/e/o;->notifyListenerResponseReceived(Le/d/e/q;)V
    :try_end_3
    .catch Le/d/e/v; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    .line 22
    invoke-static {v5, v4}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    new-instance v4, Le/d/e/v;

    invoke-direct {v4, v3}, Le/d/e/v;-><init>(Ljava/lang/Throwable;)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    iget-object v3, p0, Le/d/e/j;->d:Le/d/e/r;

    check-cast v3, Le/d/e/g;

    .line 26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 28
    new-instance v1, Le/d/e/q;

    invoke-direct {v1, v4}, Le/d/e/q;-><init>(Le/d/e/v;)V

    .line 29
    iget-object v3, v3, Le/d/e/g;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Le/d/e/g$b;

    invoke-direct {v4, v0, v1, v2}, Le/d/e/g$b;-><init>(Le/d/e/o;Le/d/e/q;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, Le/d/e/o;->notifyListenerResponseNotUsable()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    invoke-virtual {v0, v3}, Le/d/e/o;->parseNetworkError(Le/d/e/v;)Le/d/e/v;

    move-result-object v3

    .line 33
    iget-object v4, p0, Le/d/e/j;->d:Le/d/e/r;

    check-cast v4, Le/d/e/g;

    .line 34
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 36
    new-instance v1, Le/d/e/q;

    invoke-direct {v1, v3}, Le/d/e/q;-><init>(Le/d/e/v;)V

    .line 37
    iget-object v3, v4, Le/d/e/g;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Le/d/e/g$b;

    invoke-direct {v4, v0, v1, v2}, Le/d/e/g$b;-><init>(Le/d/e/o;Le/d/e/q;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Le/d/e/o;->notifyListenerResponseNotUsable()V

    :goto_0
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
    invoke-virtual {p0}, Le/d/e/j;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v0, p0, Le/d/e/j;->e:Z

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
    invoke-static {v1, v0}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method
