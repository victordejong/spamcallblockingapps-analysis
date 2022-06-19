.class public final Le/a/e/d2/e;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/Paint;

.field public final i:F

.field public final j:F

.field public final k:Landroid/graphics/RectF;

.field public final l:F

.field public final m:Landroid/graphics/Paint;

.field public final n:Z

.field public final o:Landroid/content/Context;

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Le/a/e/d2/e;->o:Landroid/content/Context;

    iput p2, p0, Le/a/e/d2/e;->p:I

    iput p3, p0, Le/a/e/d2/e;->q:I

    const v0, 0x7f040690

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Le/a/e/d2/e;->a:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "context.getString(textId)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/e/d2/e;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1, p3, v0}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const-string v0, "ThemeUtils.getTintedDraw\u2026 R.attr.tcx_textTertiary)"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Le/a/e/d2/e;->c:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Le/a/e/d2/e;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Le/a/e/d2/e;->e:I

    .line 7
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "context.resources"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "sans-serif-medium"

    const/4 v8, 0x0

    .line 11
    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    iput-object v3, p0, Le/a/e/d2/e;->h:Landroid/graphics/Paint;

    .line 13
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Le/a/e/d2/e;->k:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, p0, Le/a/e/d2/e;->l:F

    .line 15
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 16
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iput-object v10, p0, Le/a/e/d2/e;->m:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v1, "context.resources.configuration"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    iput-boolean v4, p0, Le/a/e/d2/e;->n:Z

    .line 21
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    const-string v1, "textPaint.fontMetrics"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v1, v10

    float-to-int v1, v1

    .line 23
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p2, v3

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    add-float/2addr p2, v3

    int-to-float v3, v2

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p0, Le/a/e/d2/e;->f:I

    .line 24
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    iput v6, p0, Le/a/e/d2/e;->g:I

    .line 25
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    int-to-float v2, v4

    iput v2, p0, Le/a/e/d2/e;->i:F

    int-to-float v1, v1

    .line 26
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, p1

    add-float/2addr v1, v3

    iput v1, p0, Le/a/e/d2/e;->j:F

    .line 27
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    sub-int p1, v6, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/2addr p1, v7

    .line 28
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p3, v0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float p1, v8

    add-float/2addr p1, v9

    .line 29
    iput p1, v5, Landroid/graphics/RectF;->left:F

    .line 30
    iput p1, v5, Landroid/graphics/RectF;->top:F

    int-to-float p1, v6

    sub-float/2addr p1, v9

    .line 31
    iput p1, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float p1, p2

    sub-float/2addr p1, v9

    .line 32
    iput p1, v5, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/e/d2/e;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/d2/e;->b:Ljava/lang/String;

    iget v1, p0, Le/a/e/d2/e;->d:I

    int-to-float v1, v1

    iget v2, p0, Le/a/e/d2/e;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Le/a/e/d2/e;->j:F

    iget-object v3, p0, Le/a/e/d2/e;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/e/d2/e;->b:Ljava/lang/String;

    iget v1, p0, Le/a/e/d2/e;->i:F

    iget v2, p0, Le/a/e/d2/e;->j:F

    iget-object v3, p0, Le/a/e/d2/e;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6
    :goto_0
    iget-object v0, p0, Le/a/e/d2/e;->k:Landroid/graphics/RectF;

    iget v1, p0, Le/a/e/d2/e;->g:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v3, p0, Le/a/e/d2/e;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Le/a/e/d2/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
