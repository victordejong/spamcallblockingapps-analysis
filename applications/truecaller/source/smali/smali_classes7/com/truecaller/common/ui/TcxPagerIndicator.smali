.class public final Lcom/truecaller/common/ui/TcxPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0018\u00002\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0001\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u0017\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0001\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\'\u0010\"\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0007J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0007R\u0016\u0010)\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010(R\u0016\u0010.\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010/\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010-R\u0016\u00101\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010(R\u0016\u00103\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010-R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u0010:\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010?\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010(R\u0016\u0010A\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010(R\u0016\u0010C\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010-R\u0016\u0010E\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010(R\u0016\u0010F\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010(R\u0016\u0010H\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010-\u00a8\u0006I"
    }
    d2 = {
        "Lcom/truecaller/common/ui/TcxPagerIndicator;",
        "Landroid/view/View;",
        "Landroidx/viewpager/widget/ViewPager$i;",
        "",
        "firstPage",
        "Ls1/s;",
        "setFirstPage",
        "(I)V",
        "numberOfPages",
        "setNumberOfPages",
        "color",
        "setActiveColor",
        "setInactiveColor",
        "getMinimumHeight",
        "()I",
        "getMinimumWidth",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "a",
        "(IFI)V",
        "g",
        "state",
        "b",
        "k",
        "F",
        "mIndicatorWidth",
        "i",
        "mBaseX",
        "e",
        "I",
        "mActiveColor",
        "mNumberOfPages",
        "j",
        "mBaseY",
        "c",
        "mCurrentPage",
        "Landroid/animation/ArgbEvaluator;",
        "o",
        "Landroid/animation/ArgbEvaluator;",
        "mColorEvaluator",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mPaint",
        "",
        "n",
        "Z",
        "mFillPrevious",
        "mSpacing",
        "d",
        "mCurrentOffset",
        "m",
        "mFirstPage",
        "l",
        "mIndicatorHeight",
        "mBorderRadius",
        "f",
        "mInactiveColor",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


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

.field public k:F

.field public l:F

.field public m:I

.field public n:Z

.field public final o:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 3
    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->g:F

    .line 4
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->o:Landroid/animation/ArgbEvaluator;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator:[I

    .line 7
    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "context.theme.obtainStyl\u2026           0, 0\n        )"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->a:Landroid/graphics/Paint;

    .line 9
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    :try_start_0
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorNumPages:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->b:I

    .line 11
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorActiveColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->e:I

    .line 12
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorInactiveColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->f:I

    .line 13
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorBorderRadius:I

    const/4 v2, 0x6

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->g:F

    .line 14
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorSpacing:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->h:F

    .line 15
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorWidth:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p1, v2}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->k:F

    .line 16
    sget v1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorHeight:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->l:F

    .line 17
    sget p1, Lcom/truecaller/common/ui/R$styleable;->TcxPagerIndicator_pagerIndicatorFillPrevious:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iput v0, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->c:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 21
    invoke-virtual {p0, p1}, Lcom/truecaller/common/ui/TcxPagerIndicator;->setNumberOfPages(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/truecaller/common/ui/TcxPagerIndicator;->setFirstPage(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->d:F

    .line 2
    iget p2, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->m:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->c:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->l:F

    float-to-int v0, v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->k:F

    iget v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->b:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->i:F

    iget v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->g:F

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->b:I

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v1, :cond_4

    .line 4
    iget v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->c:I

    const/4 v4, 0x1

    if-eq v11, v3, :cond_1

    if-ge v11, v3, :cond_0

    iget-boolean v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->n:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    if-ne v3, v4, :cond_2

    .line 5
    iget-object v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->a:Landroid/graphics/Paint;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->o:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->d:F

    iget v6, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    .line 6
    iget-object v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->a:Landroid/graphics/Paint;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget v4, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->f:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_3
    :goto_3
    iget v5, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->j:F

    iget v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->k:F

    add-float v6, v0, v3

    iget v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->l:F

    add-float v7, v5, v3

    iget v9, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->g:F

    iget-object v10, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->a:Landroid/graphics/Paint;

    invoke-static {v10}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    move-object v3, p1

    move v4, v0

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    iget v3, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->h:F

    iget v4, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->k:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
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

    invoke-virtual {p0}, Lcom/truecaller/common/ui/TcxPagerIndicator;->getMinimumWidth()I

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

    invoke-virtual {p0}, Lcom/truecaller/common/ui/TcxPagerIndicator;->getMinimumHeight()I

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

    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->i:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->j:F

    return-void
.end method

.method public final setActiveColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->e:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFirstPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->m:I

    return-void
.end method

.method public final setInactiveColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->f:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setNumberOfPages(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/TcxPagerIndicator;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
