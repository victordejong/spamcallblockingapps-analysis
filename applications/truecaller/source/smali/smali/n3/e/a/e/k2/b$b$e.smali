.class public Ln3/e/a/e/k2/b$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/b$b;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ln3/e/a/e/k2/b$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/b$b;Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/b$b$e;->d:Ln3/e/a/e/k2/b$b;

    iput-object p2, p0, Ln3/e/a/e/k2/b$b$e;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iput p3, p0, Ln3/e/a/e/k2/b$b$e;->b:I

    iput-wide p4, p0, Ln3/e/a/e/k2/b$b$e;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$b$e;->d:Ln3/e/a/e/k2/b$b;

    iget-object v0, v0, Ln3/e/a/e/k2/b$b;->a:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v1, p0, Ln3/e/a/e/k2/b$b$e;->a:Landroid/hardware/camera2/CameraCaptureSession;

    iget v2, p0, Ln3/e/a/e/k2/b$b$e;->b:I

    iget-wide v3, p0, Ln3/e/a/e/k2/b$b$e;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method
