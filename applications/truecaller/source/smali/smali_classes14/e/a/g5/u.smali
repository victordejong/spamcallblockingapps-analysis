.class public Le/a/g5/u;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/g5/t;


# direct methods
.method public constructor <init>(Le/a/g5/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/g5/u;->a:Le/a/g5/t;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g5/u;->a:Le/a/g5/t;

    .line 2
    sget v0, Le/a/g5/t;->w:I

    .line 3
    invoke-virtual {p1}, Le/a/g5/t;->SA()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g5/u;->a:Le/a/g5/t;

    check-cast p1, Landroid/animation/ValueAnimator;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, v0, Le/a/g5/t;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, v0, Le/a/g5/t;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lcom/truecaller/common/tag/TagView;

    if-eqz v3, :cond_0

    iget-object v3, v0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    if-eq v2, v3, :cond_0

    .line 7
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, v0, Le/a/g5/t;->h:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
