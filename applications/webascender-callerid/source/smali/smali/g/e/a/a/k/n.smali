.class public Lg/e/a/a/k/n;
.super Lg/e/a/a/k/m;
.source "SourceFile"


# instance fields
.field protected p:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/l/g;Lg/e/a/a/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/e/a/a/k/m;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/l/g;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lg/e/a/a/k/n;->p:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->k()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    iget-object p2, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->h()F

    move-result p2

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->f()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lg/e/a/a/l/g;->d(FF)Lg/e/a/a/l/d;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->h()F

    move-result v0

    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->j()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lg/e/a/a/l/g;->d(FF)Lg/e/a/a/l/d;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 4
    iget-wide v0, p2, Lg/e/a/a/l/d;->d:D

    double-to-float p3, v0

    .line 5
    iget-wide v0, p1, Lg/e/a/a/l/d;->d:D

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p1, Lg/e/a/a/l/d;->d:D

    double-to-float p3, v0

    .line 7
    iget-wide v0, p2, Lg/e/a/a/l/d;->d:D

    :goto_0
    double-to-float v0, v0

    .line 8
    invoke-static {p1}, Lg/e/a/a/l/d;->c(Lg/e/a/a/l/d;)V

    .line 9
    invoke-static {p2}, Lg/e/a/a/l/d;->c(Lg/e/a/a/l/d;)V

    move p1, p3

    move p2, v0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2}, Lg/e/a/a/k/m;->b(FF)V

    return-void
.end method

