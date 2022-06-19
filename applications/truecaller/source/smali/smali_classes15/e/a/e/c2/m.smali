.class public final synthetic Le/a/e/c2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/e/c2/f0;

.field public final synthetic b:Lcom/truecaller/common/ui/banner/BannerViewX;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/f0;Lcom/truecaller/common/ui/banner/BannerViewX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/m;->a:Le/a/e/c2/f0;

    iput-object p2, p0, Le/a/e/c2/m;->b:Lcom/truecaller/common/ui/banner/BannerViewX;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/a/e/c2/m;->a:Le/a/e/c2/f0;

    iget-object v1, p0, Le/a/e/c2/m;->b:Lcom/truecaller/common/ui/banner/BannerViewX;

    check-cast p1, Landroid/view/View;

    .line 1
    iget-boolean p1, v0, Le/a/e/c2/f0;->d:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Le/a/e/c2/f0;->d:Z

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    const-wide/16 v5, 0xc8

    if-ge v2, v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-array v4, v4, [F

    .line 6
    fill-array-data v4, :array_0

    const-string v7, "alpha"

    invoke-static {v3, v7, v4}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 7
    iget-object v7, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v4, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object v3, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 10
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 13
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v4, v4, [F

    .line 14
    fill-array-data v4, :array_1

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 15
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    new-instance v4, Le/a/e/c2/l;

    invoke-direct {v4, v2, v3, v1}, Le/a/e/c2/l;-><init>(Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;)V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 20
    new-instance v1, Le/a/e/c2/g0;

    invoke-direct {v1, v0}, Le/a/e/c2/g0;-><init>(Le/a/e/c2/f0;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 22
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
