.class public final Ln3/e/a/e/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ln3/e/b/j1/q;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/q;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ln3/e/b/j1/r;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p0, Ln3/e/a/e/p1;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ln3/e/a/e/p1;

    .line 4
    iget-object p0, p0, Ln3/e/a/e/p1;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ln3/e/a/e/o1;

    invoke-direct {v0, p0}, Ln3/e/a/e/o1;-><init>(Ln3/e/b/j1/q;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 7
    :cond_1
    check-cast p0, Ln3/e/b/j1/r;

    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
