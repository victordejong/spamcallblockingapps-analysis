.class public final synthetic Ln3/e/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/m;->a:Ln3/e/b/p0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ln3/e/b/m;->a:Ln3/e/b/p0;

    .line 1
    iget-object v1, v0, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    .line 2
    iget-object v2, v1, Ln3/e/b/j1/c0;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v1, Ln3/e/b/j1/c0;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, v1, Ln3/e/b/j1/c0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    :cond_0
    monitor-exit v2

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, v1, Ln3/e/b/j1/c0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Ln3/e/b/j1/a;

    invoke-direct {v3, v1}, Ln3/e/b/j1/a;-><init>(Ln3/e/b/j1/c0;)V

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 7
    iput-object v3, v1, Ln3/e/b/j1/c0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    :cond_2
    iget-object v4, v1, Ln3/e/b/j1/c0;->c:Ljava/util/Set;

    iget-object v5, v1, Ln3/e/b/j1/c0;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v4, v1, Ln3/e/b/j1/c0;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/b0;

    .line 10
    invoke-interface {v5}, Ln3/e/b/j1/b0;->release()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    new-instance v7, Ln3/e/b/j1/b;

    invoke-direct {v7, v1, v5}, Ln3/e/b/j1/b;-><init>(Ln3/e/b/j1/c0;Ln3/e/b/j1/b0;)V

    .line 11
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 12
    invoke-interface {v6, v7, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, v1, Ln3/e/b/j1/c0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 15
    :goto_1
    new-instance v2, Ln3/e/b/i;

    invoke-direct {v2, v0, p1}, Ln3/e/b/i;-><init>(Ln3/e/b/p0;Ln3/h/a/b;)V

    iget-object p1, v0, Ln3/e/b/p0;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "CameraX shutdownInternal"

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
