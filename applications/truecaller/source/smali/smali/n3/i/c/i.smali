.class public abstract Ln3/i/c/i;
.super Ln3/i/c/b;
.source "SourceFile"


# instance fields
.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/i/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public l(Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln3/i/c/b;->l(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

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
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 6
    iput-boolean v4, p0, Ln3/i/c/i;->i:Z

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v2, v3, :cond_1

    .line 8
    iput-boolean v4, p0, Ln3/i/c/i;->j:Z

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

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Ln3/i/c/b;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Ln3/i/c/i;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ln3/i/c/i;->j:Z

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    const/4 v3, 0x0

    .line 8
    :goto_0
    iget v4, p0, Ln3/i/c/b;->b:I

    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p0, Ln3/i/c/b;->a:[I

    aget v4, v4, v3

    .line 10
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->Q0(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    iget-boolean v5, p0, Ln3/i/c/i;->i:Z

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_1
    iget-boolean v5, p0, Ln3/i/c/i;->j:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Ln3/i/c/b;->i()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Ln3/i/c/b;->i()V

    return-void
.end method

.method public u(Ln3/i/b/h/k;II)V
    .locals 0

    return-void
.end method
