.class public Lg/e/a/a/k/p;
.super Lg/e/a/a/k/a;
.source "SourceFile"


# instance fields
.field protected h:Lg/e/a/a/d/i;

.field protected i:Landroid/graphics/Paint;

.field protected j:Landroid/graphics/Path;

.field protected k:Landroid/graphics/RectF;

.field protected l:[F

.field protected m:Landroid/graphics/Path;

.field protected n:Landroid/graphics/RectF;

.field protected o:Landroid/graphics/Path;

.field protected p:[F

.field protected q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lg/e/a/a/l/j;Lg/e/a/a/d/i;Lg/e/a/a/l/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lg/e/a/a/k/a;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/l/g;Lg/e/a/a/d/a;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lg/e/a/a/k/p;->j:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg/e/a/a/k/p;->k:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p3, p1, [F

    .line 4
    iput-object p3, p0, Lg/e/a/a/k/p;->l:[F

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lg/e/a/a/k/p;->m:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lg/e/a/a/k/p;->n:Landroid/graphics/RectF;

    .line 7
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lg/e/a/a/k/p;->o:Landroid/graphics/Path;

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lg/e/a/a/k/p;->p:[F

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg/e/a/a/k/p;->q:Landroid/graphics/RectF;

    .line 10
    iput-object p2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    .line 11
    iget-object p1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lg/e/a/a/l/i;->e(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    const p2, -0x777778

    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object p1, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object p1, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected d(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/i;->a0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/i;->b0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->n:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->n:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    iget-object v2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v2, v0}, Lg/e/a/a/d/a;->m(I)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    .line 4
    aget v3, p3, v3

    add-float/2addr v3, p4

    iget-object v4, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/p;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v2}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v1, p0, Lg/e/a/a/k/p;->n:Landroid/graphics/RectF;

    iget-object v2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/i;->Z()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/p;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object v1, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    invoke-virtual {v1, v3, v3}, Lg/e/a/a/l/g;->b(FF)Lg/e/a/a/l/d;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/i;->Y()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v2, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/i;->Z()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v2, p0, Lg/e/a/a/k/p;->m:Landroid/graphics/Path;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->h()F

    move-result v3

    iget-wide v4, v1, Lg/e/a/a/l/d;->d:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->i()F

    move-result v3

    iget-wide v4, v1, Lg/e/a/a/l/d;->d:D

    double-to-float v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v1, p0, Lg/e/a/a/k/p;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public f()Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v1}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/k/p;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lg/e/a/a/k/a;->b:Lg/e/a/a/d/a;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->q()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/p;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected g()[F
    .locals 5

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->l:[F

    array-length v0, v0

    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    iget v1, v1, Lg/e/a/a/d/a;->n:I

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 2
    new-array v0, v1, [F

    iput-object v0, p0, Lg/e/a/a/k/p;->l:[F

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/p;->l:[F

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 5
    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    iget-object v3, v3, Lg/e/a/a/d/a;->l:[F

    div-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lg/e/a/a/k/a;->c:Lg/e/a/a/l/g;

    invoke-virtual {v1, v0}, Lg/e/a/a/l/g;->h([F)V

    return-object v0
.end method

.method protected h(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->G()F

    move-result v0

    add-int/lit8 p2, p2, 0x1

    aget v1, p3, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->i()F

    move-result v0

    aget p2, p3, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lg/e/a/a/k/p;->g()[F

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/b;->d()F

    move-result v1

    .line 7
    iget-object v2, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    const-string v3, "A"

    invoke-static {v2, v3}, Lg/e/a/a/l/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/b;->e()F

    move-result v3

    add-float/2addr v2, v3

    .line 8
    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/i;->Q()Lg/e/a/a/d/i$a;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v4}, Lg/e/a/a/d/i;->R()Lg/e/a/a/d/i$b;

    move-result-object v4

    .line 10
    sget-object v5, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    if-ne v3, v5, :cond_2

    .line 11
    sget-object v3, Lg/e/a/a/d/i$b;->OUTSIDE_CHART:Lg/e/a/a/d/i$b;

    if-ne v4, v3, :cond_1

    .line 12
    iget-object v3, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 13
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->G()F

    move-result v3

    goto :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 15
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->G()F

    move-result v3

    goto :goto_0

    .line 16
    :cond_2
    sget-object v3, Lg/e/a/a/d/i$b;->OUTSIDE_CHART:Lg/e/a/a/d/i$b;

    if-ne v4, v3, :cond_3

    .line 17
    iget-object v3, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 18
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->i()F

    move-result v3

    :goto_0
    add-float/2addr v3, v1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v3, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 20
    iget-object v3, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v3}, Lg/e/a/a/l/j;->i()F

    move-result v3

    :goto_1
    sub-float/2addr v3, v1

    .line 21
    :goto_2
    invoke-virtual {p0, p1, v3, v0, v2}, Lg/e/a/a/k/p;->d(Landroid/graphics/Canvas;F[FF)V

    :cond_4
    :goto_3
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->l()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/i;->Q()Lg/e/a/a/d/i$a;

    move-result-object v0

    sget-object v1, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->h()F

    move-result v2

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->j()F

    move-result v3

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->h()F

    move-result v4

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 6
    invoke-virtual {v0}, Lg/e/a/a/l/j;->f()F

    move-result v5

    iget-object v6, p0, Lg/e/a/a/k/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v0}, Lg/e/a/a/l/j;->i()F

    move-result v2

    iget-object v0, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

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

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lg/e/a/a/k/p;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 5
    invoke-virtual {p0}, Lg/e/a/a/k/p;->g()[F

    move-result-object v1

    .line 6
    iget-object v2, p0, Lg/e/a/a/k/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v2, p0, Lg/e/a/a/k/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v2, p0, Lg/e/a/a/k/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v3}, Lg/e/a/a/d/a;->p()Landroid/graphics/DashPathEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 9
    iget-object v2, p0, Lg/e/a/a/k/p;->j:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    .line 11
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 12
    invoke-virtual {p0, v2, v3, v1}, Lg/e/a/a/k/p;->h(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lg/e/a/a/k/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

    invoke-virtual {v0}, Lg/e/a/a/d/i;->c0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Lg/e/a/a/k/p;->e(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public l(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/p;->h:Lg/e/a/a/d/i;

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
    iget-object v1, p0, Lg/e/a/a/k/p;->p:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    aput v3, v1, v2

    const/4 v4, 0x1

    .line 5
    aput v3, v1, v4

    .line 6
    iget-object v5, p0, Lg/e/a/a/k/p;->o:Landroid/graphics/Path;

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
    iget-object v8, p0, Lg/e/a/a/k/p;->q:Landroid/graphics/RectF;

    iget-object v9, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    invoke-virtual {v9}, Lg/e/a/a/l/j;->o()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 13
    iget-object v8, p0, Lg/e/a/a/k/p;->q:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lg/e/a/a/d/g;->n()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v3, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 14
    iget-object v8, p0, Lg/e/a/a/k/p;->q:Landroid/graphics/RectF;

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

    invoke-virtual {v6}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Lg/e/a/a/d/b;->b()F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    invoke-static {v9, v8}, Lg/e/a/a/l/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    .line 34
    invoke-static {v10}, Lg/e/a/a/l/i;->e(F)F

    move-result v10

    invoke-virtual {v6}, Lg/e/a/a/d/b;->d()F

    move-result v11

    add-float/2addr v10, v11

    .line 35
    invoke-virtual {v6}, Lg/e/a/a/d/g;->n()F

    move-result v11

    add-float/2addr v11, v9

    invoke-virtual {v6}, Lg/e/a/a/d/b;->e()F

    move-result v12

    add-float/2addr v11, v12

    .line 36
    invoke-virtual {v6}, Lg/e/a/a/d/g;->k()Lg/e/a/a/d/g$a;

    move-result-object v6

    .line 37
    sget-object v12, Lg/e/a/a/d/g$a;->RIGHT_TOP:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_2

    .line 38
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 39
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 40
    invoke-virtual {v6}, Lg/e/a/a/l/j;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 42
    :cond_2
    sget-object v12, Lg/e/a/a/d/g$a;->RIGHT_BOTTOM:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_3

    .line 43
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 45
    invoke-virtual {v6}, Lg/e/a/a/l/j;->i()F

    move-result v6

    sub-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 47
    :cond_3
    sget-object v12, Lg/e/a/a/d/g$a;->LEFT_TOP:Lg/e/a/a/d/g$a;

    if-ne v6, v12, :cond_4

    .line 48
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 50
    invoke-virtual {v6}, Lg/e/a/a/l/j;->h()F

    move-result v6

    add-float/2addr v6, v10

    aget v10, v1, v4

    sub-float/2addr v10, v11

    add-float/2addr v10, v9

    iget-object v9, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1, v8, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 52
    :cond_4
    iget-object v6, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    iget-object v6, p0, Lg/e/a/a/k/l;->a:Lg/e/a/a/l/j;

    .line 54
    invoke-virtual {v6}, Lg/e/a/a/l/j;->G()F

    move-result v6

    add-float/2addr v6, v10

    aget v9, v1, v4

    add-float/2addr v9, v11

    iget-object v10, p0, Lg/e/a/a/k/a;->g:Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p1, v8, v6, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
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
