.class public Le/b/a/w/b/i;
.super Le/b/a/w/b/a;
.source "SourceFile"


# instance fields
.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Landroid/graphics/RectF;

.field public final t:Le/b/a/y/k/f;

.field public final u:I

.field public final v:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Le/b/a/y/k/c;",
            "Le/b/a/y/k/c;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public y:Le/b/a/w/c/p;


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/e;)V
    .locals 11

    .line 1
    iget-object v0, p3, Le/b/a/y/k/e;->h:Le/b/a/y/k/p$a;

    .line 2
    invoke-virtual {v0}, Le/b/a/y/k/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 3
    iget-object v0, p3, Le/b/a/y/k/e;->i:Le/b/a/y/k/p$b;

    .line 4
    invoke-virtual {v0}, Le/b/a/y/k/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 5
    iget v6, p3, Le/b/a/y/k/e;->j:F

    .line 6
    iget-object v7, p3, Le/b/a/y/k/e;->d:Le/b/a/y/j/d;

    .line 7
    iget-object v8, p3, Le/b/a/y/k/e;->g:Le/b/a/y/j/b;

    .line 8
    iget-object v9, p3, Le/b/a/y/k/e;->k:Ljava/util/List;

    .line 9
    iget-object v10, p3, Le/b/a/y/k/e;->l:Le/b/a/y/j/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 10
    invoke-direct/range {v1 .. v10}, Le/b/a/w/b/a;-><init>(Le/b/a/k;Le/b/a/y/l/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe/b/a/y/j/d;Le/b/a/y/j/b;Ljava/util/List;Le/b/a/y/j/b;)V

    .line 11
    new-instance v0, Ln3/g/e;

    const/16 v1, 0xa

    .line 12
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 13
    iput-object v0, p0, Le/b/a/w/b/i;->q:Ln3/g/e;

    .line 14
    new-instance v0, Ln3/g/e;

    .line 15
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 16
    iput-object v0, p0, Le/b/a/w/b/i;->r:Ln3/g/e;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    .line 18
    iget-object v0, p3, Le/b/a/y/k/e;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Le/b/a/w/b/i;->o:Ljava/lang/String;

    .line 20
    iget-object v0, p3, Le/b/a/y/k/e;->b:Le/b/a/y/k/f;

    .line 21
    iput-object v0, p0, Le/b/a/w/b/i;->t:Le/b/a/y/k/f;

    .line 22
    iget-boolean v0, p3, Le/b/a/y/k/e;->m:Z

    .line 23
    iput-boolean v0, p0, Le/b/a/w/b/i;->p:Z

    .line 24
    iget-object p1, p1, Le/b/a/k;->b:Le/b/a/e;

    .line 25
    invoke-virtual {p1}, Le/b/a/e;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Le/b/a/w/b/i;->u:I

    .line 26
    iget-object p1, p3, Le/b/a/y/k/e;->c:Le/b/a/y/j/c;

    .line 27
    invoke-virtual {p1}, Le/b/a/y/j/c;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/i;->v:Le/b/a/w/c/a;

    .line 28
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 30
    iget-object p1, p3, Le/b/a/y/k/e;->e:Le/b/a/y/j/f;

    .line 31
    invoke-virtual {p1}, Le/b/a/y/j/f;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/i;->w:Le/b/a/w/c/a;

    .line 32
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 34
    iget-object p1, p3, Le/b/a/y/k/e;->f:Le/b/a/y/j/f;

    .line 35
    invoke-virtual {p1}, Le/b/a/y/j/f;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/i;->x:Le/b/a/w/c/a;

    .line 36
    iget-object p3, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    return-void
.end method


