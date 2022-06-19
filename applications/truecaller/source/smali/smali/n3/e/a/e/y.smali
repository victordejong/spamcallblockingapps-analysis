.class public final synthetic Ln3/e/a/e/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/b;


# instance fields
.field public final synthetic a:Ln3/e/a/e/r1;

.field public final synthetic b:Ln3/e/b/j1/j1;

.field public final synthetic c:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/r1;Ln3/e/b/j1/j1;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/y;->a:Ln3/e/a/e/r1;

    iput-object p2, p0, Ln3/e/a/e/y;->b:Ln3/e/b/j1/j1;

    iput-object p3, p0, Ln3/e/a/e/y;->c:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11

    iget-object v0, p0, Ln3/e/a/e/y;->a:Ln3/e/a/e/r1;

    iget-object v1, p0, Ln3/e/a/e/y;->b:Ln3/e/b/j1/j1;

    iget-object v2, p0, Ln3/e/a/e/y;->c:Landroid/hardware/camera2/CameraDevice;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v3, v0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    const/4 p1, 0x4

    if-eq v4, p1, :cond_7

    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCaptureSession() not execute in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v3

    goto/16 :goto_5

    .line 6
    :cond_0
    iget-object v4, v0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    move v7, v4

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 8
    iget-object v8, v0, Ln3/e/a/e/r1;->j:Ljava/util/Map;

    iget-object v9, v0, Ln3/e/a/e/r1;->k:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/j1/k0;

    .line 9
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    .line 10
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    sget-object p1, Ln3/e/a/e/r1$c;->d:Ln3/e/a/e/r1$c;

    iput-object p1, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    const-string p1, "CaptureSession"

    const-string v8, "Opening capture session."

    const/4 v9, 0x0

    .line 13
    invoke-static {p1, v8, v9}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v6, [Ln3/e/a/e/b2$a;

    .line 14
    iget-object v6, v0, Ln3/e/a/e/r1;->d:Ln3/e/a/e/r1$d;

    aput-object v6, p1, v4

    new-instance v6, Ln3/e/a/e/g2$a;

    .line 15
    iget-object v8, v1, Ln3/e/b/j1/j1;->c:Ljava/util/List;

    .line 16
    invoke-direct {v6, v8}, Ln3/e/a/e/g2$a;-><init>(Ljava/util/List;)V

    aput-object v6, p1, v5

    .line 17
    new-instance v5, Ln3/e/a/e/g2;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Ln3/e/a/e/g2;-><init>(Ljava/util/List;)V

    .line 18
    iget-object p1, v1, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 19
    iget-object p1, p1, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 20
    new-instance v6, Ln3/e/a/d/a;

    invoke-direct {v6, p1}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    .line 21
    invoke-static {}, Ln3/e/a/d/c;->d()Ln3/e/a/d/c;

    move-result-object p1

    .line 22
    iget-object v6, v6, Ln3/e/a/f/i;->q:Ln3/e/b/j1/j0;

    .line 23
    sget-object v8, Ln3/e/a/d/a;->v:Ln3/e/b/j1/j0$a;

    invoke-interface {v6, v8, p1}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/e/a/d/c;

    .line 24
    iput-object p1, v0, Ln3/e/a/e/r1;->i:Ln3/e/a/d/c;

    .line 25
    invoke-virtual {p1}, Ln3/e/a/d/c;->c()Ln3/e/a/d/c$a;

    move-result-object p1

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object p1, p1, Ln3/e/a/d/c$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/e/a/d/b;

    .line 28
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, v1, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 30
    new-instance v1, Ln3/e/b/j1/g0$a;

    invoke-direct {v1, p1}, Ln3/e/b/j1/g0$a;-><init>(Ln3/e/b/j1/g0;)V

    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/e/b/j1/g0;

    .line 32
    iget-object v6, v6, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 33
    invoke-virtual {v1, v6}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    goto :goto_2

    .line 34
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 36
    new-instance v8, Ln3/e/a/e/k2/o/b;

    invoke-direct {v8, v7}, Ln3/e/a/e/k2/o/b;-><init>(Landroid/view/Surface;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 37
    :cond_4
    iget-object v6, v0, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    .line 38
    iget-object v6, v6, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    check-cast v6, Ln3/e/a/e/c2;

    .line 39
    iput-object v5, v6, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    .line 40
    new-instance v5, Ln3/e/a/e/k2/o/g;

    .line 41
    iget-object v7, v6, Ln3/e/a/e/c2;->d:Ljava/util/concurrent/Executor;

    .line 42
    new-instance v8, Ln3/e/a/e/d2;

    invoke-direct {v8, v6}, Ln3/e/a/e/d2;-><init>(Ln3/e/a/e/c2;)V

    invoke-direct {v5, v4, p1, v7, v8}, Ln3/e/a/e/k2/o/g;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    invoke-virtual {v1}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object p1

    if-nez v2, :cond_5

    goto :goto_4

    .line 44
    :cond_5
    iget v1, p1, Ln3/e/b/j1/g0;->c:I

    .line 45
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 46
    iget-object p1, p1, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 47
    invoke-static {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/hardware/camera2/CaptureRequest$Builder;Ln3/e/b/j1/j0;)V

    .line 48
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    :goto_4
    if-eqz v9, :cond_6

    .line 49
    iget-object p1, v5, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {p1, v9}, Ln3/e/a/e/k2/o/g$c;->g(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_6
    :try_start_2
    iget-object p1, v0, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    iget-object v0, v0, Ln3/e/a/e/r1;->k:Ljava/util/List;

    .line 51
    iget-object p1, p1, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    invoke-interface {p1, v2, v5, v0}, Ln3/e/a/e/f2$b;->a(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 52
    monitor-exit v3

    goto :goto_5

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 54
    monitor-exit v3

    goto :goto_5

    .line 55
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCaptureSession() should not be possible in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v0, p1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 57
    monitor-exit v3

    :goto_5
    return-object v0

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
