.class public Lcom/truecaller/ui/view/DotPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:I

.field public c:I

.field public d:F

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    iput v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    .line 3
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->l:Landroid/animation/ArgbEvaluator;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/truecaller/R$styleable;->DotPagerIndicator:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    .line 6
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x4

    .line 7
    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06068b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    const/4 v3, 0x6

    .line 10
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    const/4 v1, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    .line 11
    invoke-static {p1, v3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->h:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iput v2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Lcom/truecaller/ui/view/DotPagerIndicator;->setNumberOfPages(I)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/truecaller/ui/view/DotPagerIndicator;->setFirstPage(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p1
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/view/DotPagerIndicator;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iput p2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    .line 3
    iget p2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->k:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    goto :goto_0

    .line 4
    :cond_0
    iput p2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    .line 5
    iget p2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->k:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/view/DotPagerIndicator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->k:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->k:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMinimumHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->i:F

    iget v1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    add-float/2addr v0, v1

    .line 3
    iget v2, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->j:F

    add-float/2addr v2, v1

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    if-ge v1, v3, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/ui/view/DotPagerIndicator;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    if-ne v1, v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->l:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    iget v6, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->l:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    iget v6, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->c:I

    if-ne v1, v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->l:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    iget v6, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_4

    .line 12
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->l:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->d:F

    iget v6, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :goto_1
    iget v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    iget-object v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 15
    iget v3, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->h:F

    iget v4, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->g:F

    add-float/2addr v3, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/truecaller/ui/view/DotPagerIndicator;->getMinimumWidth()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/truecaller/ui/view/DotPagerIndicator;->getMinimumHeight()I

    move-result v0

    add-int/2addr v0, v2

    .line 4
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->i:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->j:F

    return-void
.end method

.method public setActiveColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFirstPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->k:I

    return-void
.end method

.method public setInactiveColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->f:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNumberOfPages(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/ui/view/DotPagerIndicator;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
