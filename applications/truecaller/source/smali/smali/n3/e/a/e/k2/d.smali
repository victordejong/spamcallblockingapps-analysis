.class public Ln3/e/a/e/k2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/k2/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/e/a/e/k2/d;->a:Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    iput-object p2, p0, Ln3/e/a/e/k2/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
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
    new-instance v0, Ln3/e/a/e/k2/b$b;

    invoke-direct {v0, p2, p3}, Ln3/e/a/e/k2/b$b;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 2
    iget-object p2, p0, Ln3/e/a/e/k2/d;->b:Ljava/lang/Object;

    check-cast p2, Ln3/e/a/e/k2/d$a;

    .line 3
    iget-object p3, p0, Ln3/e/a/e/k2/d;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p2, Ln3/e/a/e/k2/d$a;->a:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/e/a/e/k2/b$b;

    invoke-direct {v0, p2, p3}, Ln3/e/a/e/k2/b$b;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 2
    iget-object p2, p0, Ln3/e/a/e/k2/d;->b:Ljava/lang/Object;

    check-cast p2, Ln3/e/a/e/k2/d$a;

    .line 3
    iget-object p3, p0, Ln3/e/a/e/k2/d;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p2, Ln3/e/a/e/k2/d$a;->a:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    return p1
.end method
