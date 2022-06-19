.class public final Ln3/e/a/e/o1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e/b/j1/q;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-string v0, "cameraCaptureCallback is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/e/a/e/o1;->a:Ln3/e/b/j1/q;

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 2
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    instance-of p2, p1, Ln3/e/b/j1/o1;

    const-string v0, "The tagBundle object from the CaptureResult is not a TagBundle object."

    invoke-static {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 4
    check-cast p1, Ln3/e/b/j1/o1;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 6
    :goto_0
    iget-object p2, p0, Ln3/e/a/e/o1;->a:Ln3/e/b/j1/q;

    new-instance v0, Ln3/e/a/e/y0;

    invoke-direct {v0, p1, p3}, Ln3/e/a/e/y0;-><init>(Ln3/e/b/j1/o1;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p2, v0}, Ln3/e/b/j1/q;->b(Ln3/e/b/j1/t;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    new-instance p1, Ln3/e/b/j1/s;

    sget-object p2, Ln3/e/b/j1/s$a;->a:Ln3/e/b/j1/s$a;

    invoke-direct {p1, p2}, Ln3/e/b/j1/s;-><init>(Ln3/e/b/j1/s$a;)V

    .line 3
    iget-object p2, p0, Ln3/e/a/e/o1;->a:Ln3/e/b/j1/q;

    invoke-virtual {p2, p1}, Ln3/e/b/j1/q;->c(Ln3/e/b/j1/s;)V

    return-void
.end method
