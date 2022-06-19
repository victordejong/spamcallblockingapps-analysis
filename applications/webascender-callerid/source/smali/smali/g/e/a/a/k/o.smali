.class public Lg/e/a/a/k/o;
.super Lg/e/a/a/k/m;
.source "SourceFile"


# instance fields
.field private p:Lg/e/a/a/c/h;


# direct methods
.method public constructor <init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/c/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lg/e/a/a/k/m;-><init>(Lg/e/a/a/l/j;Lg/e/a/a/d/h;Lg/e/a/a/l/g;)V

    .line 2
    iput-object p3, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    return-void
.end method


# virtual methods
.method public i(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/a;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v0}, Lg/e/a/a/d/h;->Q()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 3
    invoke-static {v1, v2}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v8

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->c()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->b()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lg/e/a/a/k/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v2}, Lg/e/a/a/d/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v9

    .line 8
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/h;->getFactor()F

    move-result v10

    .line 9
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v11

    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v1}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v12

    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v1

    check-cast v1, Lg/e/a/a/e/q;

    invoke-virtual {v1}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/i;

    invoke-interface {v1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v1

    if-ge v13, v1, :cond_1

    .line 12
    iget-object v1, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1}, Lg/e/a/a/d/a;->u()Lg/e/a/a/f/e;

    move-result-object v1

    int-to-float v2, v13

    iget-object v3, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    invoke-virtual {v1, v2, v3}, Lg/e/a/a/f/e;->a(FLg/e/a/a/d/a;)Ljava/lang/String;

    move-result-object v3

    mul-float v2, v2, v9

    .line 13
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v1

    add-float/2addr v2, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v2, v1

    .line 14
    iget-object v1, p0, Lg/e/a/a/k/o;->p:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/h;->getYRange()F

    move-result v1

    mul-float v1, v1, v10

    iget-object v4, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget v4, v4, Lg/e/a/a/d/h;->L:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-static {v11, v1, v2, v12}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 15
    iget v4, v12, Lg/e/a/a/l/e;->c:F

    iget v1, v12, Lg/e/a/a/l/e;->d:F

    iget-object v2, p0, Lg/e/a/a/k/m;->h:Lg/e/a/a/d/h;

    iget v2, v2, Lg/e/a/a/d/h;->M:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float v5, v1, v2

    move-object v1, p0

    move-object v2, p1

    move-object v6, v8

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lg/e/a/a/k/m;->f(Landroid/graphics/Canvas;Ljava/lang/String;FFLg/e/a/a/l/e;F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v11}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 17
    invoke-static {v12}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 18
    invoke-static {v8}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public n(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
