.class public Ln3/i/a/b/n;
.super Ln3/i/c/b;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$h;


# instance fields
.field public i:Z

.field public j:Z

.field public k:F

.field public l:[Landroid/view/View;


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0

    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Ln3/i/a/b/n;->k:F

    return v0
.end method

.method public l(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ln3/i/c/b;->l(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper_onShow:I

    if-ne v2, v3, :cond_0

    .line 6
    iget-boolean v3, p0, Ln3/i/a/b/n;->i:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ln3/i/a/b/n;->i:Z

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper_onHide:I

    if-ne v2, v3, :cond_1

    .line 8
    iget-boolean v3, p0, Ln3/i/a/b/n;->j:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Ln3/i/a/b/n;->j:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    iput p1, p0, Ln3/i/a/b/n;->k:F

    .line 2
    iget p1, p0, Ln3/i/c/b;->b:I

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iget-object v1, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    if-eqz v1, :cond_0

    array-length v1, v1

    iget v2, p0, Ln3/i/c/b;->b:I

    if-eq v1, v2, :cond_1

    .line 5
    :cond_0
    iget v1, p0, Ln3/i/c/b;->b:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    :cond_1
    move v1, v0

    .line 6
    :goto_0
    iget v2, p0, Ln3/i/c/b;->b:I

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Ln3/i/c/b;->a:[I

    aget v2, v2, v1

    .line 8
    iget-object v3, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->Q0(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    .line 10
    iput-object p1, p0, Ln3/i/a/b/n;->l:[Landroid/view/View;

    .line 11
    :goto_1
    iget p1, p0, Ln3/i/c/b;->b:I

    if-ge v0, p1, :cond_5

    .line 12
    iget-object p1, p0, Ln3/i/a/b/n;->l:[Landroid/view/View;

    aget-object p1, p1, v0

    .line 13
    invoke-virtual {p0}, Ln3/i/a/b/n;->u()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 17
    instance-of v2, v2, Ln3/i/a/b/n;

    if-eqz v2, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0}, Ln3/i/a/b/n;->u()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method
