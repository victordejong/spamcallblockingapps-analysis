.class public Landroidx/constraintlayout/widget/Group;
.super Ln3/i/c/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/i/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public l(Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/i/c/b;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/i/c/b;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Ln3/i/c/b;->i()V

    return-void
.end method

.method public p(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/i/b/h/d;->S(I)V

    .line 3
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    invoke-virtual {p1, v1}, Ln3/i/b/h/d;->N(I)V

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
