.class public Ln3/e/a/e/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e/a/e/z0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public volatile d:Z

.field public e:Z

.field public f:Ljava/lang/Integer;

.field public g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Ln3/e/a/e/z0$c;

.field public l:Ln3/e/a/e/z0$c;

.field public m:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public n:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public o:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public p:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public q:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public r:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public s:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ln3/e/b/s0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/e/a/e/z0;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/a/e/x1;->d:Z

    .line 3
    iput-boolean v0, p0, Ln3/e/a/e/x1;->e:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Ln3/e/a/e/x1;->f:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Ln3/e/a/e/x1;->h:J

    .line 6
    iput-boolean v0, p0, Ln3/e/a/e/x1;->i:Z

    .line 7
    iput-boolean v0, p0, Ln3/e/a/e/x1;->j:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Ln3/e/a/e/x1;->k:Ln3/e/a/e/z0$c;

    .line 9
    iput-object v1, p0, Ln3/e/a/e/x1;->l:Ln3/e/a/e/z0$c;

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 10
    iput-object v2, p0, Ln3/e/a/e/x1;->m:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    iput-object v2, p0, Ln3/e/a/e/x1;->n:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 12
    iput-object v2, p0, Ln3/e/a/e/x1;->o:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 13
    iput-object v2, p0, Ln3/e/a/e/x1;->p:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 14
    iput-object v2, p0, Ln3/e/a/e/x1;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 15
    iput-object v0, p0, Ln3/e/a/e/x1;->r:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 16
    iput-object v1, p0, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    .line 17
    iput-object v1, p0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    .line 18
    iput-object p1, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    .line 19
    iput-object p3, p0, Ln3/e/a/e/x1;->b:Ljava/util/concurrent/Executor;

    .line 20
    iput-object p2, p0, Ln3/e/a/e/x1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static e(Ln3/e/b/a1;Landroid/util/Rational;Landroid/util/Rational;)Landroid/graphics/PointF;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/b/a1;->d:Landroid/util/Rational;

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    .line 3
    iget v1, p0, Ln3/e/b/a1;->a:F

    .line 4
    iget p0, p0, Ln3/e/b/a1;->b:F

    .line 5
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    invoke-virtual {p2, p1}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-virtual {p2, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-lez p0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    .line 9
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p0

    div-double/2addr v6, p0

    double-to-float p0, v6

    float-to-double p1, p0

    sub-double/2addr p1, v4

    div-double/2addr p1, v2

    double-to-float p1, p1

    .line 10
    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    div-float/2addr v1, p0

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide p0

    .line 12
    invoke-virtual {p2}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr p0, v6

    double-to-float p0, p0

    float-to-double p1, p0

    sub-double/2addr p1, v4

    div-double/2addr p1, v2

    double-to-float p1, p1

    .line 13
    iget p2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    div-float/2addr v1, p0

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static f(Ln3/e/b/a1;Landroid/graphics/PointF;Landroid/graphics/Rect;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 3
    iget v1, p0, Ln3/e/b/a1;->c:F

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 5
    iget p0, p0, Ln3/e/b/a1;->c:F

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    div-int/lit8 p0, p0, 0x2

    sub-int v4, p1, p0

    add-int/2addr v0, v1

    add-int/2addr p1, p0

    invoke-direct {v2, v3, v4, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    iget p0, v2, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1, v0}, Ln3/e/a/e/x1;->j(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->left:I

    .line 9
    iget p0, v2, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p0, p1, v0}, Ln3/e/a/e/x1;->j(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->right:I

    .line 10
    iget p0, v2, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, v0}, Ln3/e/a/e/x1;->j(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->top:I

    .line 11
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p0, p1, p2}, Ln3/e/a/e/x1;->j(III)I

    move-result p0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 12
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p1, 0x3e8

    invoke-direct {p0, v2, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p0
.end method

.method public static g([Landroid/hardware/camera2/params/MeteringRectangle;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    array-length p0, p0

    return p0
.end method

.method public static h([Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Ln3/e/a/e/x1;->g([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Ln3/e/a/e/x1;->g([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Ln3/e/a/e/x1;->g([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v0

    invoke-static {p1}, Ln3/e/a/e/x1;->g([Landroid/hardware/camera2/params/MeteringRectangle;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    move v0, v3

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 4
    aget-object v2, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/params/MeteringRectangle;->equals(Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static i(Ln3/e/b/a1;)Z
    .locals 3

    .line 1
    iget v0, p0, Ln3/e/b/a1;->a:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    iget p0, p0, Ln3/e/b/a1;->b:F

    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(III)I
    .locals 0

    .line 1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "Cancelled by another cancelFocusAndMetering()"

    .line 1
    invoke-virtual {p0, v0}, Ln3/e/a/e/x1;->d(Ljava/lang/String;)V

    const-string v0, "Cancelled by cancelFocusAndMetering()"

    .line 2
    invoke-virtual {p0, v0}, Ln3/e/a/e/x1;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    .line 4
    invoke-virtual {p0}, Ln3/e/a/e/x1;->b()V

    .line 5
    iget-object v0, p0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->l(I)I

    move-result v0

    .line 8
    new-instance v1, Ln3/e/a/e/e0;

    invoke-direct {v1, p0, v0}, Ln3/e/a/e/e0;-><init>(Ln3/e/a/e/x1;I)V

    iput-object v1, p0, Ln3/e/a/e/x1;->l:Ln3/e/a/e/z0$c;

    .line 9
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->h(Ln3/e/a/e/z0$c;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Ln3/e/a/e/x1;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    const-class v1, Ljava/lang/Object;

    iget-boolean v2, p0, Ln3/e/a/e/x1;->d:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Ln3/e/b/j1/g0$a;

    invoke-direct {v2}, Ln3/e/b/j1/g0$a;-><init>()V

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v2, Ln3/e/b/j1/g0$a;->e:Z

    .line 14
    iput v3, v2, Ln3/e/b/j1/g0$a;->c:I

    .line 15
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v3

    const/4 v4, 0x2

    .line 16
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 18
    sget-object v6, Ln3/e/a/d/a;->r:Ln3/e/b/j1/j0$a;

    const-string v6, "camera2.captureRequest.option."

    .line 19
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v7, Ln3/e/b/j1/n;

    invoke-direct {v7, v6, v1, v5}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v3, v7, v0, v4}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 22
    new-instance v0, Ln3/e/a/d/a;

    invoke-static {v3}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/a/d/a;-><init>(Ln3/e/b/j1/j0;)V

    .line 23
    invoke-virtual {v2, v0}, Ln3/e/b/j1/g0$a;->c(Ln3/e/b/j1/j0;)V

    .line 24
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v2}, Ln3/e/b/j1/g0$a;->d()Ln3/e/b/j1/g0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->q(Ljava/util/List;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 25
    iput-object v1, p0, Ln3/e/a/e/x1;->m:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 26
    iput-object v1, p0, Ln3/e/a/e/x1;->n:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 27
    iput-object v1, p0, Ln3/e/a/e/x1;->o:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 28
    iput-boolean v0, p0, Ln3/e/a/e/x1;->e:Z

    .line 29
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    invoke-virtual {v0}, Ln3/e/a/e/z0;->r()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/x1;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/e/a/e/x1;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    iget-object v1, p0, Ln3/e/a/e/x1;->k:Ln3/e/a/e/z0$c;

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->o(Ln3/e/a/e/z0$c;)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ln3/e/a/e/x1;->s:Ln3/h/a/b;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/x1;->a:Ln3/e/a/e/z0;

    iget-object v1, p0, Ln3/e/a/e/x1;->l:Ln3/e/a/e/z0$c;

    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->o(Ln3/e/a/e/z0$c;)V

    .line 2
    iget-object v0, p0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1, v0}, Le/d/c/a/a;->F0(Ljava/lang/String;Ln3/h/a/b;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ln3/e/a/e/x1;->t:Ln3/h/a/b;

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/x1;->m:[Landroid/hardware/camera2/params/MeteringRectangle;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
