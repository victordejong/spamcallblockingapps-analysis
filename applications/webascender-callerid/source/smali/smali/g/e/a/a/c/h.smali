.class public Lg/e/a/a/c/h;
.super Lg/e/a/a/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/c/g<",
        "Lg/e/a/a/e/q;",
        ">;"
    }
.end annotation


# instance fields
.field private P:F

.field private Q:F

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:I

.field private W:Lg/e/a/a/d/i;

.field protected a0:Lg/e/a/a/k/r;

.field protected b0:Lg/e/a/a/k/o;


# virtual methods
.method public A(F)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Lg/e/a/a/l/i;->q(F)F

    move-result p1

    .line 2
    invoke-virtual {p0}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v0

    .line 3
    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/q;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/i;

    invoke-interface {v1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public getFactor()F
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/h;->L:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method protected getRequiredLegendOffset()F
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    invoke-virtual {v0}, Lg/e/a/a/k/f;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getSkipWebLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->V:I

    return v0
.end method

.method public getSliceAngle()F
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v0, Lg/e/a/a/e/q;

    invoke-virtual {v0}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v0

    check-cast v0, Lg/e/a/a/h/b/i;

    invoke-interface {v0}, Lg/e/a/a/h/b/d;->v0()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getWebAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->T:I

    return v0
.end method

.method public getWebColor()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->R:I

    return v0
.end method

.method public getWebColorInner()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->S:I

    return v0
.end method

.method public getWebLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->P:F

    return v0
.end method

.method public getWebLineWidthInner()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/c/h;->Q:F

    return v0
.end method

.method public getYAxis()Lg/e/a/a/d/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    return-object v0
.end method

.method public getYChartMax()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget v0, v0, Lg/e/a/a/d/a;->G:F

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget v0, v0, Lg/e/a/a/d/a;->H:F

    return v0
.end method

.method public getYRange()F
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    return v0
.end method

.method protected o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/g;->o()V

    .line 2
    new-instance v0, Lg/e/a/a/d/i;

    sget-object v1, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-direct {v0, v1}, Lg/e/a/a/d/i;-><init>(Lg/e/a/a/d/i$a;)V

    iput-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 3
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, p0, Lg/e/a/a/c/h;->P:F

    const/high16 v0, 0x3f400000    # 0.75f

    .line 4
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, p0, Lg/e/a/a/c/h;->Q:F

    .line 5
    new-instance v0, Lg/e/a/a/k/k;

    iget-object v1, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, p0, v1, v2}, Lg/e/a/a/k/k;-><init>(Lg/e/a/a/c/h;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    .line 6
    new-instance v0, Lg/e/a/a/k/r;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    invoke-direct {v0, v1, v2, p0}, Lg/e/a/a/k/r;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/c/h;)V

    iput-object v0, p0, Lg/e/a/a/c/h;->a0:Lg/e/a/a/k/r;

    .line 7
    new-instance v0, Lg/e/a/a/k/o;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-direct {v0, v1, v2, p0}, Lg/e/a/a/k/o;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/c/h;)V

    iput-object v0, p0, Lg/e/a/a/c/h;->b0:Lg/e/a/a/k/o;

    .line 8
    new-instance v0, Lg/e/a/a/g/h;

    invoke-direct {v0, p0}, Lg/e/a/a/g/h;-><init>(Lg/e/a/a/c/h;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->x:Lg/e/a/a/g/e;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lg/e/a/a/c/c;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/h;->b0:Lg/e/a/a/k/o;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->G:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lg/e/a/a/k/m;->a(FFZ)V

    .line 5
    :cond_1
    iget-object v0, p0, Lg/e/a/a/c/h;->b0:Lg/e/a/a/k/o;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/o;->i(Landroid/graphics/Canvas;)V

    .line 6
    iget-boolean v0, p0, Lg/e/a/a/c/h;->U:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/d;->c(Landroid/graphics/Canvas;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lg/e/a/a/c/h;->a0:Lg/e/a/a/k/r;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/r;->l(Landroid/graphics/Canvas;)V

    .line 10
    :cond_3
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/d;->b(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p0}, Lg/e/a/a/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    iget-object v1, p0, Lg/e/a/a/c/c;->F:[Lg/e/a/a/g/c;

    invoke-virtual {v0, p1, v1}, Lg/e/a/a/k/d;->d(Landroid/graphics/Canvas;[Lg/e/a/a/g/c;)V

    .line 13
    :cond_4
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->A()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget-object v0, p0, Lg/e/a/a/c/h;->a0:Lg/e/a/a/k/r;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/r;->l(Landroid/graphics/Canvas;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lg/e/a/a/c/h;->a0:Lg/e/a/a/k/r;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/r;->i(Landroid/graphics/Canvas;)V

    .line 16
    iget-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/d;->e(Landroid/graphics/Canvas;)V

    .line 17
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    invoke-virtual {v0, p1}, Lg/e/a/a/k/f;->e(Landroid/graphics/Canvas;)V

    .line 18
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->i(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p0, p1}, Lg/e/a/a/c/c;->j(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDrawWeb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/c/h;->U:Z

    return-void
.end method

.method public setSkipWebLineCount(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lg/e/a/a/c/h;->V:I

    return-void
.end method

.method public setWebAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/h;->T:I

    return-void
.end method

.method public setWebColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/h;->R:I

    return-void
.end method

.method public setWebColorInner(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/e/a/a/c/h;->S:I

    return-void
.end method

.method public setWebLineWidth(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/h;->P:F

    return-void
.end method

.method public setWebLineWidthInner(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/c/h;->Q:F

    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/c/h;->x()V

    .line 3
    iget-object v0, p0, Lg/e/a/a/c/h;->a0:Lg/e/a/a/k/r;

    iget-object v1, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v3, v1, Lg/e/a/a/d/a;->G:F

    invoke-virtual {v1}, Lg/e/a/a/d/i;->d0()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lg/e/a/a/k/a;->a(FFZ)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/h;->b0:Lg/e/a/a/k/o;

    iget-object v1, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->G:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lg/e/a/a/k/m;->a(FFZ)V

    .line 5
    iget-object v0, p0, Lg/e/a/a/c/c;->q:Lg/e/a/a/d/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/e/a/a/d/e;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lg/e/a/a/c/c;->v:Lg/e/a/a/k/f;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    invoke-virtual {v0, v1}, Lg/e/a/a/k/f;->a(Lg/e/a/a/e/g;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/c/g;->g()V

    return-void
.end method

.method protected x()V
    .locals 4

    .line 1
    invoke-super {p0}, Lg/e/a/a/c/g;->x()V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/h;->W:Lg/e/a/a/d/i;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/q;

    sget-object v2, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {v1, v2}, Lg/e/a/a/e/g;->r(Lg/e/a/a/d/i$a;)F

    move-result v1

    iget-object v3, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v3, Lg/e/a/a/e/q;

    invoke-virtual {v3, v2}, Lg/e/a/a/e/g;->p(Lg/e/a/a/d/i$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/e/a/a/d/i;->i(FF)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    check-cast v1, Lg/e/a/a/e/q;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/i;

    invoke-interface {v1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lg/e/a/a/d/a;->i(FF)V

    return-void
.end method
