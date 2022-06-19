.class public Le/a/o5/n0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final a:Landroid/animation/ValueAnimator;

.field public final b:Landroid/widget/EditText;

.field public final c:F

.field public d:F

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Le/a/o5/n0;->a:Landroid/animation/ValueAnimator;

    .line 3
    iput-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Le/a/o5/n0;->c:F

    .line 5
    invoke-virtual {p0}, Le/a/o5/n0;->c()V

    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTranslationX()F

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final b(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget-object v2, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setAlpha(F)V

    .line 3
    iget-object v2, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    sub-float/2addr v0, p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    cmpl-float p1, p1, v1

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Le/a/o5/n0;->b(F)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget p1, p0, Le/a/o5/n0;->e:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Le/a/o5/n0;->d:F

    sub-float/2addr v0, v4

    add-float/2addr v0, p1

    .line 5
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTranslationX()F

    move-result p1

    add-float/2addr p1, v0

    .line 6
    iget-boolean v4, p0, Le/a/o5/n0;->f:Z

    if-nez v4, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Le/a/o5/n0;->c:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 7
    :cond_2
    iget-boolean v4, p0, Le/a/o5/n0;->f:Z

    if-nez v4, :cond_3

    .line 8
    iget-object v4, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 9
    iput-boolean v3, p0, Le/a/o5/n0;->f:Z

    .line 10
    :cond_3
    iput v0, p0, Le/a/o5/n0;->e:F

    .line 11
    iget-object v0, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 12
    invoke-virtual {p0, p1}, Le/a/o5/n0;->b(F)V

    .line 13
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Le/a/o5/n0;->d:F

    goto :goto_1

    .line 14
    :cond_5
    iget-boolean p1, p0, Le/a/o5/n0;->f:Z

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Le/a/o5/n0;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 16
    invoke-virtual {p0}, Le/a/o5/n0;->a()F

    move-result p1

    .line 17
    iget p2, p0, Le/a/o5/n0;->e:F

    cmpg-float v4, p2, v0

    if-gez v4, :cond_6

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_6
    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    goto :goto_0

    .line 18
    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, p1

    :goto_0
    const/16 p1, 0xfa

    .line 19
    invoke-virtual {p0}, Le/a/o5/n0;->a()F

    move-result p2

    .line 20
    iget-object v4, p0, Le/a/o5/n0;->a:Landroid/animation/ValueAnimator;

    new-array v2, v2, [F

    aput p2, v2, v1

    aput v0, v2, v3

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 21
    iget-object v2, p0, Le/a/o5/n0;->a:Landroid/animation/ValueAnimator;

    int-to-float p1, p1

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    iget-object p1, p0, Le/a/o5/n0;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 23
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Le/a/o5/n0;->d:F

    .line 24
    iput v0, p0, Le/a/o5/n0;->e:F

    .line 25
    iput-boolean v1, p0, Le/a/o5/n0;->f:Z

    .line 26
    invoke-virtual {p0}, Le/a/o5/n0;->c()V

    :cond_9
    :goto_1
    return v1
.end method
