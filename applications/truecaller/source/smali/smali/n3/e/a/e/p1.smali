.class public final Ln3/e/a/e/p1;
.super Ln3/e/b/j1/q;
.source "SourceFile"


# instance fields
.field public final a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/q;-><init>()V

    const-string v0, "captureCallback is null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/e/a/e/p1;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method
