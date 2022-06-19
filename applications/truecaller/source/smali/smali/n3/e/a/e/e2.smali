.class public Ln3/e/a/e/e2;
.super Ln3/e/a/e/c2;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/Object;

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public final v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ln3/e/a/e/s1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ln3/e/a/e/s1;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Ln3/e/a/e/c2;-><init>(Ln3/e/a/e/s1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    .line 3
    new-instance p2, Ln3/e/a/e/e2$a;

    invoke-direct {p2, p0}, Ln3/e/a/e/e2$a;-><init>(Ln3/e/a/e/e2;)V

    iput-object p2, p0, Ln3/e/a/e/e2;->v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 4
    iput-object p1, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string p2, "wait_for_request"

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ln3/e/a/e/r0;

    invoke-direct {p1, p0}, Ln3/e/a/e/r0;-><init>(Ln3/e/a/e/e2;)V

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/e2;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/e2;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ln3/e/a/e/k2/o/g;",
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "wait_for_request"

    .line 2
    iget-object v2, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 3
    iget-object v3, v2, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, v2, Ln3/e/a/e/s1;->d:Ljava/util/Set;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/a/e/b2;

    .line 7
    invoke-interface {v4, v1}, Ln3/e/a/e/b2;->k(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2}, Ln3/e/b/j1/t1/c/g;->g(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Ln3/e/b/j1/t1/c/e;->a(Lcom/google/common/util/concurrent/ListenableFuture;)Ln3/e/b/j1/t1/c/e;

    move-result-object v1

    new-instance v2, Ln3/e/a/e/p0;

    invoke-direct {v2, p0, p1, p2, p3}, Ln3/e/a/e/p0;-><init>(Ln3/e/a/e/e2;Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)V

    .line 9
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v2, p1}, Ln3/e/b/j1/t1/c/e;->c(Ln3/e/b/j1/t1/c/b;Ljava/util/concurrent/Executor;)Ln3/e/b/j1/t1/c/e;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/e2;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public close()V
    .locals 3

    const-string v0, "Session call close()"

    .line 1
    invoke-virtual {p0, v0}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string v1, "wait_for_request"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/e2;->u:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Ln3/e/a/e/e2;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/e/a/e/e2;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Ln3/e/a/e/q0;

    invoke-direct {v1, p0}, Ln3/e/a/e/q0;-><init>(Ln3/e/a/e/e2;)V

    .line 8
    iget-object v2, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public i(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string v1, "wait_for_request"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Ln3/e/a/e/e2;->u:Z

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    .line 4
    iget-object v4, p0, Ln3/e/a/e/e2;->v:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    aput-object v4, v2, v3

    aput-object p2, v2, v1

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6
    new-instance v1, Ln3/e/a/e/d1;

    invoke-direct {v1, p2}, Ln3/e/a/e/d1;-><init>(Ljava/util/List;)V

    .line 7
    invoke-super {p0, p1, v1}, Ln3/e/a/e/c2;->i(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Ln3/e/a/e/c2;->i(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/util/List;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Ln3/e/a/e/e2;->s:Ljava/util/List;

    .line 3
    invoke-super {p0, p1, p2, p3}, Ln3/e/a/e/c2;->j(Ljava/util/List;J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "wait_for_request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/e/a/e/e2;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public n(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/e2;->w()V

    const-string v0, "onClosed()"

    .line 2
    invoke-virtual {p0, v0}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Ln3/e/a/e/c2;->n(Ln3/e/a/e/b2;)V

    return-void
.end method

.method public p(Ln3/e/a/e/b2;)V
    .locals 4

    const-string v0, "Session onConfigured()"

    .line 1
    invoke-virtual {p0, v0}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string v1, "force_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    iget-object v1, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 5
    iget-object v2, v1, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Ln3/e/a/e/s1;->e:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/a/e/b2;

    if-ne v2, p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/a/e/b2;

    .line 10
    invoke-interface {v1}, Ln3/e/a/e/b2;->b()Ln3/e/a/e/b2$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Ln3/e/a/e/b2$a;->o(Ln3/e/a/e/b2;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_2
    invoke-super {p0, p1}, Ln3/e/a/e/c2;->p(Ln3/e/a/e/b2;)V

    .line 13
    iget-object v0, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string v1, "force_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    iget-object v1, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 16
    iget-object v2, v1, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Ln3/e/a/e/s1;->c:Ljava/util/Set;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/a/e/b2;

    if-ne v2, p1, :cond_3

    goto :goto_4

    .line 19
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/a/e/b2;

    .line 21
    invoke-interface {v0}, Ln3/e/a/e/b2;->b()Ln3/e/a/e/b2$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln3/e/a/e/b2$a;->n(Ln3/e/a/e/b2;)V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 22
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    return-void
.end method

.method public stop()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ln3/e/a/e/c2;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/e/a/e/e2;->w()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/e2;->t:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ln3/e/a/e/c2;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/e2;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/e2;->s:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "deferrableSurface == null, maybe forceClose, skip close"

    .line 3
    invoke-virtual {p0, v1}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/e2;->p:Ljava/util/Set;

    const-string v2, "deferrableSurface_close"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Ln3/e/a/e/e2;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/k0;

    .line 7
    invoke-virtual {v2}, Ln3/e/b/j1/k0;->a()V

    goto :goto_0

    :cond_1
    const-string v1, "deferrableSurface closed"

    .line 8
    invoke-virtual {p0, v1}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncCaptureSessionImpl"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic y()V
    .locals 1

    const-string v0, "Session call super.close()"

    .line 1
    invoke-virtual {p0, v0}, Ln3/e/a/e/e2;->x(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Ln3/e/a/e/c2;->close()V

    return-void
.end method

.method public synthetic z(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/e/a/e/c2;->a(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
