.class public Ln3/y/e/c0;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/text/SpannableStringBuilder;

.field public h:Landroid/text/Layout$Alignment;

.field public i:Landroid/text/TextPaint;

.field public j:Landroid/graphics/Paint;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Landroid/text/StaticLayout;

.field public r:F

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Ln3/y/e/c0;->f:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Ln3/y/e/c0;->g:Landroid/text/SpannableStringBuilder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Ln3/y/e/c0;->r:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ln3/y/e/c0;->s:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    sget p2, Landroidx/media2/widget/R$dimen;->media2_widget_subtitle_corner_radius:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ln3/y/e/c0;->a:F

    .line 9
    sget p2, Landroidx/media2/widget/R$dimen;->media2_widget_subtitle_outline_width:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ln3/y/e/c0;->b:F

    .line 11
    sget p2, Landroidx/media2/widget/R$dimen;->media2_widget_subtitle_shadow_radius:I

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Ln3/y/e/c0;->c:F

    .line 13
    sget p2, Landroidx/media2/widget/R$dimen;->media2_widget_subtitle_shadow_offset:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Ln3/y/e/c0;->d:F

    .line 15
    iput p1, p0, Ln3/y/e/c0;->e:F

    .line 16
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 18
    iget-object p1, p0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ln3/y/e/c0;->j:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Ln3/y/e/c0;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Ln3/y/e/c0;->p:I

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Ln3/y/e/c0;->s:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    return v0

    .line 3
    :cond_1
    iput-boolean v1, p0, Ln3/y/e/c0;->o:Z

    .line 4
    iput p1, p0, Ln3/y/e/c0;->p:I

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    iget-object v3, p0, Ln3/y/e/c0;->g:Landroid/text/SpannableStringBuilder;

    .line 7
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    invoke-static {v3, v0, v4, v5, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget-object v0, p0, Ln3/y/e/c0;->h:Landroid/text/Layout$Alignment;

    .line 8
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 v0, 0x0

    iget v3, p0, Ln3/y/e/c0;->r:F

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/16 v0, 0x1c

    if-lt v2, v0, :cond_2

    .line 10
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Ln3/y/e/c0;->q:Landroid/text/StaticLayout;

    return v1
.end method

.method public b(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/c0;->h:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Ln3/y/e/c0;->h:Landroid/text/Layout$Alignment;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ln3/y/e/c0;->o:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/c0;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2
    iget-object v0, p0, Ln3/y/e/c0;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ln3/y/e/c0;->o:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Ln3/y/e/c0;->q:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Ln3/y/e/c0;->s:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 6
    iget-object v4, p0, Ln3/y/e/c0;->i:Landroid/text/TextPaint;

    .line 7
    iget-object v5, p0, Ln3/y/e/c0;->j:Landroid/graphics/Paint;

    .line 8
    iget-object v6, p0, Ln3/y/e/c0;->f:Landroid/graphics/RectF;

    .line 9
    iget v7, p0, Ln3/y/e/c0;->l:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_1

    .line 10
    iget v7, p0, Ln3/y/e/c0;->a:F

    .line 11
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    .line 12
    iget v10, p0, Ln3/y/e/c0;->l:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v10, v8

    :goto_0
    if-ge v10, v3, :cond_1

    .line 14
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v2

    sub-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 15
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v11

    add-float/2addr v11, v12

    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 16
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 17
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/graphics/RectF;->bottom:F

    .line 18
    invoke-virtual {p1, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget v2, p0, Ln3/y/e/c0;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 20
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 21
    iget v2, p0, Ln3/y/e/c0;->b:F

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    iget v2, p0, Ln3/y/e/c0;->m:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 25
    iget v2, p0, Ln3/y/e/c0;->c:F

    iget v3, p0, Ln3/y/e/c0;->d:F

    iget v5, p0, Ln3/y/e/c0;->e:F

    iget v6, p0, Ln3/y/e/c0;->m:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_8

    :cond_4
    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v8

    :goto_1
    const/4 v2, -0x1

    if-eqz v3, :cond_6

    move v5, v2

    goto :goto_2

    .line 26
    :cond_6
    iget v5, p0, Ln3/y/e/c0;->m:I

    :goto_2
    if-eqz v3, :cond_7

    .line 27
    iget v2, p0, Ln3/y/e/c0;->m:I

    .line 28
    :cond_7
    iget v3, p0, Ln3/y/e/c0;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 29
    iget v6, p0, Ln3/y/e/c0;->k:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget v6, p0, Ln3/y/e/c0;->c:F

    neg-float v7, v3

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 33
    iget v5, p0, Ln3/y/e/c0;->c:F

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 34
    :cond_8
    :goto_3
    iget v2, p0, Ln3/y/e/c0;->k:I

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {v4, v0, v0, v0, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 1
    invoke-virtual {p0, p4}, Ln3/y/e/c0;->a(I)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/e/c0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ln3/y/e/c0;->q:Landroid/text/StaticLayout;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p2

    iget p2, p0, Ln3/y/e/c0;->s:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 5
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 6
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p2

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1000000

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/y/e/c0;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
