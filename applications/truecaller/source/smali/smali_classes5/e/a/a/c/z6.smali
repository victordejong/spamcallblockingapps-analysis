.class public final Le/a/a/c/z6;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public a:Le/a/a/c/d;

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/ArgbEvaluator;

.field public final e:Landroidx/recyclerview/widget/RecyclerView;

.field public final f:J

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;JLjava/lang/String;J)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Le/a/a/c/z6;->e:Landroidx/recyclerview/widget/RecyclerView;

    iput-wide p2, p0, Le/a/a/c/z6;->f:J

    iput-object p4, p0, Le/a/a/c/z6;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0406de

    invoke-static {p2, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    const/16 p3, 0x1a

    invoke-static {p2, p3}, Ln3/k/c/a;->l(II)I

    move-result p2

    iput p2, p0, Le/a/a/c/z6;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f040583

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Le/a/a/c/z6;->c:I

    .line 4
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Le/a/a/c/z6;->d:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 6
    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/a/a/c/d;->l5(I)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/c/z6;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-wide v0, p0, Le/a/a/c/z6;->f:J

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    instance-of v0, p1, Le/a/a/c/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Le/a/a/c/d;

    .line 2
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3f79999a    # 0.975f

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 3
    iget v0, p0, Le/a/a/c/z6;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/z6;->d:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float/2addr v3, v1

    const v1, 0x3cccccc0    # 0.024999976f

    div-float/2addr v3, v1

    iget v1, p0, Le/a/a/c/z6;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Le/a/a/c/d;->l5(I)V

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/a/c/z6;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2, v1}, Le/a/a/c/d;->u5(ILjava/lang/String;)V

    .line 8
    :cond_3
    iput-object p1, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    :cond_4
    if-eqz p1, :cond_5

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Le/a/a/c/d;->l5(I)V

    .line 10
    :cond_5
    iget-object p1, p0, Le/a/a/c/z6;->g:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object v0, p0, Le/a/a/c/z6;->a:Le/a/a/c/d;

    if-eqz v0, :cond_6

    iget v1, p0, Le/a/a/c/z6;->c:I

    invoke-virtual {v0, v1, p1}, Le/a/a/c/d;->u5(ILjava/lang/String;)V

    :cond_6
    return-void
.end method
