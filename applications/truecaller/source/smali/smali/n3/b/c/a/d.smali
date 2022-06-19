.class public Ln3/b/c/a/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final m:F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public final g:Landroid/graphics/Path;

.field public final h:I

.field public i:Z

.field public j:F

.field public k:F

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Ln3/b/c/a/d;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ln3/b/c/a/d;->i:Z

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Ln3/b/c/a/d;->l:I

    .line 6
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 8
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v4, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    sget v5, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 13
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    :cond_0
    sget v3, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_1

    .line 17
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    float-to-double v5, v3

    .line 18
    sget v0, Ln3/b/c/a/d;->m:F

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-float v0, v7

    iput v0, p0, Ln3/b/c/a/d;->k:F

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 20
    :cond_1
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 21
    iget-boolean v2, p0, Ln3/b/c/a/d;->f:Z

    if-eq v2, v0, :cond_2

    .line 22
    iput-boolean v0, p0, Ln3/b/c/a/d;->f:Z

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 24
    :cond_2
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 25
    iget v2, p0, Ln3/b/c/a/d;->e:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 26
    iput v0, p0, Ln3/b/c/a/d;->e:F

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    :cond_3
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Ln3/b/c/a/d;->h:I

    .line 29
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ln3/b/c/a/d;->c:F

    .line 30
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ln3/b/c/a/d;->b:F

    .line 31
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Ln3/b/c/a/d;->d:F

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    invoke-static {p1, p0, p2, p0}, Le/d/c/a/a;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2
    iget v3, v0, Ln3/b/c/a/d;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    move v4, v5

    .line 5
    :cond_2
    iget v3, v0, Ln3/b/c/a/d;->b:F

    mul-float/2addr v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 6
    iget v7, v0, Ln3/b/c/a/d;->c:F

    iget v8, v0, Ln3/b/c/a/d;->j:F

    invoke-static {v7, v3, v8}, Ln3/b/c/a/d;->a(FFF)F

    move-result v3

    .line 7
    iget v7, v0, Ln3/b/c/a/d;->c:F

    iget v8, v0, Ln3/b/c/a/d;->d:F

    iget v9, v0, Ln3/b/c/a/d;->j:F

    invoke-static {v7, v8, v9}, Ln3/b/c/a/d;->a(FFF)F

    move-result v7

    .line 8
    iget v8, v0, Ln3/b/c/a/d;->k:F

    iget v9, v0, Ln3/b/c/a/d;->j:F

    const/4 v10, 0x0

    invoke-static {v10, v8, v9}, Ln3/b/c/a/d;->a(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 9
    sget v9, Ln3/b/c/a/d;->m:F

    iget v11, v0, Ln3/b/c/a/d;->j:F

    invoke-static {v10, v9, v11}, Ln3/b/c/a/d;->a(FFF)F

    move-result v9

    if-eqz v4, :cond_3

    move v11, v10

    goto :goto_1

    :cond_3
    const/high16 v11, -0x3ccc0000    # -180.0f

    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v4, :cond_4

    move v13, v12

    goto :goto_2

    :cond_4
    move v13, v10

    .line 10
    :goto_2
    iget v14, v0, Ln3/b/c/a/d;->j:F

    .line 11
    invoke-static {v11, v13, v14}, Ln3/b/c/a/d;->a(FFF)F

    move-result v11

    float-to-double v13, v3

    move v15, v11

    float-to-double v10, v9

    .line 12
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v13

    move v9, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-float v3, v3

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v4, v10

    .line 14
    iget-object v10, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    .line 15
    iget v10, v0, Ln3/b/c/a/d;->e:F

    iget-object v11, v0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    add-float/2addr v11, v10

    iget v10, v0, Ln3/b/c/a/d;->k:F

    neg-float v10, v10

    iget v13, v0, Ln3/b/c/a/d;->j:F

    invoke-static {v11, v10, v13}, Ln3/b/c/a/d;->a(FFF)F

    move-result v10

    neg-float v11, v7

    div-float/2addr v11, v6

    .line 16
    iget-object v13, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    add-float v14, v11, v8

    const/4 v5, 0x0

    invoke-virtual {v13, v14, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    iget-object v13, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    invoke-virtual {v13, v7, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 18
    iget-object v5, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object v5, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 20
    iget-object v5, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    neg-float v7, v10

    invoke-virtual {v5, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    iget-object v5, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    neg-float v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 22
    iget-object v3, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget-object v3, v0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, v0, Ln3/b/c/a/d;->e:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 26
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 27
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget-boolean v2, v0, Ln3/b/c/a/d;->f:Z

    if-eqz v2, :cond_6

    .line 29
    iget-boolean v2, v0, Ln3/b/c/a/d;->i:Z

    xor-int/2addr v2, v9

    if-eqz v2, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    :goto_3
    int-to-float v2, v5

    mul-float v11, v15, v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    .line 30
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 31
    :cond_7
    :goto_4
    iget-object v2, v0, Ln3/b/c/a/d;->g:Landroid/graphics/Path;

    iget-object v3, v0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/c/a/d;->h:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/c/a/d;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
