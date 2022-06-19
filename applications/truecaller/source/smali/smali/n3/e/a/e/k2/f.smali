.class public final Ln3/e/a/e/k2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/k2/f$b;,
        Ln3/e/a/e/k2/f$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/k2/f$a;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    new-instance p2, Ln3/e/a/e/k2/i;

    invoke-direct {p2, p1}, Ln3/e/a/e/k2/i;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    iput-object p2, p0, Ln3/e/a/e/k2/f;->a:Ln3/e/a/e/k2/f$a;

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Ln3/e/a/e/k2/h;

    new-instance v1, Ln3/e/a/e/k2/j$a;

    invoke-direct {v1, p2}, Ln3/e/a/e/k2/j$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Ln3/e/a/e/k2/h;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Ln3/e/a/e/k2/f;->a:Ln3/e/a/e/k2/f$a;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ln3/e/a/e/k2/g;

    new-instance v1, Ln3/e/a/e/k2/j$a;

    invoke-direct {v1, p2}, Ln3/e/a/e/k2/j$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Ln3/e/a/e/k2/g;-><init>(Landroid/hardware/camera2/CameraDevice;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Ln3/e/a/e/k2/f;->a:Ln3/e/a/e/k2/f$a;

    :goto_0
    return-void
.end method
