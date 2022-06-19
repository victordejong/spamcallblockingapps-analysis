.class public final Le/a/k/q/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/q/e;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq3/a/x2/a1<",
            "Le/a/k/q/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/k/c/q;


# direct methods
.method public constructor <init>(Le/a/k/c/q;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "exoPlayerUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/q/f;->b:Le/a/k/c/q;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/k/q/f;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Le/a/k/q/a;)Lq3/a/x2/i1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/q/a;",
            ")",
            "Lq3/a/x2/i1<",
            "Le/a/k/q/b;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadRequestData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/q/f;->b:Le/a/k/c/q;

    .line 2
    iget-object v1, p1, Le/a/k/q/a;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Le/a/k/q/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2}, Le/a/k/c/q;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/offline/DownloadRequest;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/a/k/q/f;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    const-string v3, "downloadRequest.id"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Le/a/k/q/b$c;

    iget-object v5, v0, Lcom/google/android/exoplayer2/offline/DownloadRequest;->a:Ljava/lang/String;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Le/a/k/q/b$c;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v4, v3}, Le/a/k/q/f;->c(Ljava/util/Map;Ljava/lang/String;Le/a/k/q/b;Z)Lq3/a/x2/i1;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/a/k/q/f;->b:Le/a/k/c/q;

    invoke-interface {v2}, Le/a/k/c/q;->i()Le/m/a/c/j1/g;

    move-result-object v2

    .line 7
    new-instance v4, Le/a/k/q/f$a;

    invoke-direct {v4, p0, p1, v0}, Le/a/k/q/f$a;-><init>(Le/a/k/q/f;Le/a/k/q/a;Lcom/google/android/exoplayer2/offline/DownloadRequest;)V

    .line 8
    iget-object p1, v2, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 9
    invoke-static {v3}, Ln3/g0/y;->r(Z)V

    .line 10
    iget v4, v2, Le/m/a/c/j1/g;->h:I

    const/4 v5, 0x0

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iput p1, v2, Le/m/a/c/j1/g;->h:I

    .line 12
    iget v4, v2, Le/m/a/c/j1/g;->e:I

    add-int/2addr v4, v3

    iput v4, v2, Le/m/a/c/j1/g;->e:I

    .line 13
    iget-object v4, v2, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    const/4 v6, 0x4

    .line 14
    invoke-virtual {v4, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :goto_1
    invoke-static {v3}, Ln3/g0/y;->r(Z)V

    .line 17
    iget p1, v2, Le/m/a/c/j1/g;->i:I

    if-nez p1, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    iput v5, v2, Le/m/a/c/j1/g;->i:I

    .line 19
    iget p1, v2, Le/m/a/c/j1/g;->e:I

    add-int/2addr p1, v3

    iput p1, v2, Le/m/a/c/j1/g;->e:I

    .line 20
    iget-object p1, v2, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    const/4 v4, 0x5

    .line 21
    invoke-virtual {p1, v4, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 23
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {p1, v5}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 24
    iget-object v4, v2, Le/m/a/c/j1/g;->m:Le/m/a/c/k1/b;

    .line 25
    iget-object v4, v4, Le/m/a/c/k1/b;->c:Lcom/google/android/exoplayer2/scheduler/Requirements;

    .line 26
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 27
    :cond_3
    iget-object v4, v2, Le/m/a/c/j1/g;->m:Le/m/a/c/k1/b;

    .line 28
    iget-object v6, v4, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    iget-object v7, v4, Le/m/a/c/k1/b;->e:Le/m/a/c/k1/b$b;

    .line 29
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v6, 0x0

    .line 31
    iput-object v6, v4, Le/m/a/c/k1/b;->e:Le/m/a/c/k1/b$b;

    .line 32
    sget v7, Le/m/a/c/q1/d0;->a:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_4

    iget-object v7, v4, Le/m/a/c/k1/b;->g:Le/m/a/c/k1/b$d;

    if-eqz v7, :cond_4

    .line 33
    iget-object v7, v4, Le/m/a/c/k1/b;->a:Landroid/content/Context;

    const-string v8, "connectivity"

    .line 34
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 35
    iget-object v8, v4, Le/m/a/c/k1/b;->g:Le/m/a/c/k1/b$d;

    .line 36
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 38
    iput-object v6, v4, Le/m/a/c/k1/b;->g:Le/m/a/c/k1/b$d;

    .line 39
    :cond_4
    new-instance v4, Le/m/a/c/k1/b;

    iget-object v6, v2, Le/m/a/c/j1/g;->a:Landroid/content/Context;

    iget-object v7, v2, Le/m/a/c/j1/g;->c:Le/m/a/c/k1/b$c;

    invoke-direct {v4, v6, v7, p1}, Le/m/a/c/k1/b;-><init>(Landroid/content/Context;Le/m/a/c/k1/b$c;Lcom/google/android/exoplayer2/scheduler/Requirements;)V

    iput-object v4, v2, Le/m/a/c/j1/g;->m:Le/m/a/c/k1/b;

    .line 40
    invoke-virtual {v4}, Le/m/a/c/k1/b;->b()I

    move-result p1

    .line 41
    iget-object v4, v2, Le/m/a/c/j1/g;->m:Le/m/a/c/k1/b;

    invoke-virtual {v2, v4, p1}, Le/m/a/c/j1/g;->b(Le/m/a/c/k1/b;I)V

    .line 42
    :goto_3
    iget p1, v2, Le/m/a/c/j1/g;->e:I

    add-int/2addr p1, v3

    iput p1, v2, Le/m/a/c/j1/g;->e:I

    .line 43
    iget-object p1, v2, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    const/4 v4, 0x6

    .line 44
    invoke-virtual {p1, v4, v5, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    iget-boolean p1, v2, Le/m/a/c/j1/g;->g:Z

    if-nez p1, :cond_5

    goto :goto_5

    .line 47
    :cond_5
    iput-boolean v5, v2, Le/m/a/c/j1/g;->g:Z

    .line 48
    iget p1, v2, Le/m/a/c/j1/g;->e:I

    add-int/2addr p1, v3

    iput p1, v2, Le/m/a/c/j1/g;->e:I

    .line 49
    iget-object p1, v2, Le/m/a/c/j1/g;->b:Le/m/a/c/j1/g$c;

    .line 50
    invoke-virtual {p1, v3, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 52
    invoke-virtual {v2}, Le/m/a/c/j1/g;->c()Z

    move-result p1

    .line 53
    iget-object v0, v2, Le/m/a/c/j1/g;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/j1/g$d;

    .line 54
    invoke-interface {v3, v2, v5}, Le/m/a/c/j1/g$d;->a(Le/m/a/c/j1/g;Z)V

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    .line 55
    invoke-virtual {v2}, Le/m/a/c/j1/g;->a()V

    :cond_7
    :goto_5
    return-object v1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k/q/f;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/z/c/h0;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/util/Map;Ljava/lang/String;Le/a/k/q/b;Z)Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq3/a/x2/a1<",
            "Le/a/k/q/b;",
            ">;>;",
            "Ljava/lang/String;",
            "Le/a/k/q/b;",
            "Z)",
            "Lq3/a/x2/i1<",
            "Le/a/k/q/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/x2/a1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lq3/a/x2/a1;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    new-instance p3, Le/a/k/q/b$c;

    invoke-direct {p3, p2}, Le/a/k/q/b$c;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p3
.end method
