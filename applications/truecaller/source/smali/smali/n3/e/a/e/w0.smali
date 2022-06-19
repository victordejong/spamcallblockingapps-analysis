.class public final Ln3/e/a/e/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/i2$b;


# instance fields
.field public final a:Ln3/e/a/e/k2/e;

.field public final b:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public d:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public e:F


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Ln3/e/a/e/w0;->c:F

    .line 3
    iput v0, p0, Ln3/e/a/e/w0;->e:F

    .line 4
    iput-object p1, p0, Ln3/e/a/e/w0;->a:Ln3/e/a/e/k2/e;

    .line 5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    invoke-virtual {p1, v0}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    iput-object p1, p0, Ln3/e/a/e/w0;->b:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 5
    iget v1, p0, Ln3/e/a/e/w0;->e:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    :cond_2
    return-void
.end method

.method public b(Ln3/e/a/d/a$a;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Ln3/e/a/e/w0;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln3/e/a/d/a$a;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ln3/e/a/d/a$a;

    return-void
.end method

.method public c()F
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w0;->b:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w0;->b:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public e(FLn3/h/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Ln3/e/a/e/w0;->c:F

    .line 2
    iget-object p1, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    if-eqz p1, :cond_0

    const-string v0, "There is a new zoomRatio being set"

    .line 3
    invoke-static {v0, p1}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    .line 4
    :cond_0
    iget p1, p0, Ln3/e/a/e/w0;->c:F

    iput p1, p0, Ln3/e/a/e/w0;->e:F

    .line 5
    iput-object p2, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    return-void
.end method

.method public f()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    iput v0, p0, Ln3/e/a/e/w0;->c:F

    .line 2
    iget-object v0, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    if-eqz v0, :cond_0

    const-string v1, "Camera is not active."

    .line 3
    invoke-static {v1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln3/e/a/e/w0;->d:Ln3/h/a/b;

    :cond_0
    return-void
.end method

.method public g()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/w0;->a:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
