.class public Lcom/truecaller/wizard/internal/components/EditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/wizard/internal/components/EditText$d;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:Lcom/truecaller/wizard/internal/components/EditText$d;

.field public h:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/truecaller/wizard/R$drawable;->wizard_ic_edittext_clear_clipped:I

    .line 3
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/truecaller/wizard/R$drawable;->wizard_ic_check_clipped:I

    .line 7
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->f:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/wizard/R$dimen;->space:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private getCurrentIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/EditText;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/wizard/internal/components/EditText;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/truecaller/wizard/internal/components/EditText;->c(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/truecaller/wizard/internal/components/EditText$b;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/wizard/internal/components/EditText$b;-><init>(Lcom/truecaller/wizard/internal/components/EditText;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/wizard/internal/components/EditText;->c(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/wizard/internal/components/EditText;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/truecaller/wizard/internal/components/EditText;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/truecaller/wizard/internal/components/EditText;->c(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/truecaller/wizard/internal/components/EditText$a;

    invoke-direct {v1, p0}, Lcom/truecaller/wizard/internal/components/EditText$a;-><init>(Lcom/truecaller/wizard/internal/components/EditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0x2710

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    aput v5, v2, v4

    const/4 v5, 0x1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    aput v3, v2, v5

    .line 2
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v0, Lcom/truecaller/wizard/internal/components/EditText$c;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/wizard/internal/components/EditText$c;-><init>(Lcom/truecaller/wizard/internal/components/EditText;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/EditText;->g:Lcom/truecaller/wizard/internal/components/EditText$d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/truecaller/wizard/internal/components/EditText$d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/truecaller/wizard/internal/components/EditText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/truecaller/wizard/internal/components/EditText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->b()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/truecaller/wizard/internal/components/EditText;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/wizard/internal/components/EditText;->f:Landroid/graphics/drawable/Drawable;

    if-eq p1, p2, :cond_2

    .line 5
    invoke-direct {p0, p2}, Lcom/truecaller/wizard/internal/components/EditText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/truecaller/wizard/internal/components/EditText;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    if-eq p1, p2, :cond_2

    .line 7
    invoke-direct {p0, p2}, Lcom/truecaller/wizard/internal/components/EditText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/wizard/internal/components/EditText;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/wizard/internal/components/EditText;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/truecaller/wizard/internal/components/EditText;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_2

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setInputValidator(Lcom/truecaller/wizard/internal/components/EditText$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText;->g:Lcom/truecaller/wizard/internal/components/EditText$d;

    return-void
.end method
