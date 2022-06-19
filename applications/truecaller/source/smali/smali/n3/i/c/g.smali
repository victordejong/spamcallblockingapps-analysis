.class public Ln3/i/c/g;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field public c:I


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/i/c/g;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 3
    iget-object v1, p0, Ln3/i/c/g;->b:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    const/4 v3, 0x0

    .line 6
    iput v3, v2, Ln3/i/b/h/d;->j0:I

    .line 7
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    invoke-virtual {v2}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v2

    sget-object v3, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    if-eq v2, v3, :cond_1

    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    iget-object v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    invoke-virtual {v4}, Ln3/i/b/h/d;->w()I

    move-result v4

    invoke-virtual {v2, v4}, Ln3/i/b/h/d;->S(I)V

    .line 9
    :cond_1
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    invoke-virtual {v2}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v2

    if-eq v2, v3, :cond_2

    .line 10
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    iget-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    invoke-virtual {v2}, Ln3/i/b/h/d;->q()I

    move-result v2

    invoke-virtual {v0, v2}, Ln3/i/b/h/d;->N(I)V

    .line 11
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    const/16 v1, 0x8

    .line 12
    iput v1, v0, Ln3/i/b/h/d;->j0:I

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/c/g;->b:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/i/c/g;->c:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    .line 2
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd2

    .line 4
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 5
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 11
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 12
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "?"

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v6, v1

    .line 16
    invoke-virtual {p1, v5, v2, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/i/c/g;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/i/c/g;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Ln3/i/c/g;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 6
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln3/i/c/g;->b:Landroid/view/View;

    .line 8
    :cond_1
    iput p1, p0, Ln3/i/c/g;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/i/c/g;->c:I

    return-void
.end method
