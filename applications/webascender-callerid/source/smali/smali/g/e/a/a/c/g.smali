.class public abstract Lg/e/a/a/c/g;
.super Lg/e/a/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/g<",
        "+",
        "Lg/e/a/a/h/b/d<",
        "+",
        "Lg/e/a/a/e/i;",
        ">;>;>",
        "Lg/e/a/a/c/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private L:F

.field private M:F

.field protected N:Z

.field protected O:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e/a/a/c/c;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 2
    iput p1, p0, Lg/e/a/a/c/g;->L:F

    .line 3
    iput p1, p0, Lg/e/a/a/c/g;->M:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lg/e/a/a/c/g;->N:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lg/e/a/a/c/g;->O:F

    return-void
.end method


# virtual methods
.method public abstract A(F)I
.end method

.method public B(Lg/e/a/a/l/e;FF)Lg/e/a/a/l/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lg/e/a/a/c/g;->C(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    return-object v0
.end method

.method public C(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V
    .locals 6

    .line 1
    iget v0, p1, Lg/e/a/a/l/e;->c:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p4, Lg/e/a/a/l/e;->c:F

    .line 2
    iget p1, p1, Lg/e/a/a/l/e;->d:F

    float-to-double v0, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p4, Lg/e/a/a/l/e;->d:F

    return-void
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/g;->N:Z

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    instance-of v1, v0, Lg/e/a/a/i/f;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lg/e/a/a/i/f;

    invoke-virtual {v0}, Lg/e/a/a/i/f;->g()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v0}, Lg/e/a/a/d/e;->D()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v0, v0, Lg/e/a/a/d/e;->x:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 3
    invoke-virtual {v2}, Lg/e/a/a/l/j;->m()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    sget-object v2, Lg/e/a/a/c/g$a;->c:[I

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->y()Lg/e/a/a/d/e$e;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v0}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v0

    sget-object v2, Lg/e/a/a/d/e$f;->TOP:Lg/e/a/a/d/e$f;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 7
    invoke-virtual {v0}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v0

    sget-object v2, Lg/e/a/a/d/e$f;->BOTTOM:Lg/e/a/a/d/e$f;

    if-ne v0, v2, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredLegendOffset()F

    move-result v0

    .line 9
    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v2, v2, Lg/e/a/a/d/e;->y:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 10
    invoke-virtual {v0}, Lg/e/a/a/l/j;->l()F

    move-result v0

    iget-object v5, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v5}, Lg/e/a/a/d/e;->v()F

    move-result v5

    mul-float v0, v0, v5

    .line 11
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 12
    sget-object v2, Lg/e/a/a/c/g$a;->a:[I

    iget-object v5, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v5}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_4
    :goto_2
    move v2, v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_3
    move v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_9

    .line 13
    :cond_6
    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v2}, Lg/e/a/a/d/e;->u()Lg/e/a/a/d/e$d;

    move-result-object v2

    sget-object v5, Lg/e/a/a/d/e$d;->LEFT:Lg/e/a/a/d/e$d;

    if-eq v2, v5, :cond_8

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    .line 14
    invoke-virtual {v2}, Lg/e/a/a/d/e;->u()Lg/e/a/a/d/e$d;

    move-result-object v2

    sget-object v5, Lg/e/a/a/d/e$d;->RIGHT:Lg/e/a/a/d/e$d;

    if-ne v2, v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 15
    :cond_8
    :goto_4
    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v2}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v2

    sget-object v5, Lg/e/a/a/d/e$f;->CENTER:Lg/e/a/a/d/e$f;

    if-ne v2, v5, :cond_9

    const/high16 v2, 0x41500000    # 13.0f

    .line 16
    invoke-static {v2}, Lg/e/a/a/l/i;->e(F)F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_7

    :cond_9
    const/high16 v2, 0x41000000    # 8.0f

    .line 17
    invoke-static {v2}, Lg/e/a/a/l/i;->e(F)F

    move-result v2

    add-float/2addr v0, v2

    .line 18
    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v5, v2, Lg/e/a/a/d/e;->y:F

    iget v2, v2, Lg/e/a/a/d/e;->z:F

    add-float/2addr v5, v2

    .line 19
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getCenter()Lg/e/a/a/l/e;

    move-result-object v2

    .line 20
    iget-object v6, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v6}, Lg/e/a/a/d/e;->u()Lg/e/a/a/d/e$d;

    move-result-object v6

    sget-object v7, Lg/e/a/a/d/e$d;->RIGHT:Lg/e/a/a/d/e$d;

    const/high16 v8, 0x41700000    # 15.0f

    if-ne v6, v7, :cond_a

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    add-float/2addr v6, v8

    goto :goto_5

    :cond_a
    sub-float v6, v0, v8

    :goto_5
    add-float/2addr v5, v8

    .line 22
    invoke-virtual {p0, v6, v5}, Lg/e/a/a/c/g;->y(FF)F

    move-result v7

    .line 23
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRadius()F

    move-result v8

    .line 24
    invoke-virtual {p0, v6, v5}, Lg/e/a/a/c/g;->z(FF)F

    move-result v6

    .line 25
    invoke-virtual {p0, v2, v8, v6}, Lg/e/a/a/c/g;->B(Lg/e/a/a/l/e;FF)Lg/e/a/a/l/e;

    move-result-object v6

    .line 26
    iget v8, v6, Lg/e/a/a/l/e;->c:F

    iget v9, v6, Lg/e/a/a/l/e;->d:F

    invoke-virtual {p0, v8, v9}, Lg/e/a/a/c/g;->y(FF)F

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    .line 27
    invoke-static {v9}, Lg/e/a/a/l/i;->e(F)F

    move-result v9

    .line 28
    iget v10, v2, Lg/e/a/a/l/e;->d:F

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v5, v5, v10

    if-lez v5, :cond_b

    goto :goto_6

    :cond_b
    cmpg-float v0, v7, v8

    if-gez v0, :cond_c

    sub-float/2addr v8, v7

    add-float/2addr v9, v8

    move v0, v9

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    .line 29
    :goto_6
    invoke-static {v2}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 30
    invoke-static {v6}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 31
    :goto_7
    sget-object v2, Lg/e/a/a/c/g$a;->b:[I

    iget-object v5, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v5}, Lg/e/a/a/d/e;->u()Lg/e/a/a/d/e$d;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v4, :cond_10

    if-eq v2, v3, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_d

    goto :goto_8

    .line 32
    :cond_d
    sget-object v0, Lg/e/a/a/c/g$a;->a:[I

    iget-object v2, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v2}, Lg/e/a/a/d/e;->A()Lg/e/a/a/d/e$f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_e

    :goto_8
    goto/16 :goto_0

    .line 33
    :cond_e
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v0, v0, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 34
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_2

    .line 36
    :cond_f
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    iget v0, v0, Lg/e/a/a/d/e;->y:F

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 37
    invoke-virtual {v2}, Lg/e/a/a/l/j;->l()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    invoke-virtual {v3}, Lg/e/a/a/d/e;->v()F

    move-result v3

    mul-float v2, v2, v3

    .line 38
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto/16 :goto_3

    :cond_10
    move v1, v0

    goto/16 :goto_0

    .line 39
    :goto_9
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v1, v4

    .line 40
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v0, v4

    .line 41
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v3, v4

    .line 42
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredBaseOffset()F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    :goto_a
    iget v4, p0, Lg/e/a/a/c/g;->O:F

    invoke-static {v4}, Lg/e/a/a/l/i;->e(F)F

    move-result v4

    .line 44
    instance-of v5, p0, Lg/e/a/a/c/h;

    if-eqz v5, :cond_12

    .line 45
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getXAxis()Lg/e/a/a/d/h;

    move-result-object v5

    .line 46
    invoke-virtual {v5}, Lg/e/a/a/d/b;->f()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5}, Lg/e/a/a/d/a;->z()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 47
    iget v5, v5, Lg/e/a/a/d/h;->L:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 48
    :cond_12
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraTopOffset()F

    move-result v5

    add-float/2addr v3, v5

    .line 49
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraRightOffset()F

    move-result v5

    add-float/2addr v0, v5

    .line 50
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraBottomOffset()F

    move-result v5

    add-float/2addr v2, v5

    .line 51
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraLeftOffset()F

    move-result v5

    add-float/2addr v1, v5

    .line 52
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 53
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 54
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 55
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRequiredBaseOffset()F

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 56
    iget-object v4, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v4, v1, v3, v0, v2}, Lg/e/a/a/l/j;->K(FFFF)V

    .line 57
    iget-boolean v4, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v4, :cond_13

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetLeft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetBottom: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public getDiameter()F
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraRightOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraBottomOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0}, Lg/e/a/a/e/g;->h()I

    move-result v0

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/g;->O:F

    return v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/g;->M:F

    return v0
