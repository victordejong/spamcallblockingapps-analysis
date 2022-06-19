.class public final Ln3/e/a/d/a;
.super Ln3/e/a/f/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/d/a$a;
    }
.end annotation


# static fields
.field public static final r:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/hardware/camera2/CameraDevice$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.captureRequest.templateType"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    .line 4
    const-class v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.cameraDevice.stateCallback"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/a/d/a;->s:Ln3/e/b/j1/j0$a;

    .line 7
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 8
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.cameraCaptureSession.stateCallback"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Ln3/e/a/d/a;->t:Ln3/e/b/j1/j0$a;

    .line 10
    const-class v0, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 11
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.cameraCaptureSession.captureCallback"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Ln3/e/a/d/a;->u:Ln3/e/b/j1/j0$a;

    .line 13
    const-class v0, Ln3/e/a/d/c;

    .line 14
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.cameraEvent.callback"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Ln3/e/a/d/a;->v:Ln3/e/b/j1/j0$a;

    .line 16
    const-class v0, Ljava/lang/Object;

    .line 17
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camera2.captureRequest.tag"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Ln3/e/a/d/a;->w:Ln3/e/b/j1/j0$a;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/e/a/f/i;-><init>(Ln3/e/b/j1/j0;)V

    return-void
.end method
