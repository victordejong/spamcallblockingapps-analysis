.class public Lg/e/a/a/k/k;
.super Lg/e/a/a/k/h;
.source "SourceFile"


# instance fields
.field protected h:Lg/e/a/a/c/h;

.field protected i:Landroid/graphics/Paint;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/Path;

.field protected l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lg/e/a/a/c/h;Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3}, Lg/e/a/a/k/h;-><init>(Lg/e/a/a/a/a;Lg/e/a/a/l/j;)V

    .line 2
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/k;->k:Landroid/graphics/Path;

    .line 3
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lg/e/a/a/k/k;->l:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    .line 6
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p1, p0, Lg/e/a/a/k/d;->d:Landroid/graphics/Paint;

    const/16 p3, 0xff

    const/16 v0, 0xbb

    const/16 v1, 0x73

    invoke-static {p3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    .line 10
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/q;

    .line 2
    invoke-virtual {v0}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/i;

    invoke-interface {v1}, Lg/e/a/a/h/b/d;->v0()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lg/e/a/a/e/g;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/e/a/a/h/b/i;

    .line 4
    invoke-interface {v2}, Lg/e/a/a/h/b/d;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, p1, v2, v1}, Lg/e/a/a/k/k;->n(Landroid/graphics/Canvas;Lg/e/a/a/h/b/i;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/a/a/k/k;->q(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lg/e/a/a/g/c;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 1
    iget-object v0, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v10

    .line 2
    iget-object v0, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/h;->getFactor()F

    move-result v11

    .line 3
    iget-object v0, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v12

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v13

    .line 5
    iget-object v0, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lg/e/a/a/e/q;

    .line 6
    array-length v15, v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v15, :cond_5

    aget-object v0, v9, v6

    .line 7
    invoke-virtual {v0}, Lg/e/a/a/g/c;->c()I

    move-result v1

    invoke-virtual {v14, v1}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object v1

    check-cast v1, Lg/e/a/a/h/b/i;

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {v1}, Lg/e/a/a/h/b/d;->z0()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lg/e/a/a/g/c;->g()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v2

    check-cast v2, Lg/e/a/a/e/r;

    .line 10
    invoke-virtual {v8, v2, v1}, Lg/e/a/a/k/c;->h(Lg/e/a/a/e/i;Lg/e/a/a/h/b/b;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2}, Lg/e/a/a/e/f;->c()F

    move-result v2

    iget-object v3, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v3}, Lg/e/a/a/c/h;->getYChartMin()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v11

    .line 12
    iget-object v3, v8, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    .line 13
    invoke-virtual {v3}, Lg/e/a/a/a/a;->c()F

    move-result v3

    mul-float v2, v2, v3

    .line 14
    invoke-virtual {v0}, Lg/e/a/a/g/c;->g()F

    move-result v3

    mul-float v3, v3, v10

    iget-object v4, v8, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v4}, Lg/e/a/a/a/a;->b()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, v8, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v4}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v4

    add-float/2addr v3, v4

    .line 15
    invoke-static {v12, v2, v3, v13}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 16
    iget v2, v13, Lg/e/a/a/l/e;->c:F

    iget v3, v13, Lg/e/a/a/l/e;->d:F

    invoke-virtual {v0, v2, v3}, Lg/e/a/a/g/c;->k(FF)V

    .line 17
    iget v0, v13, Lg/e/a/a/l/e;->c:F

    iget v2, v13, Lg/e/a/a/l/e;->d:F

    move-object/from16 v5, p1

    invoke-virtual {v8, v5, v0, v2, v1}, Lg/e/a/a/k/i;->j(Landroid/graphics/Canvas;FFLg/e/a/a/h/b/g;)V

    .line 18
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget v0, v13, Lg/e/a/a/l/e;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v13, Lg/e/a/a/l/e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->m()I

    move-result v0

    const v2, 0x112233

    if-ne v0, v2, :cond_2

    .line 21
    invoke-interface {v1, v7}, Lg/e/a/a/h/b/d;->P(I)I

    move-result v0

    .line 22
    :cond_2
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->h()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    .line 23
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->h()I

    move-result v2

    invoke-static {v0, v2}, Lg/e/a/a/l/a;->a(II)I

    move-result v0

    :cond_3
    move/from16 v16, v0

    .line 24
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->f()F

    move-result v3

    .line 25
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->A()F

    move-result v4

    .line 26
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->d()I

    move-result v17

    .line 27
    invoke-interface {v1}, Lg/e/a/a/h/b/i;->a()F

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    const/16 v16, 0x0

    move/from16 v7, v18

    .line 28
    invoke-virtual/range {v0 .. v7}, Lg/e/a/a/k/k;->o(Landroid/graphics/Canvas;Lg/e/a/a/l/e;FFIIF)V

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v17, v6

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v6, v17, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 29
    :cond_5
    invoke-static {v12}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 30
    invoke-static {v13}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->b()F

    move-result v7

    .line 2
    iget-object v0, v6, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->c()F

    move-result v8

    .line 3
    iget-object v0, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v9

    .line 4
    iget-object v0, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/h;->getFactor()F

    move-result v10

    .line 5
    iget-object v0, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v11

    const/4 v0, 0x0

    .line 6
    invoke-static {v0, v0}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v12

    .line 7
    invoke-static {v0, v0}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v13

    const/high16 v0, 0x40a00000    # 5.0f

    .line 8
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v14

    const/4 v5, 0x0

    .line 9
    :goto_0
    iget-object v0, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/q;

    invoke-virtual {v0}, Lg/e/a/a/e/g;->f()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 10
    iget-object v0, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v0}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/q;

    invoke-virtual {v0, v5}, Lg/e/a/a/e/g;->e(I)Lg/e/a/a/h/b/d;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lg/e/a/a/h/b/i;

    .line 11
    invoke-virtual {v6, v4}, Lg/e/a/a/k/c;->i(Lg/e/a/a/h/b/d;)Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v19, v5

    move/from16 v22, v7

    goto/16 :goto_3

    .line 12
    :cond_0
    invoke-virtual {v6, v4}, Lg/e/a/a/k/d;->a(Lg/e/a/a/h/b/d;)V

    .line 13
    invoke-interface {v4}, Lg/e/a/a/h/b/d;->G()Lg/e/a/a/f/e;

    move-result-object v3

    .line 14
    invoke-interface {v4}, Lg/e/a/a/h/b/d;->w0()Lg/e/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lg/e/a/a/l/e;->d(Lg/e/a/a/l/e;)Lg/e/a/a/l/e;

    move-result-object v2

    .line 15
    iget v0, v2, Lg/e/a/a/l/e;->c:F

    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, v2, Lg/e/a/a/l/e;->c:F

    .line 16
    iget v0, v2, Lg/e/a/a/l/e;->d:F

    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, v2, Lg/e/a/a/l/e;->d:F

    const/4 v1, 0x0

    .line 17
    :goto_1
    invoke-interface {v4}, Lg/e/a/a/h/b/d;->v0()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 18
    invoke-interface {v4, v1}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v0

    check-cast v0, Lg/e/a/a/e/r;

    .line 19
    invoke-virtual {v0}, Lg/e/a/a/e/f;->c()F

    move-result v16

    iget-object v15, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v15}, Lg/e/a/a/c/h;->getYChartMin()F

    move-result v15

    sub-float v16, v16, v15

    mul-float v16, v16, v10

    mul-float v15, v16, v8

    move-object/from16 v16, v2

    int-to-float v2, v1

    mul-float v2, v2, v9

    mul-float v17, v2, v7

    iget-object v2, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    .line 20
    invoke-virtual {v2}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v2

    add-float v2, v17, v2

    .line 21
    invoke-static {v11, v15, v2, v12}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 22
    invoke-interface {v4}, Lg/e/a/a/h/b/d;->o0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v3, v0}, Lg/e/a/a/f/e;->g(Lg/e/a/a/e/r;)Ljava/lang/String;

    move-result-object v2

    iget v15, v12, Lg/e/a/a/l/e;->c:F

    move-object/from16 v18, v0

    iget v0, v12, Lg/e/a/a/l/e;->d:F

    sub-float v19, v0, v14

    invoke-interface {v4, v1}, Lg/e/a/a/h/b/d;->Y(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v22, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v3

    move v3, v15

    move-object v15, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lg/e/a/a/k/k;->p(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v0

    move/from16 v21, v1

    move-object v15, v4

    move/from16 v19, v5

    move/from16 v22, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v3

    .line 24
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lg/e/a/a/e/f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v15}, Lg/e/a/a/h/b/d;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual/range {v18 .. v18}, Lg/e/a/a/e/f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 26
    invoke-virtual/range {v18 .. v18}, Lg/e/a/a/e/f;->c()F

    move-result v0

    mul-float v0, v0, v10

    mul-float v0, v0, v8

    iget v1, v7, Lg/e/a/a/l/e;->d:F

    add-float/2addr v0, v1

    iget-object v1, v6, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    .line 27
    invoke-virtual {v1}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v1

    add-float v1, v17, v1

    .line 28
    invoke-static {v11, v0, v1, v13}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 29
    iget v0, v13, Lg/e/a/a/l/e;->d:F

    iget v1, v7, Lg/e/a/a/l/e;->c:F

    add-float/2addr v0, v1

    iput v0, v13, Lg/e/a/a/l/e;->d:F

    .line 30
    iget v1, v13, Lg/e/a/a/l/e;->c:F

    float-to-int v1, v1

    float-to-int v0, v0

    .line 31
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 32
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v28

    move-object/from16 v23, p1

    move/from16 v25, v1

    move/from16 v26, v0

    .line 33
    invoke-static/range {v23 .. v28}, Lg/e/a/a/l/i;->f(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_2
    add-int/lit8 v1, v21, 0x1

    move-object v2, v7

    move-object v4, v15

    move-object/from16 v3, v16

    move/from16 v5, v19

    move/from16 v7, v22

    goto/16 :goto_1

    :cond_3
    move/from16 v19, v5

    move/from16 v22, v7

    move-object v7, v2

    .line 34
    invoke-static {v7}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    :goto_3
    add-int/lit8 v5, v19, 0x1

    move/from16 v7, v22

    goto/16 :goto_0

    .line 35
    :cond_4
    invoke-static {v11}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 36
    invoke-static {v12}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 37
    invoke-static {v13}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method protected n(Landroid/graphics/Canvas;Lg/e/a/a/h/b/i;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v0}, Lg/e/a/a/a/a;->b()F

    move-result v0

    .line 2
    iget-object v1, p0, Lg/e/a/a/k/d;->b:Lg/e/a/a/a/a;

    invoke-virtual {v1}, Lg/e/a/a/a/a;->c()F

    move-result v1

    .line 3
    iget-object v2, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v2}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v2

    .line 4
    iget-object v3, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v3}, Lg/e/a/a/c/h;->getFactor()F

    move-result v3

    .line 5
    iget-object v4, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v4}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v4

    const/4 v5, 0x0

    .line 6
    invoke-static {v5, v5}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lg/e/a/a/k/k;->k:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Lg/e/a/a/h/b/d;->v0()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 10
    iget-object v9, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {p2, v7}, Lg/e/a/a/h/b/d;->P(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-interface {p2, v7}, Lg/e/a/a/h/b/d;->J(I)Lg/e/a/a/e/i;

    move-result-object v9

    check-cast v9, Lg/e/a/a/e/r;

    .line 12
    invoke-virtual {v9}, Lg/e/a/a/e/f;->c()F

    move-result v9

    iget-object v10, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v10}, Lg/e/a/a/c/h;->getYChartMin()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v9, v9, v3

    mul-float v9, v9, v1

    int-to-float v10, v7

    mul-float v10, v10, v2

    mul-float v10, v10, v0

    iget-object v11, p0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    .line 13
    invoke-virtual {v11}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    .line 14
    invoke-static {v4, v9, v10, v5}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 15
    iget v9, v5, Lg/e/a/a/l/e;->c:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    if-nez v8, :cond_1

    .line 16
    iget v8, v5, Lg/e/a/a/l/e;->c:F

    iget v9, v5, Lg/e/a/a/l/e;->d:F

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x1

    goto :goto_1

    .line 17
    :cond_1
    iget v9, v5, Lg/e/a/a/l/e;->c:F

    iget v10, v5, Lg/e/a/a/l/e;->d:F

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {p2}, Lg/e/a/a/h/b/d;->v0()I

    move-result v0

    if-le v0, p3, :cond_3

    .line 19
    iget p3, v4, Lg/e/a/a/l/e;->c:F

    iget v0, v4, Lg/e/a/a/l/e;->d:F

    invoke-virtual {v6, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 21
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->L()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 22
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->E()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 23
    invoke-virtual {p0, p1, v6, p3}, Lg/e/a/a/k/h;->m(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 24
    :cond_4
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->c()I

    move-result p3

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->g()I

    move-result v0

    invoke-virtual {p0, p1, v6, p3, v0}, Lg/e/a/a/k/h;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    .line 25
    :cond_5
    :goto_2
    iget-object p3, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->n()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget-object p3, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    invoke-interface {p2}, Lg/e/a/a/h/b/f;->L()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Lg/e/a/a/h/b/f;->g()I

    move-result p2

    const/16 p3, 0xff

    if-ge p2, p3, :cond_7

    .line 28
    :cond_6
    iget-object p2, p0, Lg/e/a/a/k/d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    :cond_7
    invoke-static {v4}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 30
    invoke-static {v5}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return-void
.end method

.method public o(Landroid/graphics/Canvas;Lg/e/a/a/l/e;FFIIF)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-static {p4}, Lg/e/a/a/l/i;->e(F)F

    move-result p4

    .line 3
    invoke-static {p3}, Lg/e/a/a/l/i;->e(F)F

    move-result p3

    const v0, 0x112233

    if-eq p5, v0, :cond_1

    .line 4
    iget-object v1, p0, Lg/e/a/a/k/k;->l:Landroid/graphics/Path;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 6
    iget v2, p2, Lg/e/a/a/l/e;->c:F

    iget v3, p2, Lg/e/a/a/l/e;->d:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, p4, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 7
    iget v2, p2, Lg/e/a/a/l/e;->c:F

    iget v3, p2, Lg/e/a/a/l/e;->d:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 8
    :cond_0
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    if-eq p6, v0, :cond_2

    .line 11
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p3, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    invoke-static {p7}, Lg/e/a/a/l/i;->e(F)F

    move-result p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget p3, p2, Lg/e/a/a/l/e;->c:F

    iget p2, p2, Lg/e/a/a/l/e;->d:F

    iget-object p5, p0, Lg/e/a/a/k/k;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public p(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p5, p0, Lg/e/a/a/k/d;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected q(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v1}, Lg/e/a/a/c/h;->getSliceAngle()F

    move-result v1

    .line 2
    iget-object v2, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v2}, Lg/e/a/a/c/h;->getFactor()F

    move-result v2

    .line 3
    iget-object v3, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v3}, Lg/e/a/a/c/g;->getRotationAngle()F

    move-result v3

    .line 4
    iget-object v4, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v4}, Lg/e/a/a/c/c;->getCenterOffsets()Lg/e/a/a/l/e;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebLineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object v5, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v5}, Lg/e/a/a/c/h;->getSkipWebLineCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 9
    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v6

    check-cast v6, Lg/e/a/a/e/q;

    invoke-virtual {v6}, Lg/e/a/a/e/g;->l()Lg/e/a/a/h/b/d;

    move-result-object v6

    check-cast v6, Lg/e/a/a/h/b/i;

    invoke-interface {v6}, Lg/e/a/a/h/b/d;->v0()I

    move-result v6

    const/4 v7, 0x0

    .line 10
    invoke-static {v7, v7}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    .line 11
    iget-object v11, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    .line 12
    invoke-virtual {v11}, Lg/e/a/a/c/h;->getYRange()F

    move-result v11

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    .line 13
    invoke-static {v4, v11, v12, v8}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 14
    iget v14, v4, Lg/e/a/a/l/e;->c:F

    iget v15, v4, Lg/e/a/a/l/e;->d:F

    iget v11, v8, Lg/e/a/a/l/e;->c:F

    iget v12, v8, Lg/e/a/a/l/e;->d:F

    iget-object v13, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v5

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v8}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 16
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebLineWidthInner()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebColorInner()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v5, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v6}, Lg/e/a/a/c/h;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    iget-object v5, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v5}, Lg/e/a/a/c/h;->getYAxis()Lg/e/a/a/d/i;

    move-result-object v5

    iget v5, v5, Lg/e/a/a/d/a;->n:I

    .line 20
    invoke-static {v7, v7}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v6

    .line 21
    invoke-static {v7, v7}, Lg/e/a/a/l/e;->c(FF)Lg/e/a/a/l/e;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    const/4 v10, 0x0

    .line 22
    :goto_2
    iget-object v11, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v11}, Lg/e/a/a/c/c;->getData()Lg/e/a/a/e/g;

    move-result-object v11

    check-cast v11, Lg/e/a/a/e/q;

    invoke-virtual {v11}, Lg/e/a/a/e/g;->h()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 23
    iget-object v11, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v11}, Lg/e/a/a/c/h;->getYAxis()Lg/e/a/a/d/i;

    move-result-object v11

    iget-object v11, v11, Lg/e/a/a/d/a;->l:[F

    aget v11, v11, v8

    iget-object v12, v0, Lg/e/a/a/k/k;->h:Lg/e/a/a/c/h;

    invoke-virtual {v12}, Lg/e/a/a/c/h;->getYChartMin()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    .line 24
    invoke-static {v4, v11, v12, v6}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    add-int/lit8 v10, v10, 0x1

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    .line 25
    invoke-static {v4, v11, v12, v7}, Lg/e/a/a/l/i;->r(Lg/e/a/a/l/e;FFLg/e/a/a/l/e;)V

    .line 26
    iget v14, v6, Lg/e/a/a/l/e;->c:F

    iget v15, v6, Lg/e/a/a/l/e;->d:F

    iget v11, v7, Lg/e/a/a/l/e;->c:F

    iget v12, v7, Lg/e/a/a/l/e;->d:F

    iget-object v13, v0, Lg/e/a/a/k/k;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 27
    :cond_2
    invoke-static {v6}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    .line 28
    invoke-static {v7}, Lg/e/a/a/l/e;->e(Lg/e/a/a/l/e;)V

    return-void
.end method
