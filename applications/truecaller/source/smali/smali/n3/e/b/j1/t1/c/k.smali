.class public Ln3/e/b/j1/t1/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ln3/e/b/j1/t1/c/i;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/t1/c/i;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/c/k;->c:Ln3/e/b/j1/t1/c/i;

    iput p2, p0, Ln3/e/b/j1/t1/c/k;->a:I

    iput-object p3, p0, Ln3/e/b/j1/t1/c/k;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/c/k;->c:Ln3/e/b/j1/t1/c/i;

    iget v1, p0, Ln3/e/b/j1/t1/c/k;->a:I

    iget-object v2, p0, Ln3/e/b/j1/t1/c/k;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v3, "Less than 0 remaining futures"

    .line 2
    iget-object v4, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Ln3/e/b/j1/t1/c/i;->isDone()Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v4, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v8

    const-string v9, "Tried to set value from future which is not done"

    invoke-static {v8, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 5
    invoke-static {v2}, Ln3/e/b/j1/t1/c/g;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 7
    :goto_0
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v1, :cond_e

    .line 8
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 9
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 10
    :try_start_1
    iget-object v2, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    invoke-virtual {v2, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    .line 12
    :goto_1
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v1, :cond_e

    .line 13
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 14
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    .line 15
    :try_start_2
    iget-boolean v2, v0, Ln3/e/b/j1/t1/c/i;->c:Z

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    invoke-virtual {v2, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_3
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    .line 18
    :goto_2
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v1, :cond_e

    .line 19
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 20
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :catch_2
    move-exception v1

    .line 21
    :try_start_3
    iget-boolean v2, v0, Ln3/e/b/j1/t1/c/i;->c:Z

    if-eqz v2, :cond_5

    .line 22
    iget-object v2, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :cond_5
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_3

    :cond_6
    move v6, v7

    .line 24
    :goto_3
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v1, :cond_e

    .line 25
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 26
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 27
    :catch_3
    :try_start_4
    iget-boolean v1, v0, Ln3/e/b/j1/t1/c/i;->c:Z

    if-eqz v1, :cond_7

    .line 28
    invoke-virtual {v0, v7}, Ln3/e/b/j1/t1/c/i;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :cond_7
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_8

    goto :goto_4

    :cond_8
    move v6, v7

    .line 30
    :goto_4
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v1, :cond_e

    .line 31
    iget-object v1, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 32
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    invoke-virtual {v0, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    goto :goto_a

    .line 33
    :cond_9
    invoke-virtual {v0}, Ln3/e/b/j1/t1/c/i;->isDone()Z

    move-result v0

    .line 34
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    goto :goto_a

    .line 35
    :goto_6
    iget-object v2, v0, Ln3/e/b/j1/t1/c/i;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_7

    :cond_a
    move v6, v7

    .line 36
    :goto_7
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-nez v2, :cond_c

    .line 37
    iget-object v2, v0, Ln3/e/b/j1/t1/c/i;->b:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 38
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->f:Ln3/h/a/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    goto :goto_8

    .line 39
    :cond_b
    invoke-virtual {v0}, Ln3/e/b/j1/t1/c/i;->isDone()Z

    move-result v0

    .line 40
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 41
    :cond_c
    :goto_8
    throw v1

    .line 42
    :cond_d
    :goto_9
    iget-boolean v0, v0, Ln3/e/b/j1/t1/c/i;->c:Z

    const-string v1, "Future was done before all dependencies completed"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    :cond_e
    :goto_a
    return-void
.end method
