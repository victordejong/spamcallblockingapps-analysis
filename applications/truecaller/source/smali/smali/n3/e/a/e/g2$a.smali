.class public Ln3/e/a/e/g2$a;
.super Ln3/e/a/e/b2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/g2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ln3/e/a/e/l1;

    invoke-direct {p1}, Ln3/e/a/e/l1;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ln3/e/a/e/k1;

    invoke-direct {v0, p1}, Ln3/e/a/e/k1;-><init>(Ljava/util/List;)V

    move-object p1, v0

    .line 6
    :goto_0
    invoke-direct {p0}, Ln3/e/a/e/b2$a;-><init>()V

    .line 7
    iput-object p1, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-void
.end method


# virtual methods
.method public l(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public m(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onCaptureQueueEmpty(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public n(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public o(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public p(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public q(Ln3/e/a/e/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public r(Ln3/e/a/e/b2;)V
    .locals 0

    return-void
.end method

.method public s(Ln3/e/a/e/b2;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/g2$a;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-interface {p1}, Ln3/e/a/e/b2;->f()Ln3/e/a/e/k2/b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/a/e/k2/b;->a()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V

    return-void
.end method
