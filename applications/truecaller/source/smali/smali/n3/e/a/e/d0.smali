.class public final synthetic Ln3/e/a/e/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/a/e/z0$c;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:Z

.field public final synthetic c:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic d:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public final synthetic e:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;Z[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/d0;->a:Ln3/e/a/e/x1;

    iput-boolean p2, p0, Ln3/e/a/e/d0;->b:Z

    iput-object p3, p0, Ln3/e/a/e/d0;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p4, p0, Ln3/e/a/e/d0;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p5, p0, Ln3/e/a/e/d0;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 9

    iget-object v0, p0, Ln3/e/a/e/d0;->a:Ln3/e/a/e/x1;

    iget-boolean v1, p0, Ln3/e/a/e/d0;->b:Z

    iget-object v2, p0, Ln3/e/a/e/d0;->c:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v3, p0, Ln3/e/a/e/d0;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v4, p0, Ln3/e/a/e/d0;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ln3/e/a/e/x1;->k()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eqz v1, :cond_2

    if-nez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Ln3/e/a/e/x1;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_3

    .line 5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_1

    .line 6
    iput-boolean v8, v0, Ln3/e/a/e/x1;->j:Z

    .line 7
    iput-boolean v8, v0, Ln3/e/a/e/x1;->i:Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    .line 9
    iput-boolean v7, v0, Ln3/e/a/e/x1;->j:Z

    .line 10
    iput-boolean v8, v0, Ln3/e/a/e/x1;->i:Z

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iput-boolean v8, v0, Ln3/e/a/e/x1;->j:Z

    .line 12
    iput-boolean v8, v0, Ln3/e/a/e/x1;->i:Z

    .line 13
    :cond_3
    :goto_1
    iget-boolean v1, v0, Ln3/e/a/e/x1;->i:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 14
    array-length v1, v2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v0, Ln3/e/a/e/x1;->p:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 15
    :goto_2
    array-length v1, v3

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v0, Ln3/e/a/e/x1;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 16
    :goto_3
    array-length v1, v4

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v0, Ln3/e/a/e/x1;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 17
    :goto_4
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 18
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 19
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 20
    invoke-static {v1, v3}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 21
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 22
    invoke-static {p1, v4}, Ln3/e/a/e/x1;->h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iget-boolean p1, v0, Ln3/e/a/e/x1;->j:Z

    .line 24
    iget-object v1, v0, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    if-eqz v1, :cond_7

    .line 25
    new-instance v2, Ln3/e/b/s0;

    invoke-direct {v2, p1}, Ln3/e/b/s0;-><init>(Z)V

    .line 26
    invoke-virtual {v1, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, v0, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    :cond_7
    move v7, v8

    goto :goto_5

    .line 28
    :cond_8
    iget-object p1, v0, Ln3/e/a/e/x1;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz v5, :cond_9

    .line 29
    iput-object v5, v0, Ln3/e/a/e/x1;->f:Ljava/lang/Integer;

    :cond_9
    :goto_5
    return v7
.end method
