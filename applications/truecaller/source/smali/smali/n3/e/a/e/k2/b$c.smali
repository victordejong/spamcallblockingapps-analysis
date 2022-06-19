.class public final Ln3/e/a/e/k2/b$c;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/k2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ln3/e/a/e/k2/b$c;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$d;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$d;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$e;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$e;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$f;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$f;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$b;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$b;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$a;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$a;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$c;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k2/b$c$c;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k2/b$c$g;

    invoke-direct {v1, p0, p1, p2}, Ln3/e/a/e/k2/b$c$g;-><init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
