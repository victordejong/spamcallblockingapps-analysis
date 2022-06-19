.class public Ln3/e/a/e/k2/g;
.super Ln3/e/a/e/k2/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/e/a/e/k2/j;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e/a/e/k2/o/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/j;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v0, p1}, Ln3/e/a/e/k2/j;->b(Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/k2/o/g;)V

    .line 2
    new-instance v0, Ln3/e/a/e/k2/b$c;

    .line 3
    invoke-virtual {p1}, Ln3/e/a/e/k2/o/g;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1}, Ln3/e/a/e/k2/o/g;->e()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/e/a/e/k2/b$c;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 4
    invoke-virtual {p1}, Ln3/e/a/e/k2/o/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ln3/e/a/e/k2/j;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ln3/e/a/e/k2/j;->b:Ljava/lang/Object;

    check-cast v2, Ln3/e/a/e/k2/j$a;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, v2, Ln3/e/a/e/k2/j$a;->a:Landroid/os/Handler;

    .line 8
    invoke-virtual {p1}, Ln3/e/a/e/k2/o/g;->b()Ln3/e/a/e/k2/o/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    iget-object p1, v3, Ln3/e/a/e/k2/o/a;->a:Ln3/e/a/e/k2/o/a$b;

    invoke-interface {p1}, Ln3/e/a/e/k2/o/a$b;->a()Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/camera2/params/InputConfiguration;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v3, p0, Ln3/e/a/e/k2/j;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3, p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Ln3/e/a/e/k2/o/g;->d()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 14
    iget-object p1, p0, Ln3/e/a/e/k2/j;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Ln3/e/a/e/k2/j;->a:Landroid/hardware/camera2/CameraDevice;

    .line 16
    invoke-virtual {p1, v1, v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method
