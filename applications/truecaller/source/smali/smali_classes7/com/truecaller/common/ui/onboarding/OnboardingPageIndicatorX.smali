.class public final Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010&\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u001cR\u0016\u0010(\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;",
        "Landroid/view/View;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "",
        "count",
        "Ls1/s;",
        "setPageCount",
        "(I)V",
        "page",
        "setSelectedPage",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Landroid/animation/ValueAnimator;",
        "animation",
        "onAnimationUpdate",
        "(Landroid/animation/ValueAnimator;)V",
        "Landroid/animation/Animator;",
        "e",
        "Landroid/animation/Animator;",
        "animator",
        "",
        "b",
        "F",
        "spacing",
        "Landroid/graphics/Paint;",
        "f",
        "Landroid/graphics/Paint;",
        "paint",
        "c",
        "I",
        "pageCount",
        "a",
        "radius",
        "d",
        "selectedPage",
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
.field public final a:F

.field public final b:F

.field public c:I

.field public d:F

.field public e:Landroid/animation/Animator;

.field public final f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 3
    invoke-static {p1, p2}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    const/high16 p2, 0x40c00000    # 6.0f

    .line 4
    invoke-static {p1, p2}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->b:F

    const/4 p2, 0x3

    .line 5
    iput p2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->c:I

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 7
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput-object p2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->f:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->d:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    iget v0, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->c:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ls1/u/z;

    invoke-virtual {v1}, Ls1/u/z;->a()I

    move-result v1

    const/4 v2, 0x1

    int-to-float v2, v2

    int-to-float v1, v1

    .line 4
    iget v3, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->d:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    iget v3, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 6
    iget-object v5, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->f:Landroid/graphics/Paint;

    const/16 v6, 0xff

    int-to-float v6, v6

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v2, v7

    const v7, 0x3e99999a    # 0.3f

    add-float/2addr v2, v7

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget v12, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    neg-float v7, v12

    neg-float v8, v12

    add-float v9, v12, v3

    iget-object v13, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->f:Landroid/graphics/Paint;

    move-object v6, p1

    move v10, v12

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    iget v2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->b:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->a:F

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float v0, p1, p2

    iget v1, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->c:I

    add-int/lit8 v2, v1, 0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->b:F

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setPageCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->c:I

    return-void
.end method

.method public final setSelectedPage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->d:F

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float p1, p1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 5
    iput-object p1, p0, Lcom/truecaller/common/ui/onboarding/OnboardingPageIndicatorX;->e:Landroid/animation/Animator;

    return-void
.end method