.end method

.method protected abstract getRequiredBaseOffset()F
.end method

.method protected abstract getRequiredLegendOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/g;->L:F

    return v0
.end method

.method public getYChartMax()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()V
    .locals 1

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/c;->o()V

    .line 2
    new-instance v0, Lg/e/a/a/i/f;

    invoke-direct {v0, p0}, Lg/e/a/a/i/f;-><init>(Lg/e/a/a/c/g;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/c/c;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/e/a/a/c/c;->s:Lg/e/a/a/i/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setMinOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/g;->O:F

    return-void
.end method

.method public setRotationAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/g;->M:F

    .line 2
    invoke-static {p1}, Lg/e/a/a/l/i;->q(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/g;->L:F

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/g;->N:Z

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/c/g;->x()V

    .line 3
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0, v1}, Lg/e/a/a/k/f;->a(Lg/e/a/a/e/g;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/c/g;->g()V

    return-void
.end method

.method protected x()V
    .locals 0

    return-void
.end method

.method public y(FF)F
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v0

    .line 2
    iget v1, v0, Lg/e/a/a/l/e;->c:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    sub-float p1, v1, p1

    .line 3
    :goto_0
    iget v1, v0, Lg/e/a/a/l/e;->d:F

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    sub-float/2addr p2, v1

    goto :goto_1

    :cond_1
    sub-float p2, v1, p2

    :goto_1
    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 5
    invoke-static {v0}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return p1
.end method

.method public z(FF)F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v0

    .line 2
    iget v1, v0, Lg/e/a/a/l/e;->c:F

    sub-float v1, p1, v1

    float-to-double v1, v1

    iget v3, v0, Lg/e/a/a/l/e;->d:F

    sub-float/2addr p2, v3

    float-to-double v3, p2

    mul-double v1, v1, v1

    mul-double v5, v3, v3

    add-double/2addr v1, v5

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p2, v1

    .line 6
    iget v1, v0, Lg/e/a/a/l/e;->c:F

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    sub-float p2, v2, p2

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    add-float/2addr p2, p1

    cmpl-float p1, p2, v2

    if-lez p1, :cond_1

    sub-float/2addr p2, v2

    .line 7
    :cond_1
    invoke-static {v0}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return p2
.end method
