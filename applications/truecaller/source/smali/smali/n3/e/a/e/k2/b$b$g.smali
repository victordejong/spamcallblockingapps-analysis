.class public Ln3/e/a/e/k2/b$b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/b$b;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic b:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic c:Landroid/view/Surface;

.field public final synthetic d:J

.field public final synthetic e:Ln3/e/a/e/k2/b$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/b$b$g;->e:Ln3/e/a/e/k2/b$b;

    iput-object p2, p0, Ln3/e/a/e/k2/b$b$g;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Ln3/e/a/e/k2/b$b$g;->b:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Ln3/e/a/e/k2/b$b$g;->c:Landroid/view/Surface;

    iput-wide p5, p0, Ln3/e/a/e/k2/b$b$g;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b$g;->e:Ln3/e/a/e/k2/b$b;

    iget-object v1, v0, Ln3/e/a/e/k2/b$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Ln3/e/a/e/k2/b$b$g;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Ln3/e/a/e/k2/b$b$g;->b:Landroid/hardware/camera2/CaptureRequest;

    iget-object v4, p0, Ln3/e/a/e/k2/b$b$g;->c:Landroid/view/Surface;

    iget-wide v5, p0, Ln3/e/a/e/k2/b$b$g;->d:J

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method
