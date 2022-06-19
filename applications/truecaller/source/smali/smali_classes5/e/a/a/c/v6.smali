.class public final Le/a/a/c/v6;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Path;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 2

    const-string v0, "res"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Le/a/a/c/v6;->h:I

    iput p3, p0, Le/a/a/c/v6;->i:I

    iput p4, p0, Le/a/a/c/v6;->j:I

    const/4 p4, 0x2

    int-to-float p4, p4

    const v0, 0x7f07035b

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Le/a/a/c/v6;->a:F

    const v0, 0x7f07035c

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, p4

    iput v0, p0, Le/a/a/c/v6;->b:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 4
    invoke-static {p1, p4}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result p4

    iput p4, p0, Le/a/a/c/v6;->c:F

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    .line 8
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iput-object v0, p0, Le/a/a/c/v6;->d:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iput-object v0, p0, Le/a/a/c/v6;->e:Landroid/graphics/Paint;

    .line 16
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Le/a/a/c/v6;->f:Landroid/graphics/Path;

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string p3, "res.configuration"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Le/a/a/c/v6;->g:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/v6;->g:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/c/v6;->f:Landroid/graphics/Path;

    iget-object v1, p0, Le/a/a/c/v6;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Le/a/a/c/v6;->f:Landroid/graphics/Path;

    iget-object v1, p0, Le/a/a/c/v6;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getMinimumHeight()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/c/v6;->a:F

    iget v1, p0, Le/a/a/c/v6;->c:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/c/v6;->a:F

    iget v1, p0, Le/a/a/c/v6;->c:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "padding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/a/c/v6;->c:F

    float-to-int v0, v0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-boolean p1, p0, Le/a/a/c/v6;->g:Z

    const/4 v0, 0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "bounds"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, v0, Le/a/a/c/v6;->c:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v12, v1, v3

    mul-float/2addr v1, v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Le/a/a/c/v6;->c:F

    mul-float/2addr v5, v3

    sub-float v21, v4, v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Le/a/a/c/v6;->c:F

    mul-float/2addr v4, v3

    sub-float v17, v2, v4

    .line 4
    iget-object v2, v0, Le/a/a/c/v6;->f:Landroid/graphics/Path;

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 6
    iget v3, v0, Le/a/a/c/v6;->j:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Le/a/a/c/v6;->b:F

    goto :goto_0

    :cond_0
    iget v3, v0, Le/a/a/c/v6;->a:F

    :goto_0
    add-float v7, v12, v3

    add-float v8, v1, v3

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    move-object v4, v2

    move v5, v12

    move v6, v1

    .line 7
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 8
    iget v3, v0, Le/a/a/c/v6;->j:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Le/a/a/c/v6;->b:F

    goto :goto_1

    :cond_1
    iget v3, v0, Le/a/a/c/v6;->a:F

    :goto_1
    sub-float v6, v17, v3

    add-float v7, v12, v3

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    move-object v4, v2

    move v5, v12

    move/from16 v8, v17

    .line 9
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 10
    iget v3, v0, Le/a/a/c/v6;->j:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget v3, v0, Le/a/a/c/v6;->b:F

    goto :goto_2

    :cond_2
    iget v3, v0, Le/a/a/c/v6;->a:F

    :goto_2
    sub-float v14, v21, v3

    sub-float v15, v17, v3

    const/high16 v18, 0x42b40000    # 90.0f

    const/high16 v19, -0x3d4c0000    # -90.0f

    const/16 v20, 0x0

    move-object v13, v2

    move/from16 v16, v21

    .line 11
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 12
    iget v3, v0, Le/a/a/c/v6;->j:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    iget v3, v0, Le/a/a/c/v6;->b:F

    goto :goto_3

    :cond_3
    iget v3, v0, Le/a/a/c/v6;->a:F

    :goto_3
    sub-float v5, v21, v3

    add-float v8, v1, v3

    const/4 v9, 0x0

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    move-object v4, v2

    move v6, v1

    move/from16 v7, v21

    .line 13
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
