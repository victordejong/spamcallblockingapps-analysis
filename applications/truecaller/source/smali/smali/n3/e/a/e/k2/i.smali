.class public Ln3/e/a/e/k2/i;
.super Ln3/e/a/e/k2/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ln3/e/a/e/k2/h;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e/a/e/k2/o/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Ln3/e/a/e/k2/o/g;->a:Ln3/e/a/e/k2/o/g$c;

    invoke-interface {p1}, Ln3/e/a/e/k2/o/g$c;->d()Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Ln3/e/a/e/k2/j;->a:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method
