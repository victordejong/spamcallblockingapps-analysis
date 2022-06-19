.class public Ln3/e/a/e/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/z1$b;
    }
.end annotation


# instance fields
.field public a:Ln3/e/b/j1/k0;

.field public final b:Ln3/e/b/j1/j1;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/e;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/e/a/e/z1$b;

    invoke-direct {v0}, Ln3/e/a/e/z1$b;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 4
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v3, "MeteringRepeating"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string p1, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP."

    .line 5
    invoke-static {v3, p1, v4}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x22

    .line 7
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Can not get output size list."

    .line 8
    invoke-static {v3, p1, v4}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Ln3/e/a/e/i0;->a:Ln3/e/a/e/i0;

    .line 11
    invoke-static {p1, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    .line 12
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MerteringSession SurfaceTexture size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v3, v2, v4}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 15
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 17
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 18
    invoke-static {v0}, Ln3/e/b/j1/j1$b;->e(Ln3/e/b/j1/r1;)Ln3/e/b/j1/j1$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 19
    iget-object v3, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 20
    iput v2, v3, Ln3/e/b/j1/g0$a;->c:I

    .line 21
    new-instance v2, Ln3/e/b/j1/s0;

    invoke-direct {v2, p1}, Ln3/e/b/j1/s0;-><init>(Landroid/view/Surface;)V

    iput-object v2, p0, Ln3/e/a/e/z1;->a:Ln3/e/b/j1/k0;

    .line 22
    invoke-virtual {v2}, Ln3/e/b/j1/k0;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Ln3/e/a/e/z1$a;

    invoke-direct {v3, p0, p1, v1}, Ln3/e/a/e/z1$a;-><init>(Ln3/e/a/e/z1;Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 23
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 24
    new-instance v1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v1, v2, v3}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {v2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 25
    iget-object p1, p0, Ln3/e/a/e/z1;->a:Ln3/e/b/j1/k0;

    .line 26
    iget-object v1, v0, Ln3/e/b/j1/j1$a;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, v0, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 28
    iget-object v1, v1, Ln3/e/b/j1/g0$a;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v0}, Ln3/e/b/j1/j1$b;->d()Ln3/e/b/j1/j1;

    move-result-object p1

    iput-object p1, p0, Ln3/e/a/e/z1;->b:Ln3/e/b/j1/j1;

    return-void
.end method
