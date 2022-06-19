.class public abstract Le/b/a/w/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/w/c/a$a;
.implements Le/b/a/w/b/k;
.implements Le/b/a/w/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/w/b/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PathMeasure;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/RectF;

.field public final e:Le/b/a/k;

.field public final f:Le/b/a/y/l/b;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:[F

.field public final i:Landroid/graphics/Paint;

.field public final j:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe/b/a/y/j/d;Le/b/a/y/j/b;Ljava/util/List;Le/b/a/y/j/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/k;",
            "Le/b/a/y/l/b;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Le/b/a/y/j/d;",
            "Le/b/a/y/j/b;",
            "Ljava/util/List<",
            "Le/b/a/y/j/b;",
            ">;",
            "Le/b/a/y/j/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/a;->d:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/w/b/a;->g:Ljava/util/List;

    .line 7
    new-instance v0, Le/b/a/w/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/b/a/w/a;-><init>(I)V

    iput-object v0, p0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    .line 8
    iput-object p1, p0, Le/b/a/w/b/a;->e:Le/b/a/k;

    .line 9
    iput-object p2, p0, Le/b/a/w/b/a;->f:Le/b/a/y/l/b;

    .line 10
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 14
    invoke-virtual {p6}, Le/b/a/y/j/d;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/a;->k:Le/b/a/w/c/a;

    .line 15
    invoke-virtual {p7}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Le/b/a/w/b/a;->m:Le/b/a/w/c/a;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p9}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/a;->m:Le/b/a/w/c/a;

    .line 18
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/b/a/w/b/a;->l:Ljava/util/List;

    .line 19
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Le/b/a/w/b/a;->h:[F

    const/4 p1, 0x0

    move p3, p1

    .line 20
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 21
    iget-object p4, p0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Le/b/a/y/j/b;

    invoke-virtual {p5}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    iget-object p3, p0, Le/b/a/w/b/a;->k:Le/b/a/w/c/a;

    invoke-virtual {p2, p3}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 23
    iget-object p3, p0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    invoke-virtual {p2, p3}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    move p3, p1

    .line 24
    :goto_2
    iget-object p4, p0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 25
    iget-object p4, p0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/b/a/w/c/a;

    invoke-virtual {p2, p4}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 26
    :cond_2
    iget-object p3, p0, Le/b/a/w/b/a;->m:Le/b/a/w/c/a;

    if-eqz p3, :cond_3

    .line 27
    invoke-virtual {p2, p3}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 28
    :cond_3
    iget-object p2, p0, Le/b/a/w/b/a;->k:Le/b/a/w/c/a;

    .line 29
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p2, p0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    .line 31
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 33
    iget-object p2, p0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/a/w/c/a;

    .line 34
    iget-object p2, p2, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 35
    :cond_4
    iget-object p1, p0, Le/b/a/w/b/a;->m:Le/b/a/w/c/a;

    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    sget-object p3, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    iget-object p3, p0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 3
    :goto_0
    iget-object v1, p0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/w/b/a$b;

    move v2, p3

    .line 5
    :goto_1
    iget-object v3, v1, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, p0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    .line 8
    iget-object v4, v1, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 9
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/b/a/w/b/m;

    invoke-interface {v4}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    iget-object v0, p0, Le/b/a/w/b/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 11
    iget-object p2, p0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    check-cast p2, Le/b/a/w/c/c;

    invoke-virtual {p2}, Le/b/a/w/c/c;->j()F

    move-result p2

    .line 12
    iget-object p3, p0, Le/b/a/w/b/a;->d:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object p2, p0, Le/b/a/w/b/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
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

    const-string p1, "StrokeContent#getBounds"

    .line 15
    invoke-static {p1}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    sget-object v3, Le/b/a/b0/e;->d:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    .line 3
    aput v5, v3, v6

    const v7, 0x471212bb

    const/4 v8, 0x2

    .line 4
    aput v7, v3, v8

    const v7, 0x471a973c

    const/4 v9, 0x3

    .line 5
    aput v7, v3, v9

    .line 6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 7
    aget v7, v3, v4

    aget v8, v3, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    aget v7, v3, v6

    aget v3, v3, v9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    const-string v7, "StrokeContent#draw"

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v7}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void

    :cond_2
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v3, v8

    .line 9
    iget-object v9, v0, Le/b/a/w/b/a;->k:Le/b/a/w/c/a;

    check-cast v9, Le/b/a/w/c/e;

    .line 10
    invoke-virtual {v9}, Le/b/a/w/c/a;->a()Le/b/a/c0/a;

    move-result-object v10

    invoke-virtual {v9}, Le/b/a/w/c/a;->c()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Le/b/a/w/c/e;->j(Le/b/a/c0/a;F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v3, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v3, v9

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 11
    iget-object v8, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    const/16 v10, 0xff

    invoke-static {v3, v4, v10}, Le/b/a/b0/d;->c(III)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    iget-object v3, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    iget-object v8, v0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    check-cast v8, Le/b/a/w/c/c;

    invoke-virtual {v8}, Le/b/a/w/c/c;->j()F

    move-result v8

    invoke-static/range {p2 .. p2}, Le/b/a/b0/e;->d(Landroid/graphics/Matrix;)F

    move-result v10

    mul-float/2addr v10, v8

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v3, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    .line 14
    invoke-static {v7}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void

    .line 15
    :cond_3
    iget-object v3, v0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v8, "StrokeContent#applyDashPattern"

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    .line 16
    invoke-static {v8}, Le/b/a/c;->a(Ljava/lang/String;)F

    goto :goto_5

    .line 17
    :cond_4
    invoke-static/range {p2 .. p2}, Le/b/a/b0/e;->d(Landroid/graphics/Matrix;)F

    move-result v3

    move v11, v4

    .line 18
    :goto_2
    iget-object v12, v0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    .line 19
    iget-object v12, v0, Le/b/a/w/b/a;->h:[F

    iget-object v13, v0, Le/b/a/w/b/a;->l:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/b/a/w/c/a;

    invoke-virtual {v13}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v12, v11

    .line 20
    rem-int/lit8 v12, v11, 0x2

    if-nez v12, :cond_5

    .line 21
    iget-object v12, v0, Le/b/a/w/b/a;->h:[F

    aget v13, v12, v11

    cmpg-float v13, v13, v10

    if-gez v13, :cond_6

    .line 22
    aput v10, v12, v11

    goto :goto_3

    .line 23
    :cond_5
    iget-object v12, v0, Le/b/a/w/b/a;->h:[F

    aget v13, v12, v11

    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    .line 24
    aput v14, v12, v11

    .line 25
    :cond_6
    :goto_3
    iget-object v12, v0, Le/b/a/w/b/a;->h:[F

    aget v13, v12, v11

    mul-float/2addr v13, v3

    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 26
    :cond_7
    iget-object v3, v0, Le/b/a/w/b/a;->m:Le/b/a/w/c/a;

    if-nez v3, :cond_8

    move v3, v5

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 27
    :goto_4
    iget-object v11, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/DashPathEffect;

    iget-object v13, v0, Le/b/a/w/b/a;->h:[F

    invoke-direct {v12, v13, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 28
    invoke-static {v8}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 29
    :goto_5
    iget-object v3, v0, Le/b/a/w/b/a;->n:Le/b/a/w/c/a;

    if-eqz v3, :cond_9

    .line 30
    iget-object v8, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_9
    move v3, v4

    .line 31
    :goto_6
    iget-object v8, v0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_17

    .line 32
    iget-object v8, v0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/b/a/w/b/a$b;

    .line 33
    iget-object v11, v8, Le/b/a/w/b/a$b;->b:Le/b/a/w/b/s;

    if-eqz v11, :cond_15

    .line 34
    sget-object v12, Le/b/a/c;->a:Ljava/util/Set;

    const-string v12, "StrokeContent#applyTrimPath"

    if-nez v11, :cond_a

    .line 35
    invoke-static {v12}, Le/b/a/c;->a(Ljava/lang/String;)F

    goto/16 :goto_e

    .line 36
    :cond_a
    iget-object v11, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 37
    iget-object v11, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 38
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    :goto_7
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_b

    .line 39
    iget-object v13, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    .line 40
    iget-object v14, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 41
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/b/a/w/b/m;

    invoke-interface {v14}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_7

    .line 42
    :cond_b
    iget-object v11, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    iget-object v13, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    invoke-virtual {v11, v13, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 43
    iget-object v11, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v11}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    .line 44
    :goto_8
    iget-object v13, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 45
    iget-object v13, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    add-float/2addr v11, v13

    goto :goto_8

    .line 46
    :cond_c
    iget-object v13, v8, Le/b/a/w/b/a$b;->b:Le/b/a/w/b/s;

    .line 47
    iget-object v13, v13, Le/b/a/w/b/s;->f:Le/b/a/w/c/a;

    .line 48
    invoke-virtual {v13}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float/2addr v13, v11

    const/high16 v14, 0x43b40000    # 360.0f

    div-float/2addr v13, v14

    .line 49
    iget-object v14, v8, Le/b/a/w/b/a$b;->b:Le/b/a/w/b/s;

    .line 50
    iget-object v14, v14, Le/b/a/w/b/s;->d:Le/b/a/w/c/a;

    .line 51
    invoke-virtual {v14}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float/2addr v14, v11

    div-float/2addr v14, v9

    add-float/2addr v14, v13

    .line 52
    iget-object v15, v8, Le/b/a/w/b/a$b;->b:Le/b/a/w/b/s;

    .line 53
    iget-object v15, v15, Le/b/a/w/b/s;->e:Le/b/a/w/c/a;

    .line 54
    invoke-virtual {v15}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    mul-float/2addr v15, v11

    div-float/2addr v15, v9

    add-float/2addr v15, v13

    .line 55
    iget-object v13, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 56
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move/from16 v16, v5

    :goto_9
    if-ltz v13, :cond_14

    .line 57
    iget-object v9, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    .line 58
    iget-object v6, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 59
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/b/a/w/b/m;

    invoke-interface {v6}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 60
    iget-object v6, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 61
    iget-object v6, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    iget-object v9, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    invoke-virtual {v6, v9, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 62
    iget-object v6, v0, Le/b/a/w/b/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    cmpl-float v9, v15, v11

    if-lez v9, :cond_e

    sub-float v9, v15, v11

    add-float v17, v16, v6

    cmpg-float v17, v9, v17

    if-gez v17, :cond_e

    cmpg-float v17, v16, v9

    if-gez v17, :cond_e

    cmpl-float v17, v14, v11

    if-lez v17, :cond_d

    sub-float v17, v14, v11

    div-float v17, v17, v6

    move/from16 v4, v17

    goto :goto_a

    :cond_d
    move v4, v5

    :goto_a
    div-float/2addr v9, v6

    .line 63
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 64
    iget-object v10, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v4, v9, v5}, Le/b/a/b0/e;->a(Landroid/graphics/Path;FFF)V

    .line 65
    iget-object v4, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_e
    add-float v4, v16, v6

    cmpg-float v9, v4, v14

    if-ltz v9, :cond_13

    cmpl-float v9, v16, v15

    if-lez v9, :cond_f

    goto :goto_d

    :cond_f
    cmpg-float v9, v4, v15

    if-gtz v9, :cond_10

    cmpg-float v9, v14, v16

    if-gez v9, :cond_10

    .line 66
    iget-object v4, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_10
    cmpg-float v9, v14, v16

    if-gez v9, :cond_11

    move v9, v5

    goto :goto_b

    :cond_11
    sub-float v9, v14, v16

    div-float/2addr v9, v6

    :goto_b
    cmpl-float v4, v15, v4

    if-lez v4, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_12
    sub-float v4, v15, v16

    div-float/2addr v4, v6

    .line 67
    :goto_c
    iget-object v10, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v9, v4, v5}, Le/b/a/b0/e;->a(Landroid/graphics/Path;FFF)V

    .line 68
    iget-object v4, v0, Le/b/a/w/b/a;->c:Landroid/graphics/Path;

    iget-object v9, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_13
    :goto_d
    add-float v16, v16, v6

    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_9

    .line 69
    :cond_14
    invoke-static {v12}, Le/b/a/c;->a(Ljava/lang/String;)F

    :goto_e
    const/4 v6, 0x1

    goto :goto_10

    .line 70
    :cond_15
    iget-object v4, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 71
    iget-object v4, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_f
    if-ltz v4, :cond_16

    .line 73
    iget-object v9, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    .line 74
    iget-object v10, v8, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 75
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/b/a/w/b/m;

    invoke-interface {v10}, Le/b/a/w/b/m;->getPath()Landroid/graphics/Path;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    :cond_16
    const-string v4, "StrokeContent#buildPath"

    .line 76
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    .line 77
    iget-object v4, v0, Le/b/a/w/b/a;->b:Landroid/graphics/Path;

    iget-object v8, v0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v4, "StrokeContent#drawPath"

    .line 78
    invoke-static {v4}, Le/b/a/c;->a(Ljava/lang/String;)F

    :goto_10
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 79
    :cond_17
    invoke-static {v7}, Le/b/a/c;->a(Ljava/lang/String;)F

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/a;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->invalidateSelf()V

    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 1
    sget-object v0, Le/b/a/y/k/q$a;->b:Le/b/a/y/k/q$a;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/b/a/w/b/c;

    .line 4
    instance-of v5, v4, Le/b/a/w/b/s;

    if-eqz v5, :cond_0

    check-cast v4, Le/b/a/w/b/s;

    .line 5
    iget-object v5, v4, Le/b/a/w/b/s;->c:Le/b/a/y/k/q$a;

    if-ne v5, v0, :cond_0

    move-object v3, v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 6
    iget-object p1, v3, Le/b/a/w/b/s;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v1, v2

    :goto_1
    if-ltz p1, :cond_7

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/b/a/w/b/c;

    .line 9
    instance-of v5, v4, Le/b/a/w/b/s;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Le/b/a/w/b/s;

    .line 10
    iget-object v6, v5, Le/b/a/w/b/s;->c:Le/b/a/y/k/q$a;

    if-ne v6, v0, :cond_4

    if-eqz v1, :cond_3

    .line 11
    iget-object v4, p0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v1, Le/b/a/w/b/a$b;

    invoke-direct {v1, v5, v2}, Le/b/a/w/b/a$b;-><init>(Le/b/a/w/b/s;Le/b/a/w/b/a$a;)V

    .line 13
    iget-object v4, v5, Le/b/a/w/b/s;->b:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    instance-of v5, v4, Le/b/a/w/b/m;

    if-eqz v5, :cond_6

    if-nez v1, :cond_5

    .line 15
    new-instance v1, Le/b/a/w/b/a$b;

    invoke-direct {v1, v3, v2}, Le/b/a/w/b/a$b;-><init>(Le/b/a/w/b/s;Le/b/a/w/b/a$a;)V

    .line 16
    :cond_5
    iget-object v5, v1, Le/b/a/w/b/a$b;->a:Ljava/util/List;

    .line 17
    check-cast v4, Le/b/a/w/b/m;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 18
    iget-object p1, p0, Le/b/a/w/b/a;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
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
    sget-object v0, Le/b/a/o;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/b/a/w/b/a;->k:Le/b/a/w/c/a;

    .line 3
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 4
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Le/b/a/o;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Le/b/a/w/b/a;->j:Le/b/a/w/c/a;

    .line 7
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 8
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 10
    iput-object p1, p0, Le/b/a/w/b/a;->n:Le/b/a/w/c/a;

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Le/b/a/w/c/p;

    .line 12
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Le/b/a/w/b/a;->n:Le/b/a/w/c/a;

    .line 14
    iget-object p1, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Le/b/a/w/b/a;->f:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/a;->n:Le/b/a/w/c/a;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_3
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
