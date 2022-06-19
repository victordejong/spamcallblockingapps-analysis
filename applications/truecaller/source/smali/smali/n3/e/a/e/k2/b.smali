.class public final Ln3/e/a/e/k2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/b$c;,
        Ln3/e/a/e/k2/b$b;,
        Ln3/e/a/e/k2/b$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/k2/b$a;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance p2, Ln3/e/a/e/k2/c;

    invoke-direct {p2, p1}, Ln3/e/a/e/k2/c;-><init>(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-object p2, p0, Ln3/e/a/e/k2/b;->a:Ln3/e/a/e/k2/b$a;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ln3/e/a/e/k2/d;

    new-instance v1, Ln3/e/a/e/k2/d$a;

    invoke-direct {v1, p2}, Ln3/e/a/e/k2/d$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Ln3/e/a/e/k2/d;-><init>(Landroid/hardware/camera2/CameraCaptureSession;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Ln3/e/a/e/k2/b;->a:Ln3/e/a/e/k2/b$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/b;->a:Ln3/e/a/e/k2/b$a;

    check-cast v0, Ln3/e/a/e/k2/d;

    .line 2
    iget-object v0, v0, Ln3/e/a/e/k2/d;->a:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method
