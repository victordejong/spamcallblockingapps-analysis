.class public Lcom/truecaller/wizard/internal/components/VerificationEditText;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/wizard/internal/components/VerificationEditText$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/EditText;

.field public final d:I

.field public e:Landroid/animation/Animator;

.field public f:Lcom/truecaller/wizard/internal/components/VerificationEditText$b;

.field public final g:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;

    invoke-direct {p2, p0}, Lcom/truecaller/wizard/internal/components/VerificationEditText$a;-><init>(Lcom/truecaller/wizard/internal/components/VerificationEditText;)V

    iput-object p2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->g:Landroid/animation/Animator$AnimatorListener;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_short:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->d:I

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    sget p2, Lcom/truecaller/wizard/R$layout;->wizard_view_verification_edittext:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 6
    sget v1, Lcom/truecaller/wizard/R$id;->digitsContainer:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    .line 7
    sget v1, Lcom/truecaller/wizard/R$id;->cursor:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    .line 8
    sget v1, Lcom/truecaller/wizard/R$id;->editText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->c:Landroid/widget/EditText;

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    .line 10
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 11
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    new-instance v2, Le/a/r/u/a/a;

    invoke-direct {v2, p0}, Le/a/r/u/a/a;-><init>(Lcom/truecaller/wizard/internal/components/VerificationEditText;)V

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    move p2, v0

    :goto_0
    if-ge p2, v4, :cond_1

    .line 13
    sget v2, Lcom/truecaller/wizard/R$layout;->wizard_view_verification_digit:I

    iget-object v3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42000000    # 32.0f

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v1, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 16
    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    return p1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_5

    .line 1
    iget-object v2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 4
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    :goto_2
    if-ne v4, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    .line 5
    iget v3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->d:I

    int-to-long v3, v3

    const/4 v8, 0x0

    .line 6
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 17
    :cond_4
    iget v3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->d:I

    int-to-long v3, v3

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 19
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->getAlpha()F

    move-result v8

    aput v8, v5, v0

    aput v6, v5, v7

    const-string v6, "alpha"

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    new-instance v3, Le/a/r/u/a/b;

    invoke-direct {v3, p0, v2}, Le/a/r/u/a/b;-><init>(Lcom/truecaller/wizard/internal/components/VerificationEditText;Landroid/widget/TextView;)V

    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 24
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    iget-object p2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a(Landroid/view/View;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    add-int/2addr p3, p2

    add-int/2addr p2, p4

    if-eq p3, p2, :cond_4

    .line 1
    iget p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->d:I

    int-to-long v0, p1

    .line 2
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->e:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->e:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->e:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 5
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    iget-object p4, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x5

    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt p3, v3, :cond_1

    new-array p3, v2, [F

    .line 7
    iget-object v6, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v6, v7

    aput v6, p3, v4

    invoke-virtual {p0, p4}, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a(Landroid/view/View;)F

    move-result p4

    aput p4, p3, v5

    goto :goto_0

    :cond_1
    if-lt p2, v3, :cond_2

    new-array p3, v2, [F

    .line 8
    invoke-virtual {p0, p4}, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a(Landroid/view/View;)F

    move-result v6

    aput v6, p3, v4

    iget-object v6, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    add-int/2addr p4, v6

    int-to-float p4, p4

    aput p4, p3, v5

    goto :goto_0

    .line 9
    :cond_2
    iget-object p4, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 10
    iget-object p4, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a:Landroid/view/ViewGroup;

    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    new-array v6, v2, [F

    .line 11
    invoke-virtual {p0, p3}, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a(Landroid/view/View;)F

    move-result p3

    aput p3, v6, v4

    invoke-virtual {p0, p4}, Lcom/truecaller/wizard/internal/components/VerificationEditText;->a(Landroid/view/View;)F

    move-result p3

    aput p3, v6, v5

    move-object p3, v6

    :goto_0
    new-array p4, v2, [Landroid/animation/Animator;

    .line 12
    iget-object v2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 13
    invoke-static {v2, v6, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {p3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p4, v4

    iget-object p3, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->b:Landroid/view/View;

    new-array v2, v5, [F

    if-lt p2, v3, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    aput p2, v2, v4

    const-string p2, "alpha"

    .line 14
    invoke-static {p3, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p4, v5

    .line 15
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 16
    iget-object p2, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->g:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 18
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->e:Landroid/animation/Animator;

    :cond_4
    return-void
.end method

.method public setOnCodeEnteredListener(Lcom/truecaller/wizard/internal/components/VerificationEditText$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->f:Lcom/truecaller/wizard/internal/components/VerificationEditText$b;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/VerificationEditText;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
