.class public Lg/e/a/a/c/d;
.super Lg/e/a/a/c/a;
.source "SourceFile"


# instance fields
.field private y0:Landroid/graphics/RectF;


# virtual methods
.method protected Q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    iget-object v3, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v4, v3, Lg/e/a/a/d/a;->I:F

    iget v3, v3, Lg/e/a/a/d/a;->H:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lg/e/a/a/l/g;->j(FFFF)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    iget-object v1, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget v2, v1, Lg/e/a/a/d/a;->H:F

    iget v1, v1, Lg/e/a/a/d/a;->I:F

    iget-object v3, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v4, v3, Lg/e/a/a/d/a;->I:F

    iget v3, v3, Lg/e/a/a/d/a;->H:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lg/e/a/a/l/g;->j(FFFF)V

    return-void
.end method

.method public g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/d;->y0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->z(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/c/d;->y0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 3
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    .line 4
    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    .line 6
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/i;->e0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v5, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    invoke-virtual {v5}, Lg/e/a/a/k/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg/e/a/a/d/i;->U(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v3, v2

    .line 8
    :cond_0
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/i;->e0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v5, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    invoke-virtual {v5}, Lg/e/a/a/k/a;->c()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v2, v5}, Lg/e/a/a/d/i;->U(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v0, v2

    .line 10
    :cond_1
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v5, v2, Lg/e/a/a/d/h;->L:I

    int-to-float v5, v5

    .line 11
    invoke-virtual {v2}, Lg/e/a/a/d/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v1, v5

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_3

    :goto_0
    add-float/2addr v4, v5

    goto :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v2

    sget-object v6, Lg/e/a/a/d/h$a;->BOTH_SIDED:Lg/e/a/a/d/h$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v1, v5

    goto :goto_0

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v3, v2

    .line 16
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraRightOffset()F

    move-result v2

    add-float/2addr v4, v2

    .line 17
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraBottomOffset()F

    move-result v2

    add-float/2addr v0, v2

    .line 18
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v1, v2

    .line 19
    iget v2, p0, Lg/e/a/a/c/b;->c0:F

    invoke-static {v2}, Lg/e/a/a/l/i;->e(F)F

    move-result v2

    .line 20
    iget-object v5, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 23
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 24
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 25
    invoke-virtual {v5, v6, v7, v8, v2}, Lg/e/a/a/l/j;->K(FFFF)V

    .line 26
    iget-boolean v2, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz v2, :cond_5

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetLeft: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetBottom: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_5
    invoke-virtual {p0}, Lg/e/a/a/c/b;->P()V

    .line 30
    invoke-virtual {p0}, Lg/e/a/a/c/d;->Q()V

    return-void
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 2
    invoke-virtual {v2}, Lg/e/a/a/l/j;->j()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/b;->s0:Lg/e/a/a/l/d;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lg/e/a/a/l/g;->e(FFLg/e/a/a/l/d;)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->G:F

    float-to-double v0, v0

    iget-object v2, p0, Lg/e/a/a/c/b;->s0:Lg/e/a/a/l/d;

    iget-wide v2, v2, Lg/e/a/a/l/d;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 1
    sget-object v0, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    invoke-virtual {p0, v0}, Lg/e/a/a/c/b;->a(Lg/e/a/a/d/i$a;)Lg/e/a/a/l/g;

    move-result-object v0

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 2
    invoke-virtual {v2}, Lg/e/a/a/l/j;->f()F

    move-result v2

    iget-object v3, p0, Lg/e/a/a/c/b;->r0:Lg/e/a/a/l/d;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lg/e/a/a/l/g;->e(FFLg/e/a/a/l/d;)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->H:F

    float-to-double v0, v0

    iget-object v2, p0, Lg/e/a/a/c/b;->r0:Lg/e/a/a/l/d;

    iget-wide v2, v2, Lg/e/a/a/l/d;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public l(FF)Lg/e/a/a/g/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->g:Lg/e/a/a/e/g;

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lg/e/a/a/c/c;->f:Z

    if-eqz p1, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lg/e/a/a/c/c;->getHighlighter()Lg/e/a/a/g/e;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lg/e/a/a/g/e;->a(FF)Lg/e/a/a/g/c;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lg/e/a/a/g/c;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p1}, Lg/e/a/a/g/c;->e()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Lg/e/a/a/g/c;->d()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method protected o()V
    .locals 4

    .line 1
    new-instance v0, Lg/e/a/a/l/c;

    invoke-direct {v0}, Lg/e/a/a/l/c;-><init>()V

    iput-object v0, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    .line 2
    invoke-super {p0}, Lg/e/a/a/c/a;->o()V

    .line 3
    new-instance v0, Lg/e/a/a/l/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, v1}, Lg/e/a/a/l/h;-><init>(Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    .line 4
    new-instance v0, Lg/e/a/a/l/h;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, v1}, Lg/e/a/a/l/h;-><init>(Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    .line 5
    new-instance v0, Lg/e/a/a/k/e;

    iget-object v1, p0, Lg/e/a/a/c/c;->z:Lg/e/a/a/a/a;

    iget-object v2, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-direct {v0, p0, v1, v2}, Lg/e/a/a/k/e;-><init>(Lg/e/a/a/h/a/a;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    iput-object v0, p0, Lg/e/a/a/c/c;->w:Lg/e/a/a/k/d;

    .line 6
    new-instance v0, Lg/e/a/a/g/d;

    invoke-direct {v0, p0}, Lg/e/a/a/g/d;-><init>(Lg/e/a/a/h/a/a;)V

    invoke-virtual {p0, v0}, Lg/e/a/a/c/c;->setHighlighter(Lg/e/a/a/g/b;)V

    .line 7
    new-instance v0, Lg/e/a/a/k/q;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/b;->f0:Lg/e/a/a/d/i;

    iget-object v3, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3}, Lg/e/a/a/k/q;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/l/g;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->h0:Lg/e/a/a/k/p;

    .line 8
    new-instance v0, Lg/e/a/a/k/q;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/b;->g0:Lg/e/a/a/d/i;

    iget-object v3, p0, Lg/e/a/a/c/b;->k0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3}, Lg/e/a/a/k/q;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/l/g;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->i0:Lg/e/a/a/k/p;

    .line 9
    new-instance v0, Lg/e/a/a/k/n;

    iget-object v1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    iget-object v2, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget-object v3, p0, Lg/e/a/a/c/b;->j0:Lg/e/a/a/l/g;

    invoke-direct {v0, v1, v2, v3, p0}, Lg/e/a/a/k/n;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/l/g;Lg/e/a/a/c/a;)V

    iput-object v0, p0, Lg/e/a/a/c/b;->l0:Lg/e/a/a/k/m;

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    div-float/2addr v0, p1

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {p1, v0}, Lg/e/a/a/l/j;->R(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/c/c;->n:Lg/e/a/a/d/h;

    iget v0, v0, Lg/e/a/a/d/a;->I:F

    div-float/2addr v0, p1

    .line 2
    iget-object p1, p0, Lg/e/a/a/c/c;->y:Lg/e/a/a/l/j;

    invoke-virtual {p1, v0}, Lg/e/a/a/l/j;->P(F)V

    return-void
.end method