.method protected d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->t()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lg/e/a/a/l/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lg/e/a/a/l/b;

    move-result-object v0

    .line 5
    iget v1, v0, Lg/e/a/a/l/b;->c:F

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->d()F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 6
    iget v2, v0, Lg/e/a/a/l/b;->d:F

    .line 7
    iget v0, v0, Lg/e/a/a/l/b;->c:F

    iget-object v4, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    .line 8
    invoke-virtual {v4}, Lg/e/a/a/d/h;->Q()F

    move-result v4

    .line 9
    invoke-static {v0, v2, v4}, Lg/e/a/a/l/i;->t(FFF)Lg/e/a/a/l/b;

    move-result-object v0

    .line 10
    iget-object v4, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v4, Lg/e/a/a/d/h;->J:I

    .line 11
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lg/e/a/a/d/h;->K:I

    .line 12
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget v2, v0, Lg/e/a/a/l/b;->c:F

    invoke-virtual {v1}, Lg/e/a/a/d/b;->d()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Lg/e/a/a/d/h;->L:I

    .line 13
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget v2, v0, Lg/e/a/a/l/b;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lg/e/a/a/d/h;->M:I

    .line 14
    invoke-static {v0}, Lg/e/a/a/l/b;->c(Lg/e/a/a/l/b;)V

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->i()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    iget-object p2, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {p2}, Lg/e/a/a/l/j;->h()F

    move-result p2

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object p2, p0, Lg/e/a/a/k/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/h;->Q()F

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->v()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget v2, v2, Lg/e/a/a/d/a;->n:I

    mul-int/lit8 v8, v2, 0x2

    new-array v9, v8, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 4
    iget-object v5, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget-object v5, v5, Lg/e/a/a/d/a;->m:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 5
    iget-object v5, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget-object v5, v5, Lg/e/a/a/d/a;->l:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v9, v4

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    invoke-virtual {v1, v9}, Lg/e/a/a/l/g;->h([F)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    add-int/lit8 v1, v10, 0x1

    .line 7
    aget v5, v9, v1

    .line 8
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1, v5}, Lg/e/a/a/l/j;->D(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->u()Lg/e/a/a/f/e;

    move-result-object v1

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget-object v3, v2, Lg/e/a/a/d/a;->l:[F

    div-int/lit8 v4, v10, 0x2

    aget v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lg/e/a/a/f/e;->a(FLg/e/a/a/d/a;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    move v7, v0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lg/e/a/a/k/m;->f(Landroid/graphics/Canvas;Ljava/lang/String;FFLg/e/a/a/l/e;F)V

    :cond_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/k/m;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lg/e/a/a/k/a;->b:Lg/e/a/a/d/a;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->q()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/m;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->d()F

    move-result v0

    .line 3
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v1}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v3}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v3

    sget-object v4, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    .line 8
    iput v1, v2, Lg/e/a/a/l/e;->c:F

    .line 9
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 10
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->i()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v3, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v3}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v3

    sget-object v4, Lg/e/a/a/d/h$a;->TOP_INSIDE:Lg/e/a/a/d/h$a;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    .line 12
    iput v6, v2, Lg/e/a/a/l/e;->c:F

    .line 13
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 14
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->i()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v3, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v3}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v3

    sget-object v4, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    if-ne v3, v4, :cond_3

    .line 16
    iput v6, v2, Lg/e/a/a/l/e;->c:F

    .line 17
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 18
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v3, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v3}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v3

    sget-object v4, Lg/e/a/a/d/h$a;->BOTTOM_INSIDE:Lg/e/a/a/d/h$a;

    if-ne v3, v4, :cond_4

    .line 20
    iput v6, v2, Lg/e/a/a/l/e;->c:F

    .line 21
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 22
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    goto :goto_0

    .line 23
    :cond_4
    iput v1, v2, Lg/e/a/a/l/e;->c:F

    .line 24
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 25
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->i()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    .line 26
    iput v6, v2, Lg/e/a/a/l/e;->c:F

    .line 27
    iput v5, v2, Lg/e/a/a/l/e;->d:F

    .line 28
    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->h()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lg/e/a/a/k/n;->g(Landroid/graphics/Canvas;FLg/e/a/a/l/e;)V

    .line 29
    :goto_0
    invoke-static {v2}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    .line 5
    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->TOP_INSIDE:Lg/e/a/a/d/h$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    .line 6
    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->BOTH_SIDED:Lg/e/a/a/d/h$a;

    if-ne v0, v1, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->i()F

    move-result v2

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 8
    invoke-virtual {v0}, Lg/e/a/a/l/j;->j()F

    move-result v3

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->i()F

    move-result v4

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 9
    invoke-virtual {v0}, Lg/e/a/a/l/j;->f()F

    move-result v5

    iget-object v6, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 10
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->BOTTOM:Lg/e/a/a/d/h$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    .line 12
    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->BOTTOM_INSIDE:Lg/e/a/a/d/h$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    .line 13
    invoke-virtual {v0}, Lg/e/a/a/d/h;->R()Lg/e/a/a/d/h$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/h$a;->BOTH_SIDED:Lg/e/a/a/d/h$a;

    if-ne v0, v1, :cond_4

    .line 14
    :cond_3
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->h()F

    move-result v2

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 15
    invoke-virtual {v0}, Lg/e/a/a/l/j;->j()F

    move-result v3

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->h()F

    move-result v4

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 16
    invoke-virtual {v0}, Lg/e/a/a/l/j;->f()F

    move-result v5

    iget-object v6, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public n(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->s()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v1, p0, Lg/e/a/a/k/m;->l:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aput v3, v1, v4

    .line 6
    iget-object v5, p0, Lg/e/a/a/k/n;->p:Landroid/graphics/Path;

    .line 7
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/e/a/a/d/g;

    .line 10
    invoke-virtual {v6}, Lg/e/a/a/d/b;->f()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 12
    iget-object v8, p0, Lg/e/a/a/k/m;->m:Landroid/graphics/RectF;

    iget-object v9, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v9}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    iget-object v8, p0, Lg/e/a/a/k/m;->m:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->n()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v3, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v8, p0, Lg/e/a/a/k/m;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 15
    iget-object v8, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v8, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->m()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v8, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->n()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v8, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->i()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 19
    invoke-virtual {v6}, Lg/e/a/a/d/g;->l()F

    move-result v8

    aput v8, v1, v4

    .line 20
    iget-object v8, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    invoke-virtual {v8, v1}, Lg/e/a/a/l/g;->h([F)V

    .line 21
    iget-object v8, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v8}, Lg/e/a/a/l/j;->h()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v8, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v8}, Lg/e/a/a/l/j;->i()F

    move-result v8

    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v8, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 25
    invoke-virtual {v6}, Lg/e/a/a/d/g;->j()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const-string v9, ""

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 27
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->o()Landroid/graphics/Paint$Style;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 29
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/b;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/b;->b()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-static {v9, v8}, Lg/e/a/a/l/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    .line 33
    invoke-static {v10}, Lg/e/a/a/l/i;->e(F)F

    move-result v10

    invoke-virtual {v6}, Lg/e/a/a/d/b;->d()F

    move-result v11

    add-float/2addr v10, v11

    .line 34
    invoke-virtual {v6}, Lg/e/a/a/d/g;->n()F

    move-result v11

    add-float/2addr v11, v9

    invoke-virtual {v6}, Lg/e/a/a/d/b;->e()F

    move-result v12

    add-float/2addr v11, v12

    .line 35
    invoke-virtual {v6}, Lg/e/a/a/d/g;->k()Lg/e/a/a/d/g$a;

    move-result-object v6

    .line 36
    sget-object v12, Lg/e/a/a/d/g$a;->RIGHT_TOP:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_2

    .line 37
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 39
    invoke-virtual {v6}, Lg/e/a/a/l/j;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 41
    :cond_2
    sget-object v12, Lg/e/a/a/d/g$a;->RIGHT_BOTTOM:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_3

    .line 42
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 44
    invoke-virtual {v6}, Lg/e/a/a/l/j;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 46
    :cond_3
    sget-object v12, Lg/e/a/a/d/g$a;->LEFT_TOP:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_4

    .line 47
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 49
    invoke-virtual {v6}, Lg/e/a/a/l/j;->h()F

    move-result v6

    add-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 51
    :cond_4
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 53
    invoke-virtual {v6}, Lg/e/a/a/l/j;->G()F

    move-result v6

    add-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 55
    :cond_5
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method
