.class public final Ln3/e/a/e/k2/b$b;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/k2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ln3/e/a/e/k2/b$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v8, Ln3/e/a/e/k2/b$b$g;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ln3/e/a/e/k2/b$b$g;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$b$c;

    invoke-direct {v1, p0, p1, p2, p3}, Ln3/e/a/e/k2/b$b$c;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$b$d;

    invoke-direct {v1, p0, p1, p2, p3}, Ln3/e/a/e/k2/b$b$d;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$b$b;

    invoke-direct {v1, p0, p1, p2, p3}, Ln3/e/a/e/k2/b$b$b;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$b$f;

    invoke-direct {v1, p0, p1, p2}, Ln3/e/a/e/k2/b$b$f;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v7, Ln3/e/a/e/k2/b$b$e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Ln3/e/a/e/k2/b$b$e;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 11

    move-object v8, p0

    .line 1
    iget-object v9, v8, Ln3/e/a/e/k2/b$b;->b:Ljava/util/concurrent/Executor;

    new-instance v10, Ln3/e/a/e/k2/b$b$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Ln3/e/a/e/k2/b$b$a;-><init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
