.class public Ln3/e/a/e/k2/b$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/k2/b$c;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CameraCaptureSession;

.field public final synthetic b:Ln3/e/a/e/k2/b$c;


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/b$c;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/k2/b$c$c;->b:Ln3/e/a/e/k2/b$c;

    iput-object p2, p0, Ln3/e/a/e/k2/b$c$c;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b$c$c;->b:Ln3/e/a/e/k2/b$c;

    iget-object v0, v0, Ln3/e/a/e/k2/b$c;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Ln3/e/a/e/k2/b$c$c;->a:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
