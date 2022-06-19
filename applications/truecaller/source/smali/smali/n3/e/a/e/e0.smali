.class public final synthetic Ln3/e/a/e/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/z0$c;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/e0;->a:Ln3/e/a/e/x1;

    iput p2, p0, Ln3/e/a/e/e0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 6

    iget-object v0, p0, Ln3/e/a/e/e0;->a:Ln3/e/a/e/x1;

    iget v1, p0, Ln3/e/a/e/e0;->b:I

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 5
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 6
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 7
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Ln3/e/a/e/x1;->p:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 9
    invoke-static {v3, v1}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ln3/e/a/e/x1;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 10
    invoke-static {v4, v1}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ln3/e/a/e/x1;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    invoke-static {p1, v1}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, v0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 14
    iput-object v1, v0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
