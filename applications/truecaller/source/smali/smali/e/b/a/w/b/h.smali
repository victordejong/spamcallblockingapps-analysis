.class public Le/b/a/w/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/b/e;
.implements Le/b/a/w/c/a$a;
.implements Le/b/a/w/b/k;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Le/b/a/y/l/b;

.field public final d:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/graphics/Matrix;

.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Paint;

.field public final i:Landroid/graphics/RectF;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/b/a/y/k/f;

.field public final l:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Le/b/a/y/k/c;",
            "Le/b/a/y/k/c;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public p:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field public q:Le/b/a/w/c/p;

.field public final r:Le/b/a/k;

.field public final s:I


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/g/e;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 4
    iput-object v0, p0, Le/b/a/w/b/h;->d:Ln3/g/e;

    .line 5
    new-instance v0, Ln3/g/e;

    .line 6
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 7
    iput-object v0, p0, Le/b/a/w/b/h;->e:Ln3/g/e;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/h;->f:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    .line 10
    new-instance v1, Le/b/a/w/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le/b/a/w/a;-><init>(I)V

    iput-object v1, p0, Le/b/a/w/b/h;->h:Landroid/graphics/Paint;

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Le/b/a/w/b/h;->i:Landroid/graphics/RectF;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/b/a/w/b/h;->j:Ljava/util/List;

    .line 13
    iput-object p2, p0, Le/b/a/w/b/h;->c:Le/b/a/y/l/b;

    .line 14
    iget-object v1, p3, Le/b/a/y/k/d;->g:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Le/b/a/w/b/h;->a:Ljava/lang/String;

    .line 16
    iget-boolean v1, p3, Le/b/a/y/k/d;->h:Z

    .line 17
    iput-boolean v1, p0, Le/b/a/w/b/h;->b:Z

    .line 18
    iput-object p1, p0, Le/b/a/w/b/h;->r:Le/b/a/k;

    .line 19
    iget-object v1, p3, Le/b/a/y/k/d;->a:Le/b/a/y/k/f;

    .line 20
    iput-object v1, p0, Le/b/a/w/b/h;->k:Le/b/a/y/k/f;

    .line 21
    iget-object v1, p3, Le/b/a/y/k/d;->b:Landroid/graphics/Path$FillType;

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 23
    iget-object p1, p1, Le/b/a/k;->b:Le/b/a/e;

    .line 24
    invoke-virtual {p1}, Le/b/a/e;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Le/b/a/w/b/h;->s:I

    .line 25
    iget-object p1, p3, Le/b/a/y/k/d;->c:Le/b/a/y/j/c;

    .line 26
    invoke-virtual {p1}, Le/b/a/y/j/c;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/h;->l:Le/b/a/w/c/a;

    .line 27
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 29
    iget-object p1, p3, Le/b/a/y/k/d;->d:Le/b/a/y/j/d;

    .line 30
    invoke-virtual {p1}, Le/b/a/y/j/d;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/h;->m:Le/b/a/w/c/a;

    .line 31
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 33
    iget-object p1, p3, Le/b/a/y/k/d;->e:Le/b/a/y/j/f;

    .line 34
    invoke-virtual {p1}, Le/b/a/y/j/f;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/h;->n:Le/b/a/w/c/a;

    .line 35
    iget-object v0, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 37
    iget-object p1, p3, Le/b/a/y/k/d;->f:Le/b/a/y/j/f;

    .line 38
    invoke-virtual {p1}, Le/b/a/y/j/f;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/h;->o:Le/b/a/w/c/a;

    .line 39
    iget-object p3, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Le/b/a/w/b/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    iget-object v2, p0, Le/b/a/w/b/h;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/w/b/m;

    invoke-interface {v2}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final b([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/w/b/h;->q:Le/b/a/w/c/p;

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

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Le/b/a/w/b/h;->b:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Le/b/a/c;->a:Ljava/util/Set;

    .line 3
    iget-object v2, v0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget-object v4, v0, Le/b/a/w/b/h;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    iget-object v4, v0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    iget-object v5, v0, Le/b/a/w/b/h;->j:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/b/a/w/b/m;

    invoke-interface {v5}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    iget-object v4, v0, Le/b/a/w/b/h;->i:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 7
    iget-object v3, v0, Le/b/a/w/b/h;->k:Le/b/a/y/k/f;

    sget-object v4, Le/b/a/y/k/f;->a:Le/b/a/y/k/f;

    if-ne v3, v4, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/b/a/w/b/h;->h()I

    move-result v3

    .line 9
    iget-object v4, v0, Le/b/a/w/b/h;->d:Ln3/g/e;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-object v3, v0, Le/b/a/w/b/h;->n:Le/b/a/w/c/a;

    invoke-virtual {v3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 11
    iget-object v4, v0, Le/b/a/w/b/h;->o:Le/b/a/w/c/a;

    invoke-virtual {v4}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 12
    iget-object v7, v0, Le/b/a/w/b/h;->l:Le/b/a/w/c/a;

    invoke-virtual {v7}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/b/a/y/k/c;

    .line 13
    iget-object v8, v7, Le/b/a/y/k/c;->b:[I

    .line 14
    invoke-virtual {v0, v8}, Le/b/a/w/b/h;->b([I)[I

    move-result-object v14

    .line 15
    iget-object v15, v7, Le/b/a/y/k/c;->a:[F

    .line 16
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->y:F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    iget-object v3, v0, Le/b/a/w/b/h;->d:Ln3/g/e;

    invoke-virtual {v3, v5, v6, v7}, Ln3/g/e;->k(JLjava/lang/Object;)V

    move-object v3, v7

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/b/a/w/b/h;->h()I

    move-result v3

    .line 19
    iget-object v4, v0, Le/b/a/w/b/h;->e:Ln3/g/e;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RadialGradient;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, v0, Le/b/a/w/b/h;->n:Le/b/a/w/c/a;

    invoke-virtual {v3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 21
    iget-object v4, v0, Le/b/a/w/b/h;->o:Le/b/a/w/c/a;

    invoke-virtual {v4}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 22
    iget-object v7, v0, Le/b/a/w/b/h;->l:Le/b/a/w/c/a;

    invoke-virtual {v7}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/b/a/y/k/c;

    .line 23
    iget-object v8, v7, Le/b/a/y/k/c;->b:[I

    .line 24
    invoke-virtual {v0, v8}, Le/b/a/w/b/h;->b([I)[I

    move-result-object v13

    .line 25
    iget-object v14, v7, Le/b/a/y/k/c;->a:[F

    .line 26
    iget v10, v3, Landroid/graphics/PointF;->x:F

    .line 27
    iget v11, v3, Landroid/graphics/PointF;->y:F

    .line 28
    iget v3, v4, Landroid/graphics/PointF;->x:F

    .line 29
    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v7, v3

    sub-float/2addr v4, v11

    float-to-double v3, v4

    .line 30
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_5

    const v3, 0x3a83126f    # 0.001f

    :cond_5
    move v12, v3

    .line 31
    new-instance v3, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 32
    iget-object v4, v0, Le/b/a/w/b/h;->e:Ln3/g/e;

    invoke-virtual {v4, v5, v6, v3}, Ln3/g/e;->k(JLjava/lang/Object;)V

    .line 33
    :goto_1
    iget-object v4, v0, Le/b/a/w/b/h;->f:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 34
    iget-object v1, v0, Le/b/a/w/b/h;->f:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 35
    iget-object v1, v0, Le/b/a/w/b/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    iget-object v1, v0, Le/b/a/w/b/h;->p:Le/b/a/w/c/a;

    if-eqz v1, :cond_6

    .line 37
    iget-object v3, v0, Le/b/a/w/b/h;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_6
    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    .line 38
    iget-object v4, v0, Le/b/a/w/b/h;->m:Le/b/a/w/c/a;

    invoke-virtual {v4}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 39
    iget-object v3, v0, Le/b/a/w/b/h;->h:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Le/b/a/b0/d;->c(III)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v1, v0, Le/b/a/w/b/h;->g:Landroid/graphics/Path;

    iget-object v2, v0, Le/b/a/w/b/h;->h:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v1, "GradientFillContent#draw"

    .line 41
    invoke-static {v1}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/h;->r:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;",
            "Ljava/util/List<",
            "Le/b/a/w/b/c;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/w/b/c;

    .line 3
    instance-of v1, v0, Le/b/a/w/b/m;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Le/b/a/w/b/h;->j:Ljava/util/List;

    check-cast v0, Le/b/a/w/b/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 2
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
    sget-object v0, Le/b/a/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/b/a/w/b/h;->m:Le/b/a/w/c/a;

    .line 3
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 4
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    .line 6
    iput-object v1, p0, Le/b/a/w/b/h;->p:Le/b/a/w/c/a;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Le/b/a/w/c/p;

    .line 8
    invoke-direct {p1, p2, v1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Le/b/a/w/b/h;->p:Le/b/a/w/c/a;

    .line 10
    iget-object p1, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Le/b/a/w/b/h;->c:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/h;->p:Le/b/a/w/c/a;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Le/b/a/o;->C:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_4

    .line 13
    iget-object p1, p0, Le/b/a/w/b/h;->q:Le/b/a/w/c/p;

    if-eqz p1, :cond_3

    .line 14
    iget-object p2, p0, Le/b/a/w/b/h;->c:Le/b/a/y/l/b;

    .line 15
    iget-object p2, p2, Le/b/a/y/l/b;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    iput-object v1, p0, Le/b/a/w/b/h;->q:Le/b/a/w/c/p;

    goto :goto_0

    .line 17
    :cond_4
    new-instance p1, Le/b/a/w/c/p;

    .line 18
    invoke-direct {p1, p2, v1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, Le/b/a/w/b/h;->q:Le/b/a/w/c/p;

    .line 20
    iget-object p1, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Le/b/a/w/b/h;->c:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/h;->q:Le/b/a/w/c/p;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public g(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/y/e;",
            "I",
            "Ljava/util/List<",
            "Le/b/a/y/e;",
            ">;",
            "Le/b/a/y/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Le/b/a/b0/d;->f(Le/b/a/y/e;ILjava/util/List;Le/b/a/y/e;Le/b/a/w/b/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/w/b/h;->n:Le/b/a/w/c/a;

    .line 2
    iget v0, v0, Le/b/a/w/c/a;->d:F

    .line 3
    iget v1, p0, Le/b/a/w/b/h;->s:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    iget-object v1, p0, Le/b/a/w/b/h;->o:Le/b/a/w/c/a;

    .line 5
    iget v1, v1, Le/b/a/w/c/a;->d:F

    .line 6
    iget v2, p0, Le/b/a/w/b/h;->s:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 7
    iget-object v2, p0, Le/b/a/w/b/h;->l:Le/b/a/w/c/a;

    .line 8
    iget v2, v2, Le/b/a/w/c/a;->d:F

    .line 9
    iget v3, p0, Le/b/a/w/b/h;->s:I

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
