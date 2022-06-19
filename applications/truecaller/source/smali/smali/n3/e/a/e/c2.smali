.class public Ln3/e/a/e/c2;
.super Ln3/e/a/e/b2$a;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/b2;
.implements Ln3/e/a/e/f2$b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ln3/e/a/e/s1;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Ln3/e/a/e/b2$a;

.field public g:Ln3/e/a/e/k2/b;

.field public h:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ln3/e/a/e/s1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/e/a/e/b2$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/e/a/e/c2;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/e/a/e/c2;->l:Z

    .line 5
    iput-boolean v0, p0, Ln3/e/a/e/c2;->m:Z

    .line 6
    iput-boolean v0, p0, Ln3/e/a/e/c2;->n:Z

    .line 7
    iput-object p1, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 8
    iput-object p4, p0, Ln3/e/a/e/c2;->c:Landroid/os/Handler;

    .line 9
    iput-object p2, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p3, p0, Ln3/e/a/e/c2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
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
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/c2;->m:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Opener is disabled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {p2, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v0

    return-object p2

    .line 6
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 7
    iget-object v2, v1, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, v1, Ln3/e/a/e/s1;->e:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v1, p0, Ln3/e/a/e/c2;->c:Landroid/os/Handler;

    .line 11
    new-instance v2, Ln3/e/a/e/k2/f;

    invoke-direct {v2, p1, v1}, Ln3/e/a/e/k2/f;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V

    .line 12
    new-instance p1, Ln3/e/a/e/l0;

    invoke-direct {p1, p0, p3, v2, p2}, Ln3/e/a/e/l0;-><init>(Ln3/e/a/e/c2;Ljava/util/List;Ln3/e/a/e/k2/f;Ln3/e/a/e/k2/o/g;)V

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    new-instance p2, Ln3/e/a/e/c2$a;

    invoke-direct {p2, p0}, Ln3/e/a/e/c2$a;-><init>(Ln3/e/a/e/c2;)V

    .line 14
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 15
    new-instance v1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v1, p1, p2}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {p1, v1, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 16
    iget-object p1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public b()Ln3/e/a/e/b2$a;
    .locals 0

    return-object p0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    invoke-virtual {v0}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 3
    iget-object v1, v0, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, Ln3/e/a/e/s1;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    invoke-virtual {v0}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 7
    iget-object v0, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v1, Ln3/e/a/e/o0;

    invoke-direct {v1, p0}, Ln3/e/a/e/o0;-><init>(Ln3/e/a/e/c2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    invoke-virtual {v0}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, v0, Ln3/e/a/e/k2/b;->a:Ln3/e/a/e/k2/b$a;

    invoke-interface {v0, p1, v1, p2}, Ln3/e/a/e/k2/b$a;->a(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public f()Ln3/e/a/e/k2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    return-object v0
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    invoke-virtual {v0}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/c2;->v()V

    return-void
.end method

.method public i(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    const-string v1, "Need to call openCaptureSession before using this API."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->g:Ln3/e/a/e/k2/b;

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v0, v0, Ln3/e/a/e/k2/b;->a:Ln3/e/a/e/k2/b$a;

    invoke-interface {v0, p1, v1, p2}, Ln3/e/a/e/k2/b$a;->b(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/util/List;J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
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
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/c2;->m:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string p2, "Opener is disabled"

    invoke-direct {p1, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {p2, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v0

    return-object p2

    :cond_0
    const/4 v7, 0x0

    .line 6
    iget-object v4, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 7
    iget-object v3, p0, Ln3/e/a/e/c2;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/k0;

    .line 10
    invoke-virtual {v5}, Ln3/e/b/j1/k0;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance v8, Ln3/e/b/j1/g;

    move-object v1, v8

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Ln3/e/b/j1/g;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;JZ)V

    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 12
    invoke-static {p2}, Ln3/e/b/j1/t1/c/e;->a(Lcom/google/common/util/concurrent/ListenableFuture;)Ln3/e/b/j1/t1/c/e;

    move-result-object p2

    new-instance p3, Ln3/e/a/e/n0;

    invoke-direct {p3, p0, p1}, Ln3/e/a/e/n0;-><init>(Ln3/e/a/e/c2;Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p2, p3, p1}, Ln3/e/b/j1/t1/c/e;->c(Ln3/e/b/j1/t1/c/b;Ljava/util/concurrent/Executor;)Ln3/e/b/j1/t1/c/e;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/c2;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
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

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public l(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1}, Ln3/e/a/e/b2$a;->l(Ln3/e/a/e/b2;)V

    return-void
.end method

.method public m(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1}, Ln3/e/a/e/b2$a;->m(Ln3/e/a/e/b2;)V

    return-void
.end method

.method public n(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/c2;->l:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ln3/e/a/e/c2;->l:Z

    .line 4
    iget-object v1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v2, "Need to call openCaptureSession before using this API."

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Ln3/e/a/e/c2;->v()V

    if-eqz v1, :cond_1

    .line 8
    new-instance v0, Ln3/e/a/e/m0;

    invoke-direct {v0, p0, p1}, Ln3/e/a/e/m0;-><init>(Ln3/e/a/e/c2;Ln3/e/a/e/b2;)V

    .line 9
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 10
    invoke-interface {v1, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o(Ln3/e/a/e/b2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/c2;->v()V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 3
    invoke-virtual {v0, p0}, Ln3/e/a/e/s1;->a(Ln3/e/a/e/b2;)V

    .line 4
    iget-object v1, v0, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Ln3/e/a/e/s1;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1}, Ln3/e/a/e/b2$a;->o(Ln3/e/a/e/b2;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->b:Ln3/e/a/e/s1;

    .line 2
    iget-object v1, v0, Ln3/e/a/e/s1;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, v0, Ln3/e/a/e/s1;->c:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, v0, Ln3/e/a/e/s1;->e:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0, p0}, Ln3/e/a/e/s1;->a(Ln3/e/a/e/b2;)V

    .line 7
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1}, Ln3/e/a/e/b2$a;->p(Ln3/e/a/e/b2;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1}, Ln3/e/a/e/b2$a;->q(Ln3/e/a/e/b2;)V

    return-void
.end method

.method public r(Ln3/e/a/e/b2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/c2;->n:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ln3/e/a/e/c2;->n:Z

    .line 4
    iget-object v1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v2, "Need to call openCaptureSession before using this API."

    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Ln3/e/a/e/k0;

    invoke-direct {v0, p0, p1}, Ln3/e/a/e/k0;-><init>(Ln3/e/a/e/c2;Ln3/e/a/e/b2;)V

    .line 8
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 9
    invoke-interface {v1, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public s(Ln3/e/a/e/b2;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, p1, p2}, Ln3/e/a/e/b2$a;->s(Ln3/e/a/e/b2;Landroid/view/Surface;)V

    return-void
.end method

.method public stop()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v3, p0, Ln3/e/a/e/c2;->m:Z

    if-nez v3, :cond_1

    .line 3
    iget-object v3, p0, Ln3/e/a/e/c2;->j:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v3, :cond_0

    move-object v1, v3

    .line 4
    :cond_0
    iput-boolean v0, p0, Ln3/e/a/e/c2;->m:Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Ln3/e/a/e/c2;->u()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    return v3

    :catchall_0
    move-exception v3

    .line 7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    :cond_4
    throw v2
.end method

.method public t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/j1/k0$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ln3/e/a/e/c2;->v()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/k0;

    invoke-virtual {v2}, Ln3/e/b/j1/k0;->e()V

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catch Ln3/e/b/j1/k0$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 6
    :try_start_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/k0;

    invoke-virtual {v3}, Ln3/e/b/j1/k0;->b()V

    goto :goto_0

    .line 7
    :cond_1
    throw v2

    .line 8
    :cond_2
    :goto_1
    iput-object p1, p0, Ln3/e/a/e/c2;->k:Ljava/util/List;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public u()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c2;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c2;->k:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/k0;

    .line 4
    invoke-virtual {v2}, Ln3/e/b/j1/k0;->b()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ln3/e/a/e/c2;->k:Ljava/util/List;

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
