.class public Ln3/e/a/e/k2/b$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/b$b;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic b:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic c:Landroid/hardware/camera2/CaptureResult;

.field public final synthetic d:Ln3/e/a/e/k2/b$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/b$b$b;->d:Ln3/e/a/e/k2/b$b;

    iput-object p2, p0, Ln3/e/a/e/k2/b$b$b;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Ln3/e/a/e/k2/b$b$b;->b:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Ln3/e/a/e/k2/b$b$b;->c:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b$b;->d:Ln3/e/a/e/k2/b$b;

    iget-object v0, v0, Ln3/e/a/e/k2/b$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v1, p0, Ln3/e/a/e/k2/b$b$b;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Ln3/e/a/e/k2/b$b$b;->b:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Ln3/e/a/e/k2/b$b$b;->c:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
