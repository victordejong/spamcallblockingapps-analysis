.class public final Ln3/e/a/e/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/c1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln3/e/a/e/k2/e;

.field public final c:Ljava/lang/Object;

.field public d:Ln3/e/a/e/z0;

.field public e:Ln3/e/a/e/c1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/a/e/c1$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ln3/e/a/e/c1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/a/e/c1$a<",
            "Ln3/e/b/i1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ln3/e/b/j1/q;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ln3/e/b/j1/g1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln3/e/a/e/k2/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    .line 4
    iput-object v0, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    .line 5
    iput-object v0, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ln3/e/a/e/c1;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    .line 9
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->e0(Ln3/e/a/e/k2/e;)Ln3/e/b/j1/g1;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/c1;->h:Ln3/e/b/j1/g1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/util/concurrent/Executor;Ln3/e/b/j1/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    iget-object v2, v1, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/a/e/h;

    invoke-direct {v3, v1, p1, p2}, Ln3/e/a/e/h;-><init>(Ln3/e/a/e/z0;Ljava/util/concurrent/Executor;Ln3/e/b/j1/q;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d(Ln3/e/b/j1/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 8
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    .line 11
    :cond_3
    iget-object v2, v1, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/a/e/b;

    invoke-direct {v3, v1, p1}, Ln3/e/a/e/b;-><init>(Ln3/e/a/e/z0;Ln3/e/b/j1/q;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C1(I)I

    move-result p1

    .line 7
    invoke-virtual {p0}, Ln3/e/a/e/c1;->c()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10
    invoke-static {p1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->v0(IIZ)I

    move-result p1

    return p1
.end method

.method public f()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ln3/e/b/i1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ln3/e/a/e/c1$a;

    iget-object v2, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    .line 5
    invoke-static {v2}, Ln3/e/a/e/i2;->a(Ln3/e/a/e/k2/e;)Ln3/e/a/e/i2$b;

    move-result-object v2

    .line 6
    new-instance v3, Ln3/e/a/e/j2;

    invoke-interface {v2}, Ln3/e/a/e/i2$b;->d()F

    move-result v4

    invoke-interface {v2}, Ln3/e/a/e/i2$b;->c()F

    move-result v2

    invoke-direct {v3, v4, v2}, Ln3/e/a/e/j2;-><init>(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v3, v2}, Ln3/e/a/e/j2;->b(F)V

    .line 8
    invoke-static {v3}, Ln3/e/b/k1/d;->b(Ln3/e/b/i1;)Ln3/e/b/i1;

    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Ln3/e/a/e/c1$a;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    .line 10
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    monitor-exit v0

    return-object v1

    .line 11
    :cond_1
    iget-object v2, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    if-eqz v2, :cond_2

    .line 12
    monitor-exit v0

    return-object v2

    .line 13
    :cond_2
    iget-object v1, v1, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 14
    iget-object v1, v1, Ln3/e/a/e/i2;->d:Ln3/v/k0;

    .line 15
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ln3/e/a/e/c1$a;

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ln3/e/a/e/c1$a;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    .line 6
    :cond_0
    iget-object v1, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    iget-object v2, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    if-eqz v2, :cond_2

    .line 8
    monitor-exit v0

    return-object v2

    .line 9
    :cond_2
    iget-object v1, v1, Ln3/e/a/e/z0;->j:Ln3/e/a/e/h2;

    .line 10
    iget-object v1, v1, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/c1;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "androidx.camera.camera2.legacy"

    goto :goto_0

    :cond_0
    const-string v0, "androidx.camera.camera2"

    :goto_0
    return-object v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public k(Ln3/e/a/e/z0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/e/a/e/c1;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    .line 3
    iget-object v1, p0, Ln3/e/a/e/c1;->f:Ln3/e/a/e/c1$a;

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Ln3/e/a/e/z0;->i:Ln3/e/a/e/i2;

    .line 5
    iget-object p1, p1, Ln3/e/a/e/i2;->d:Ln3/v/k0;

    .line 6
    invoke-virtual {v1, p1}, Ln3/e/a/e/c1$a;->o(Landroidx/lifecycle/LiveData;)V

    .line 7
    :cond_0
    iget-object p1, p0, Ln3/e/a/e/c1;->e:Ln3/e/a/e/c1$a;

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    .line 9
    iget-object v1, v1, Ln3/e/a/e/z0;->j:Ln3/e/a/e/h2;

    .line 10
    iget-object v1, v1, Ln3/e/a/e/h2;->b:Ln3/v/k0;

    .line 11
    invoke-virtual {p1, v1}, Ln3/e/a/e/c1$a;->o(Landroidx/lifecycle/LiveData;)V

    .line 12
    :cond_1
    iget-object p1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 14
    iget-object v2, p0, Ln3/e/a/e/c1;->d:Ln3/e/a/e/z0;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ln3/e/b/j1/q;

    .line 15
    iget-object v4, v2, Ln3/e/a/e/z0;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Ln3/e/a/e/h;

    invoke-direct {v5, v2, v3, v1}, Ln3/e/a/e/h;-><init>(Ln3/e/a/e/z0;Ljava/util/concurrent/Executor;Ln3/e/b/j1/q;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Ln3/e/a/e/c1;->g:Ljava/util/List;

    .line 17
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p0}, Ln3/e/a/e/c1;->j()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const-string p1, "Camera2CameraInfo"

    .line 19
    sget v2, Ln3/e/b/y0;->a:I

    if-le v2, v0, :cond_5

    invoke-static {p1}, Ln3/e/b/y0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 20
    invoke-static {p1}, Ln3/e/b/y0;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