# virtual methods
.method public final b([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/w/b/i;->y:Le/b/a/w/c/p;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Le/b/a/w/c/p;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 5
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 7
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 8
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Le/b/a/w/b/i;->p:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v3, v2}, Le/b/a/w/b/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 3
    iget-object v1, v0, Le/b/a/w/b/i;->t:Le/b/a/y/k/f;

    sget-object v2, Le/b/a/y/k/f;->a:Le/b/a/y/k/f;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_2

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/b/a/w/b/i;->h()I

    move-result v1

    .line 5
    iget-object v2, v0, Le/b/a/w/b/i;->q:Ln3/g/e;

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Le/b/a/w/b/i;->w:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 7
    iget-object v2, v0, Le/b/a/w/b/i;->x:Le/b/a/w/c/a;

    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 8
    iget-object v7, v0, Le/b/a/w/b/i;->v:Le/b/a/w/c/a;

    invoke-virtual {v7}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/b/a/y/k/c;

    .line 9
    iget-object v8, v7, Le/b/a/y/k/c;->b:[I

    .line 10
    invoke-virtual {v0, v8}, Le/b/a/w/b/i;->b([I)[I

    move-result-object v14

    .line 11
    iget-object v15, v7, Le/b/a/y/k/c;->a:[F

    .line 12
    iget-object v7, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v4

    add-float/2addr v7, v8

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 13
    iget-object v8, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v8, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v1

    float-to-int v1, v8

    .line 14
    iget-object v8, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 15
    iget-object v9, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v9, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 16
    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v10, v7

    int-to-float v11, v1

    int-to-float v12, v8

    int-to-float v13, v2

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    iget-object v1, v0, Le/b/a/w/b/i;->q:Ln3/g/e;

    invoke-virtual {v1, v5, v6, v4}, Ln3/g/e;->k(JLjava/lang/Object;)V

    move-object v1, v4

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Le/b/a/w/b/i;->h()I

    move-result v1

    .line 19
    iget-object v2, v0, Le/b/a/w/b/i;->r:Ln3/g/e;

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    iget-object v1, v0, Le/b/a/w/b/i;->w:Le/b/a/w/c/a;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 21
    iget-object v2, v0, Le/b/a/w/b/i;->x:Le/b/a/w/c/a;

    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 22
    iget-object v7, v0, Le/b/a/w/b/i;->v:Le/b/a/w/c/a;

    invoke-virtual {v7}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/b/a/y/k/c;

    .line 23
    iget-object v8, v7, Le/b/a/y/k/c;->b:[I

    .line 24
    invoke-virtual {v0, v8}, Le/b/a/w/b/i;->b([I)[I

    move-result-object v13

    .line 25
    iget-object v14, v7, Le/b/a/y/k/c;->a:[F

    .line 26
    iget-object v7, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v4

    add-float/2addr v7, v8

    iget v8, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 27
    iget-object v8, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v8, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v1

    float-to-int v1, v8

    .line 28
    iget-object v8, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v4

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 29
    iget-object v9, v0, Le/b/a/w/b/i;->s:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v9, v10

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v2

    float-to-int v2, v9

    sub-int/2addr v8, v7

    int-to-double v8, v8

    sub-int/2addr v2, v1

    int-to-double v10, v2

    .line 30
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v12, v8

    .line 31
    new-instance v2, Landroid/graphics/RadialGradient;

    int-to-float v10, v7

    int-to-float v11, v1

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 32
    iget-object v1, v0, Le/b/a/w/b/i;->r:Ln3/g/e;

    invoke-virtual {v1, v5, v6, v2}, Ln3/g/e;->k(JLjava/lang/Object;)V

    move-object v1, v2

    .line 33
    :goto_0
    iget-object v2, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    invoke-super/range {p0 .. p3}, Le/b/a/w/b/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/b/a/w/b/a;->f(Ljava/lang/Object;Le/b/a/c0/c;)V

    .line 2
    sget-object v0, Le/b/a/o;->C:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Le/b/a/w/b/i;->y:Le/b/a/w/c/p;

    if-eqz p2, :cond_0

    .line 4
    iget-object v0, p0, Le/b/a/w/b/a;->f:Le/b/a/y/l/b;

    .line 5
    iget-object v0, v0, Le/b/a/y/l/b;->t:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iput-object p1, p0, Le/b/a/w/b/i;->y:Le/b/a/w/c/p;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Le/b/a/w/c/p;

    .line 8
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Le/b/a/w/b/i;->y:Le/b/a/w/c/p;

    .line 10
    iget-object p1, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Le/b/a/w/b/a;->f:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/i;->y:Le/b/a/w/c/p;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/w/b/i;->w:Le/b/a/w/c/a;

    .line 2
    iget v0, v0, Le/b/a/w/c/a;->d:F

    .line 3
    iget v1, p0, Le/b/a/w/b/i;->u:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    iget-object v1, p0, Le/b/a/w/b/i;->x:Le/b/a/w/c/a;

    .line 5
    iget v1, v1, Le/b/a/w/c/a;->d:F

    .line 6
    iget v2, p0, Le/b/a/w/b/i;->u:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7
    iget-object v2, p0, Le/b/a/w/b/i;->v:Le/b/a/w/c/a;

    .line 8
    iget v2, v2, Le/b/a/w/c/a;->d:F

    .line 9
    iget v3, p0, Le/b/a/w/b/i;->u:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v3, 0x11

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int/2addr v3, v0

    :cond_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int/2addr v3, v2

    :cond_2
    return v3
.end method
