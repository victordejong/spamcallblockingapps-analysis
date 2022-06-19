.class public Ln3/e/a/e/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/z0$a;,
        Ln3/e/a/e/z0$b;,
        Ln3/e/a/e/z0$c;
    }
.end annotation


# static fields
.field public static final synthetic s:I


# instance fields
.field public final a:Ln3/e/a/e/z0$b;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ln3/e/a/e/k2/e;

.field public final e:Ln3/e/b/j1/w$b;

.field public final f:Ln3/e/b/j1/j1$b;

.field public volatile g:Landroid/util/Rational;

.field public final h:Ln3/e/a/e/x1;

.field public final i:Ln3/e/a/e/i2;

.field public final j:Ln3/e/a/e/h2;

.field public final k:Ln3/e/a/e/u1;

.field public final l:Ln3/e/a/f/h;

.field public final m:Ln3/e/a/e/k2/q/a;

.field public n:I

.field public volatile o:Z

.field public volatile p:I

.field public final q:Ln3/e/a/e/k2/q/b;

.field public final r:Ln3/e/a/e/z0$a;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/e;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ln3/e/b/j1/w$b;Ln3/e/b/j1/g1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/z0;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ln3/e/b/j1/j1$b;

    invoke-direct {v0}, Ln3/e/b/j1/j1$b;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/z0;->f:Ln3/e/b/j1/j1$b;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ln3/e/a/e/z0;->g:Landroid/util/Rational;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Ln3/e/a/e/z0;->n:I

    .line 6
    iput-boolean v1, p0, Ln3/e/a/e/z0;->o:Z

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Ln3/e/a/e/z0;->p:I

    .line 8
    new-instance v1, Ln3/e/a/e/k2/q/b;

    invoke-direct {v1}, Ln3/e/a/e/k2/q/b;-><init>()V

    iput-object v1, p0, Ln3/e/a/e/z0;->q:Ln3/e/a/e/k2/q/b;

    .line 9
    new-instance v1, Ln3/e/a/e/z0$a;

    invoke-direct {v1}, Ln3/e/a/e/z0$a;-><init>()V

    iput-object v1, p0, Ln3/e/a/e/z0;->r:Ln3/e/a/e/z0$a;

    .line 10
    iput-object p1, p0, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    .line 11
    iput-object p4, p0, Ln3/e/a/e/z0;->e:Ln3/e/b/j1/w$b;

    .line 12
    iput-object p3, p0, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    .line 13
    new-instance p4, Ln3/e/a/e/z0$b;

    invoke-direct {p4, p3}, Ln3/e/a/e/z0$b;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Ln3/e/a/e/z0;->a:Ln3/e/a/e/z0$b;

    .line 14
    iget-object v2, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    const/4 v3, 0x1

    .line 15
    iput v3, v2, Ln3/e/b/j1/g0$a;->c:I

    .line 16
    new-instance v2, Ln3/e/a/e/p1;

    invoke-direct {v2, p4}, Ln3/e/a/e/p1;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 17
    iget-object p4, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {p4, v2}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 18
    iget-object p4, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {p4, v1}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 19
    new-instance p4, Ln3/e/a/e/u1;

    invoke-direct {p4, p0, p1, p3}, Ln3/e/a/e/u1;-><init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Ln3/e/a/e/z0;->k:Ln3/e/a/e/u1;

    .line 20
    new-instance p4, Ln3/e/a/e/x1;

    invoke-direct {p4, p0, p2, p3}, Ln3/e/a/e/x1;-><init>(Ln3/e/a/e/z0;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Ln3/e/a/e/z0;->h:Ln3/e/a/e/x1;

    .line 21
    new-instance p2, Ln3/e/a/e/i2;

    invoke-direct {p2, p0, p1, p3}, Ln3/e/a/e/i2;-><init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 22
    new-instance p2, Ln3/e/a/e/h2;

    invoke-direct {p2, p0, p1, p3}, Ln3/e/a/e/h2;-><init>(Ln3/e/a/e/z0;Ln3/e/a/e/k2/e;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Ln3/e/a/e/z0;->j:Ln3/e/a/e/h2;

    .line 23
    new-instance p1, Ln3/e/a/e/k2/q/a;

    invoke-direct {p1, p5}, Ln3/e/a/e/k2/q/a;-><init>(Ln3/e/b/j1/g1;)V

    iput-object p1, p0, Ln3/e/a/e/z0;->m:Ln3/e/a/e/k2/q/a;

    .line 24
    new-instance p1, Ln3/e/a/f/h;

    invoke-direct {p1, p0, p3}, Ln3/e/a/f/h;-><init>(Ln3/e/a/e/z0;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    .line 25
    new-instance p1, Ln3/e/a/e/g;

    invoke-direct {p1, p0}, Ln3/e/a/e/g;-><init>(Ln3/e/a/e/z0;)V

    check-cast p3, Ln3/e/b/j1/t1/b/d;

    invoke-virtual {p3, p1}, Ln3/e/b/j1/t1/b/d;->execute(Ljava/lang/Runnable;)V

    .line 26
    new-instance p1, Ln3/e/a/e/j0;

    invoke-direct {p1, p0}, Ln3/e/a/e/j0;-><init>(Ln3/e/a/e/z0;)V

    invoke-virtual {p3, p1}, Ln3/e/b/j1/t1/b/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/z0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ln3/e/b/i0$a;

    const-string v0, "Camera is not active."

    invoke-direct {p1, v0}, Ln3/e/b/i0$a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 5
    iget-object v1, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    invoke-virtual {v2, p1}, Ln3/e/a/e/j2;->b(F)V

    .line 7
    iget-object p1, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    invoke-static {p1}, Ln3/e/b/k1/d;->b(Ln3/e/b/i1;)Ln3/e/b/i1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0, p1}, Ln3/e/a/e/i2;->b(Ln3/e/b/i1;)V

    .line 10
    new-instance v1, Ln3/e/a/e/v0;

    invoke-direct {v1, v0, p1}, Ln3/e/a/e/v0;-><init>(Ln3/e/a/e/i2;Ln3/e/b/i1;)V

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    .line 13
    :goto_0
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 14
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/z0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ln3/e/b/i0$a;

    const-string v0, "Camera is not active."

    invoke-direct {p1, v0}, Ln3/e/b/i0$a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/z0;->j:Ln3/e/a/e/h2;

    .line 5
    iget-boolean v1, v0, Ln3/e/a/e/h2;->c:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    const-string v0, "TorchControl"

    const-string v1, "Unable to enableTorch due to there is no flash unit."

    .line 6
    invoke-static {v0, v1, p1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No flash unit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, v0, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln3/e/a/e/h2;->a(Ln3/v/k0;Ljava/lang/Object;)V

    .line 10
    new-instance v1, Ln3/e/a/e/t0;

    invoke-direct {v1, v0, p1}, Ln3/e/a/e/t0;-><init>(Ln3/e/a/e/h2;Z)V

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 11
    :goto_0
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public c(Ln3/e/b/r0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/r0;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ln3/e/b/s0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/z0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ln3/e/b/i0$a;

    const-string v0, "Camera is not active."

    invoke-direct {p1, v0}, Ln3/e/b/i0$a;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/z0;->h:Ln3/e/a/e/x1;

    iget-object v1, p0, Ln3/e/a/e/z0;->g:Landroid/util/Rational;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ln3/e/a/e/f0;

    invoke-direct {v2, v0, p1, v1}, Ln3/e/a/e/f0;-><init>(Ln3/e/a/e/x1;Ln3/e/b/r0;Landroid/util/Rational;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public d(Ln3/e/b/j1/j0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    .line 2
    invoke-static {p1}, Ln3/e/a/f/i$a;->b(Ln3/e/b/j1/j0;)Ln3/e/a/f/i$a;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/f/i$a;->a()Ln3/e/a/f/i;

    move-result-object p1

    .line 3
    iget-object v1, v0, Ln3/e/a/f/h;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-interface {p1}, Ln3/e/b/j1/i1;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/j0$a;

    .line 5
    iget-object v4, v0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    .line 6
    iget-object v4, v4, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    .line 7
    invoke-interface {p1, v3}, Ln3/e/b/j1/i1;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    sget-object v6, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v4, v3, v6, v5}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p1, Ln3/e/a/f/f;

    invoke-direct {p1, v0}, Ln3/e/a/f/f;-><init>(Ln3/e/a/f/h;)V

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 11
    sget-object v0, Ln3/e/a/e/j;->a:Ln3/e/a/e/j;

    .line 12
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 13
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ln3/e/b/j1/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    invoke-virtual {v0}, Ln3/e/a/f/h;->a()Ln3/e/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    .line 2
    iget-object v1, v0, Ln3/e/a/f/h;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ln3/e/a/d/a$a;

    invoke-direct {v2}, Ln3/e/a/d/a$a;-><init>()V

    iput-object v2, v0, Ln3/e/a/f/h;->f:Ln3/e/a/d/a$a;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v1, Ln3/e/a/f/d;

    invoke-direct {v1, v0}, Ln3/e/a/f/d;-><init>(Ln3/e/a/f/h;)V

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 6
    sget-object v1, Ln3/e/a/e/i;->a:Ln3/e/a/e/i;

    .line 7
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

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

.method public h(Ln3/e/a/e/z0$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->a:Ln3/e/a/e/z0$b;

    .line 2
    iget-object v0, v0, Ln3/e/a/e/z0$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Ln3/e/a/e/z0;->n:I

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Ln3/e/a/e/z0;->n:I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Decrementing use count occurs more times than incrementing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Z)V
    .locals 8

    .line 1
    sget-object v0, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    const-class v1, Ljava/lang/Object;

    iput-boolean p1, p0, Ln3/e/a/e/z0;->o:Z

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ln3/e/b/j1/g0$a;

    invoke-direct {p1}, Ln3/e/b/j1/g0$a;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput v2, p1, Ln3/e/b/j1/g0$a;->c:I

    .line 4
    iput-boolean v2, p1, Ln3/e/b/j1/g0$a;->e:Z

    .line 5
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v3

    .line 6
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7
    invoke-virtual {p0, v2}, Ln3/e/a/e/z0;->k(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    sget-object v5, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    const-string v5, "camera2.captureRequest.option."

    .line 9
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    new-instance v7, Ln3/e/b/j1/n;

    invoke-direct {v7, v6, v1, v4}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v3, v7, v0, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 12
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    sget-object v6, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    .line 15
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Ln3/e/b/j1/n;

    invoke-direct {v6, v5, v1, v2}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Ln3/e/a/d/a;

    invoke-static {v3}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    .line 19
    invoke-virtual {p1, v0}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 20
    invoke-virtual {p1}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ln3/e/a/e/z0;->q(Ljava/util/List;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Ln3/e/a/e/z0;->r()V

    return-void
.end method

.method public final k(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public l(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return p1

    :cond_1
    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p1

    :cond_3
    return v1
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Ln3/e/a/e/z0;->n:I

    monitor-exit v0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n(I[I)Z
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o(Ln3/e/a/e/z0$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->a:Ln3/e/a/e/z0$b;

    .line 2
    iget-object v0, v0, Ln3/e/a/e/z0$b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->h:Ln3/e/a/e/x1;

    .line 2
    iget-boolean v1, v0, Ln3/e/a/e/x1;->d:Z

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, v0, Ln3/e/a/e/x1;->d:Z

    .line 4
    iget-boolean v1, v0, Ln3/e/a/e/x1;->d:Z

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ln3/e/a/e/x1;->a()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 7
    iget-boolean v1, v0, Ln3/e/a/e/i2;->f:Z

    if-ne v1, p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iput-boolean p1, v0, Ln3/e/a/e/i2;->f:Z

    if-nez p1, :cond_3

    .line 9
    iget-object v1, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Ln3/e/a/e/j2;->b(F)V

    .line 11
    iget-object v2, v0, Ln3/e/a/e/i2;->c:Ln3/e/a/e/j2;

    invoke-static {v2}, Ln3/e/b/k1/d;->b(Ln3/e/b/i1;)Ln3/e/b/i1;

    move-result-object v2

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0, v2}, Ln3/e/a/e/i2;->b(Ln3/e/b/i1;)V

    .line 14
    iget-object v1, v0, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    invoke-interface {v1}, Ln3/e/a/e/i2$b;->f()V

    .line 15
    iget-object v0, v0, Ln3/e/a/e/i2;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->r()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 17
    :cond_3
    :goto_1
    iget-object v0, p0, Ln3/e/a/e/z0;->j:Ln3/e/a/e/h2;

    .line 18
    iget-boolean v1, v0, Ln3/e/a/e/h2;->e:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iput-boolean p1, v0, Ln3/e/a/e/h2;->e:Z

    if-nez p1, :cond_6

    .line 20
    iget-boolean v1, v0, Ln3/e/a/e/h2;->g:Z

    if-eqz v1, :cond_5

    .line 21
    iput-boolean v2, v0, Ln3/e/a/e/h2;->g:Z

    .line 22
    iget-object v1, v0, Ln3/e/a/e/h2;->a:Ln3/e/a/e/z0;

    invoke-virtual {v1, v2}, Ln3/e/a/e/z0;->j(Z)V

    .line 23
    iget-object v1, v0, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ln3/e/a/e/h2;->a(Ln3/v/k0;Ljava/lang/Object;)V

    .line 24
    :cond_5
    iget-object v1, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    if-eqz v1, :cond_6

    const-string v3, "Camera is not active."

    .line 25
    invoke-static {v3, v1}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Ln3/e/a/e/h2;->f:Ln3/h/a/b;

    .line 27
    :cond_6
    :goto_2
    iget-object v0, p0, Ln3/e/a/e/z0;->k:Ln3/e/a/e/u1;

    .line 28
    iget-boolean v1, v0, Ln3/e/a/e/u1;->d:Z

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 29
    :cond_7
    iput-boolean p1, v0, Ln3/e/a/e/u1;->d:Z

    if-nez p1, :cond_8

    .line 30
    iget-object v0, v0, Ln3/e/a/e/u1;->b:Ln3/e/a/e/v1;

    .line 31
    iget-object v1, v0, Ln3/e/a/e/v1;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_2
    iput v2, v0, Ln3/e/a/e/v1;->b:I

    .line 33
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 34
    :cond_8
    :goto_3
    iget-object v0, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    .line 35
    iget-object v1, v0, Ln3/e/a/f/h;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/f/e;

    invoke-direct {v2, v0, p1}, Ln3/e/a/f/e;-><init>(Ln3/e/a/f/h;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->e:Ln3/e/b/j1/w$b;

    check-cast v0, Ln3/e/a/e/b1$d;

    .line 2
    iget-object v0, v0, Ln3/e/a/e/b1$d;->a:Ln3/e/a/e/b1;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/g0;

    .line 7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v5, Ln3/e/b/j1/b1;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iget-object v5, v2, Ln3/e/b/j1/g0;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v5, v2, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    invoke-static {v5}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object v5

    .line 13
    iget v8, v2, Ln3/e/b/j1/g0;->c:I

    .line 14
    iget-object v6, v2, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 15
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-boolean v10, v2, Ln3/e/b/j1/g0;->e:Z

    .line 17
    iget-object v6, v2, Ln3/e/b/j1/g0;->f:Ln3/e/b/j1/o1;

    .line 18
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    iget-object v11, v6, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 20
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 21
    invoke-virtual {v6, v12}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_0
    new-instance v6, Ln3/e/b/j1/b1;

    invoke-direct {v6, v7}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    .line 23
    invoke-virtual {v2}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 24
    iget-boolean v2, v2, Ln3/e/b/j1/g0;->e:Z

    if-eqz v2, :cond_5

    .line 25
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const-string v7, "Camera2CameraImpl"

    const/4 v11, 0x0

    if-nez v2, :cond_1

    const-string v2, "The capture config builder already has surface inside."

    .line 26
    invoke-static {v7, v2, v3}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 27
    :cond_1
    iget-object v2, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    .line 28
    sget-object v12, Ln3/e/b/j1/k;->a:Ln3/e/b/j1/k;

    .line 29
    invoke-virtual {v2, v12}, Ln3/e/b/j1/p1;->c(Ln3/e/b/j1/p1$a;)Ljava/util/Collection;

    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/e/b/j1/j1;

    .line 32
    iget-object v12, v12, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 33
    invoke-virtual {v12}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v12

    .line 34
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 35
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/e/b/j1/k0;

    .line 36
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Unable to find a repeating surface to attach to CaptureConfig"

    .line 38
    invoke-static {v7, v2, v3}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    const/4 v11, 0x1

    :goto_3
    if-nez v11, :cond_5

    goto/16 :goto_0

    .line 39
    :cond_5
    new-instance v2, Ln3/e/b/j1/g0;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-static {v5}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v7

    .line 41
    sget-object v4, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 42
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 43
    iget-object v5, v6, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 45
    invoke-virtual {v6, v11}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 46
    :cond_6
    new-instance v11, Ln3/e/b/j1/o1;

    invoke-direct {v11, v4}, Ln3/e/b/j1/o1;-><init>(Ljava/util/Map;)V

    move-object v5, v2

    move-object v6, v3

    .line 47
    invoke-direct/range {v5 .. v11}, Ln3/e/b/j1/g0;-><init>(Ljava/util/List;Ln3/e/b/j1/j0;ILjava/util/List;ZLn3/e/b/j1/o1;)V

    .line 48
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-string p1, "Issue capture request"

    .line 49
    invoke-virtual {v0, p1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object p1, v0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    invoke-virtual {p1, v1}, Ln3/e/a/e/r1;->d(Ljava/util/List;)V

    return-void
.end method

.method public r()V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/a/e/z0;->f:Ln3/e/b/j1/j1$b;

    .line 2
    new-instance v1, Ln3/e/a/d/a$a;

    invoke-direct {v1}, Ln3/e/a/d/a$a;-><init>()V

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-virtual {v1, v2, v4}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 6
    iget-object v2, p0, Ln3/e/a/e/z0;->h:Ln3/e/a/e/x1;

    .line 7
    iget-boolean v4, v2, Ln3/e/a/e/x1;->e:Z

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 8
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v2, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 9
    invoke-virtual {v6, v4}, Ln3/e/a/e/z0;->l(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v5, v4}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 11
    iget-object v4, v2, Ln3/e/a/e/x1;->m:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v5, v4

    if-eqz v5, :cond_1

    .line 12
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v4}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 13
    :cond_1
    iget-object v4, v2, Ln3/e/a/e/x1;->n:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v5, v4

    if-eqz v5, :cond_2

    .line 14
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v5, v4}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 15
    :cond_2
    iget-object v2, v2, Ln3/e/a/e/x1;->o:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v4, v2

    if-eqz v4, :cond_3

    .line 16
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v2}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 17
    :cond_3
    iget-object v2, p0, Ln3/e/a/e/z0;->m:Ln3/e/a/e/k2/q/a;

    .line 18
    iget-object v2, v2, Ln3/e/a/e/k2/q/a;->a:Landroid/util/Range;

    if-eqz v2, :cond_4

    .line 19
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v2}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 20
    :cond_4
    iget-object v2, p0, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 21
    iget-object v2, v2, Ln3/e/a/e/i2;->e:Ln3/e/a/e/i2$b;

    invoke-interface {v2, v1}, Ln3/e/a/e/i2$b;->b(Ln3/e/a/d/a$a;)V

    .line 22
    iget-boolean v2, p0, Ln3/e/a/e/z0;->o:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    .line 23
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 25
    invoke-virtual {v1, v2, v4}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    goto :goto_1

    .line 26
    :cond_5
    iget v2, p0, Ln3/e/a/e/z0;->p:I

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    goto :goto_2

    .line 27
    :cond_7
    iget-object v2, p0, Ln3/e/a/e/z0;->q:Ln3/e/a/e/k2/q/b;

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v2, Ln3/e/a/e/k2/p/d;

    invoke-static {v2}, Ln3/e/a/e/k2/p/e;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v2

    check-cast v2, Ln3/e/a/e/k2/p/d;

    if-eqz v2, :cond_8

    move v4, v3

    :cond_8
    move v2, v4

    .line 30
    :goto_2
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v2}, Ln3/e/a/e/z0;->k(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 31
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 32
    iget-object v4, p0, Ln3/e/a/e/z0;->d:Ln3/e/a/e/k2/e;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    if-nez v4, :cond_9

    goto :goto_3

    .line 33
    :cond_9
    invoke-virtual {p0, v3, v4}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_4

    .line 34
    :cond_a
    invoke-virtual {p0, v3, v4}, Ln3/e/a/e/z0;->n(I[I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    move v3, v5

    .line 35
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 37
    iget-object v2, p0, Ln3/e/a/e/z0;->k:Ln3/e/a/e/u1;

    .line 38
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, v2, Ln3/e/a/e/u1;->b:Ln3/e/a/e/v1;

    .line 40
    iget-object v4, v2, Ln3/e/a/e/v1;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 41
    :try_start_0
    iget v2, v2, Ln3/e/a/e/v1;->b:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v3, v2}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    .line 44
    iget-object v2, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    invoke-virtual {v2}, Ln3/e/a/f/h;->a()Ln3/e/a/d/a;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ln3/e/b/j1/j0;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/b/j1/j0$a;

    .line 46
    iget-object v5, v1, Ln3/e/a/d/a$a;->a:Ln3/e/b/j1/a1;

    .line 47
    sget-object v6, Ln3/e/b/j1/j0$c;->a:Ln3/e/b/j1/j0$c;

    .line 48
    invoke-interface {v2, v4}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    invoke-virtual {v5, v4, v6, v7}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    :cond_c
    invoke-virtual {v1}, Ln3/e/a/d/a$a;->a()Ln3/e/a/d/a;

    move-result-object v1

    .line 51
    iget-object v0, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 52
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v1}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object v1

    iput-object v1, v0, Ln3/e/b/j1/g0$a;->b:Ln3/e/b/j1/z0;

    .line 54
    iget-object v0, p0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    invoke-virtual {v0}, Ln3/e/a/f/h;->a()Ln3/e/a/d/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    iget-object v0, v0, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 56
    sget-object v2, Ln3/e/a/d/a;->w:Ln3/e/b/j1/j0$a;

    invoke-interface {v0, v2, v1}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 57
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 58
    iget-object v1, p0, Ln3/e/a/e/z0;->f:Ln3/e/b/j1/j1$b;

    const-string v2, "Camera2CameraControl"

    check-cast v0, Ljava/lang/Integer;

    .line 59
    iget-object v1, v1, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 60
    iget-object v1, v1, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    .line 61
    iget-object v1, v1, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_d
    iget-object v0, p0, Ln3/e/a/e/z0;->e:Ln3/e/b/j1/w$b;

    iget-object v1, p0, Ln3/e/a/e/z0;->f:Ln3/e/b/j1/j1$b;

    invoke-virtual {v1}, Ln3/e/b/j1/j1$b;->d()Ln3/e/b/j1/j1;

    move-result-object v1

    check-cast v0, Ln3/e/a/e/b1$d;

    .line 63
    iget-object v0, v0, Ln3/e/a/e/b1$d;->a:Ln3/e/a/e/b1;

    iput-object v1, v0, Ln3/e/a/e/b1;->l:Ln3/e/b/j1/j1;

    .line 64
    invoke-virtual {v0}, Ln3/e/a/e/b1;->z()V

    return-void

    :catchall_0
    move-exception v0

    .line 65
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
