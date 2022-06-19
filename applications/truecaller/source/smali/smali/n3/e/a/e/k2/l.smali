.class public Ln3/e/a/e/k2/l;
.super Ln3/e/a/e/k2/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/e/a/e/k2/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/n;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/a/e/k2/a;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/k2/n;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Ln3/e/a/e/k2/l;->e(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ln3/e/a/e/k2/a;

    const/16 p3, 0x2711

    invoke-direct {p2, p3, p1}, Ln3/e/a/e/k2/a;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5
    :goto_0
    throw p1

    :catch_3
    move-exception p1

    .line 6
    sget-object p2, Ln3/e/a/e/k2/a;->b:Ljava/util/Set;

    .line 7
    new-instance p2, Ln3/e/a/e/k2/a;

    invoke-direct {p2, p1}, Ln3/e/a/e/k2/a;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 8
    throw p2
.end method

.method public c(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/a/e/k2/a;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/a/e/k2/n;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :try_start_1
    sget-object v0, Ln3/e/a/e/k2/a;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ln3/e/a/e/k2/a;

    invoke-direct {v0, p1}, Ln3/e/a/e/k2/a;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    .line 4
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Ln3/e/a/e/k2/l;->e(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ln3/e/a/e/k2/a;

    const/16 v1, 0x2711

    invoke-direct {v0, v1, p1}, Ln3/e/a/e/k2/a;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_0
    throw p1
.end method

.method public d(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/n;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public final e(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_enableShutterSound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
