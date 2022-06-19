.class public Ln3/e/a/e/e2$a;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/e2;


# direct methods
.method public constructor <init>(Ln3/e/a/e/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/e2$a;->a:Ln3/e/a/e/e2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/e/a/e/e2$a;->a:Ln3/e/a/e/e2;

    iget-object p1, p1, Ln3/e/a/e/e2;->r:Ln3/h/a/b;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Ln3/h/a/b;->d:Z

    .line 3
    iget-object v0, p1, Ln3/h/a/b;->b:Ln3/h/a/e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Ln3/h/a/e;->b:Ln3/h/a/a;

    invoke-virtual {v0, p2}, Ln3/h/a/a;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Ln3/h/a/b;->b()V

    .line 6
    :cond_1
    iget-object p1, p0, Ln3/e/a/e/e2$a;->a:Ln3/e/a/e/e2;

    const/4 p2, 0x0

    iput-object p2, p1, Ln3/e/a/e/e2;->r:Ln3/h/a/b;

    :cond_2
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/e/a/e/e2$a;->a:Ln3/e/a/e/e2;

    iget-object p1, p1, Ln3/e/a/e/e2;->r:Ln3/h/a/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Ln3/e/a/e/e2$a;->a:Ln3/e/a/e/e2;

    iput-object p2, p1, Ln3/e/a/e/e2;->r:Ln3/h/a/b;

    :cond_0
    return-void
.end method
