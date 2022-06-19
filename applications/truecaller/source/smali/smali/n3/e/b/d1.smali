.class public final Ln3/e/b/d1;
.super Ln3/e/b/j1/k0;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Object;

.field public final j:Ln3/e/b/j1/r0$a;

.field public k:Z

.field public final l:Landroid/util/Size;

.field public final m:Ln3/e/b/z0;

.field public final n:Landroid/view/Surface;

.field public final o:Landroid/os/Handler;

.field public final p:Ln3/e/b/j1/i0;

.field public final q:Ln3/e/b/j1/h0;

.field public final r:Ln3/e/b/j1/q;

.field public final s:Ln3/e/b/j1/k0;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILandroid/os/Handler;Ln3/e/b/j1/i0;Ln3/e/b/j1/h0;Ln3/e/b/j1/k0;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/k0;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/b/d1;->i:Ljava/lang/Object;

    .line 3
    new-instance v0, Ln3/e/b/s;

    invoke-direct {v0, p0}, Ln3/e/b/s;-><init>(Ln3/e/b/d1;)V

    iput-object v0, p0, Ln3/e/b/d1;->j:Ln3/e/b/j1/r0$a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ln3/e/b/d1;->k:Z

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Ln3/e/b/d1;->l:Landroid/util/Size;

    .line 6
    iput-object p4, p0, Ln3/e/b/d1;->o:Landroid/os/Handler;

    .line 7
    new-instance v2, Ln3/e/b/j1/t1/b/b;

    invoke-direct {v2, p4}, Ln3/e/b/j1/t1/b/b;-><init>(Landroid/os/Handler;)V

    .line 8
    new-instance p4, Ln3/e/b/z0;

    const/4 v3, 0x2

    invoke-direct {p4, p1, p2, p3, v3}, Ln3/e/b/z0;-><init>(IIII)V

    iput-object p4, p0, Ln3/e/b/d1;->m:Ln3/e/b/z0;

    .line 9
    invoke-virtual {p4, v0, v2}, Ln3/e/b/z0;->d(Ln3/e/b/j1/r0$a;Ljava/util/concurrent/Executor;)V

    .line 10
    iget-object p1, p4, Ln3/e/b/z0;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 11
    :try_start_0
    iget-object p2, p4, Ln3/e/b/z0;->e:Ln3/e/b/j1/r0;

    invoke-interface {p2}, Ln3/e/b/j1/r0;->getSurface()Landroid/view/Surface;

    move-result-object p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iput-object p2, p0, Ln3/e/b/d1;->n:Landroid/view/Surface;

    .line 13
    iget-object p1, p4, Ln3/e/b/z0;->b:Ln3/e/b/j1/q;

    .line 14
    iput-object p1, p0, Ln3/e/b/d1;->r:Ln3/e/b/j1/q;

    .line 15
    iput-object p6, p0, Ln3/e/b/d1;->q:Ln3/e/b/j1/h0;

    .line 16
    invoke-interface {p6, v1}, Ln3/e/b/j1/h0;->c(Landroid/util/Size;)V

    .line 17
    iput-object p5, p0, Ln3/e/b/d1;->p:Ln3/e/b/j1/i0;

    .line 18
    iput-object p7, p0, Ln3/e/b/d1;->s:Ln3/e/b/j1/k0;

    .line 19
    iput-object p8, p0, Ln3/e/b/d1;->t:Ljava/lang/String;

    .line 20
    invoke-virtual {p7}, Ln3/e/b/j1/k0;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Ln3/e/b/d1$a;

    invoke-direct {p2, p0}, Ln3/e/b/d1$a;-><init>(Ln3/e/b/d1;)V

    .line 21
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 22
    new-instance p4, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {p4, p1, p2}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {p1, p4, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 23
    invoke-virtual {p0}, Ln3/e/b/j1/k0;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Ln3/e/b/r;

    invoke-direct {p2, p0}, Ln3/e/b/r;-><init>(Ln3/e/b/d1;)V

    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p2

    .line 24
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public g()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/d1;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/b/d1;->n:Landroid/view/Surface;

    invoke-static {v1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(Ln3/e/b/j1/r0;)V
    .locals 5

    const-string v0, "ProcessingSurfaceTextur"

    .line 1
    iget-boolean v1, p0, Ln3/e/b/d1;->k:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ln3/e/b/j1/r0;->b()Ln3/e/b/v0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Failed to acquire next image."

    .line 3
    invoke-static {v0, v2, p1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Ln3/e/b/v0;->x0()Ln3/e/b/u0;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5
    invoke-interface {p1}, Ln3/e/b/v0;->close()V

    return-void

    .line 6
    :cond_2
    invoke-interface {v2}, Ln3/e/b/u0;->f()Ln3/e/b/j1/o1;

    move-result-object v2

    iget-object v3, p0, Ln3/e/b/d1;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 7
    invoke-interface {p1}, Ln3/e/b/v0;->close()V

    return-void

    .line 8
    :cond_3
    iget-object v3, p0, Ln3/e/b/d1;->p:Ln3/e/b/j1/i0;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProxyBundle does not contain this id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2, v1}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-interface {p1}, Ln3/e/b/v0;->close()V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Ln3/e/b/j1/k1;

    iget-object v1, p0, Ln3/e/b/d1;->t:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ln3/e/b/j1/k1;-><init>(Ln3/e/b/v0;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Ln3/e/b/d1;->q:Ln3/e/b/j1/h0;

    invoke-interface {p1, v0}, Ln3/e/b/j1/h0;->b(Ln3/e/b/j1/k1;)V

    .line 14
    iget-object p1, v0, Ln3/e/b/j1/k1;->a:Ln3/e/b/v0;

    invoke-interface {p1}, Ln3/e/b/v0;->close()V

    :goto_1
    return-void
.end method
