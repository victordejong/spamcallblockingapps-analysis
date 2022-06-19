.class public Lcom/truecaller/ui/components/FeedbackItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;,
        Lcom/truecaller/ui/components/FeedbackItemView$c;,
        Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Z

.field public h:F

.field public i:Z

.field public j:Lcom/truecaller/ui/components/FeedbackItemView$c;

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/truecaller/R$styleable;->FeedbackItemView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {p2, v0}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    throw p2
.end method

.method public static c(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Landroid/content/Context;)Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->shouldShowInviteFriends()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->getInitialInviteState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;-><init>(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->shouldShowShare()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->getInitialShareState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;-><init>(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;)V

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->shouldShowFeedback()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->getInitialFeedbackState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;-><init>(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;)V

    return-object p1

    :cond_3
    return-object v0
.end method

.method private setIconDrawable(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getIconId()I

    move-result p1

    const v1, 0x7f040729

    invoke-static {v0, p1, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->i:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->DUMMY_FINAL:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    iput-object v1, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->g:Z

    const-string v1, "alpha"

    const/4 v2, 0x2

    const-wide/16 v3, 0xc8

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 7
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-array v7, v2, [F

    .line 8
    fill-array-data v7, :array_0

    invoke-static {v6, v1, v7}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v6

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 9
    iget-object v8, v6, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v7, v6, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11
    iget-object v6, v6, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    .line 15
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v2, [F

    .line 16
    fill-array-data v2, :array_1

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 17
    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    invoke-virtual {v6, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 19
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance v2, Le/a/e/c2/j;

    invoke-direct {v2, p0, v1, v5}, Le/a/e/c2/j;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 22
    new-instance v1, Lcom/truecaller/ui/components/FeedbackItemView$a;

    invoke-direct {v1, p0}, Lcom/truecaller/ui/components/FeedbackItemView$a;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    new-array v0, v2, [F

    .line 24
    fill-array-data v0, :array_2

    invoke-static {p0, v1, v0}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 25
    iget-object v2, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object v1, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    new-instance v1, Lcom/truecaller/ui/components/FeedbackItemView$b;

    invoke-direct {v1, p0}, Lcom/truecaller/ui/components/FeedbackItemView$b;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;)V

    .line 28
    iget-object v2, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    iget-object v0, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 30
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    return-void

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

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 3
    iget-object v1, v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView;->a()V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->isInviteState()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "INVITE_LAST_DISMISSED"

    .line 6
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "FEEDBACK_LAST_DISMISSED"

    .line 7
    invoke-static {v2}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    const-string v2, "FEEDBACK_DISMISSED_COUNT"

    .line 8
    invoke-static {v2}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    const-wide/16 v3, 0x2

    .line 9
    invoke-static {v2, v3, v4}, Le/a/j4/b/a/h;->r(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->isShareState()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1202a4

    goto :goto_0

    :cond_1
    const v1, 0x7f120281

    :goto_0
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Landroid/widget/Button;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x4

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 2
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldShare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 2
    iget-object v1, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    sget-object v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j()V

    .line 5
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->f:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-direct {p0, v0}, Lcom/truecaller/ui/components/FeedbackItemView;->setIconDrawable(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 12
    iget-object v2, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object v1, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 14
    iget-object v1, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    iget-object v0, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 16
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 17
    new-instance v0, Le/a/e/c2/i;

    invoke-direct {v0, p0}, Le/a/e/c2/i;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public g(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 3
    iget-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->isFeedbackState()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 6
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 7
    sget-object v2, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->GLOBAL_SEARCH_HISTORY:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne v0, v2, :cond_1

    const-string v0, "FEEDBACK_HAS_ASKED_SEARCH"

    .line 8
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->AFTERCALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne v0, v2, :cond_2

    const-string v0, "FEEDBACK_HAS_ASKED_AFTERCALL"

    .line 10
    invoke-static {v0, v1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldClose()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0x8

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 15
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d04c8

    goto :goto_1

    :cond_4
    const v2, 0x7f0d04c7

    :goto_1
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f070139

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 18
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 20
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 21
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f080141

    .line 23
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 24
    invoke-static {p2, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0406f4

    invoke-static {p2, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 27
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 28
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {p2, v0}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p2, v0}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->h:F

    const p2, 0x7f0a074f

    .line 32
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->d:Landroid/widget/Button;

    .line 33
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0750

    .line 34
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->e:Landroid/widget/Button;

    .line 35
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a074e

    .line 36
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->f:Landroid/widget/Button;

    .line 37
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a075a

    .line 38
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    const p2, 0x7f0a075b

    .line 39
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p2, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 43
    invoke-virtual {p2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getIconId()I

    move-result p2

    if-eq p2, v1, :cond_7

    .line 44
    invoke-direct {p0, p1}, Lcom/truecaller/ui/components/FeedbackItemView;->setIconDrawable(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    .line 45
    :cond_7
    iget-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->f:Landroid/widget/Button;

    .line 46
    iget-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 47
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getDismissId()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/truecaller/ui/components/FeedbackItemView;->d(Landroid/widget/Button;I)V

    .line 48
    iget-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->d:Landroid/widget/Button;

    .line 49
    iget-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 50
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getNegativeId()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/truecaller/ui/components/FeedbackItemView;->d(Landroid/widget/Button;I)V

    .line 51
    iget-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->e:Landroid/widget/Button;

    .line 52
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 53
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getPositiveId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/truecaller/ui/components/FeedbackItemView;->d(Landroid/widget/Button;I)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->l:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ui/components/FeedbackItemView;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a074e

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView;->b()V

    return-void

    :cond_1
    const v1, 0x7f0a074f

    const-string v2, "rateUs"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v1, :cond_8

    .line 5
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->j:Lcom/truecaller/ui/components/FeedbackItemView$c;

    if-eqz p1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    check-cast p1, Lcom/truecaller/ui/FeedbackDialogActivity;

    .line 7
    iget-object v1, v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 8
    sget-object v5, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne v1, v5, :cond_2

    .line 9
    iget-object p1, p1, Lcom/truecaller/ui/FeedbackDialogActivity;->c:Le/a/r2/f;

    const-string v1, "negativeButton"

    invoke-static {p1, v2, v1}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 11
    iget-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0xf

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 13
    :cond_3
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES_THANKS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 15
    :cond_5
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 16
    :cond_6
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 17
    :cond_7
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_GIVE_FEEDBACK:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    :cond_8
    const v1, 0x7f0a0750

    if-ne p1, v1, :cond_17

    .line 18
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->j:Lcom/truecaller/ui/components/FeedbackItemView$c;

    if-eqz p1, :cond_9

    .line 19
    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    check-cast p1, Lcom/truecaller/ui/FeedbackDialogActivity;

    .line 20
    iget-object v1, v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 21
    sget-object v5, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne v1, v5, :cond_9

    .line 22
    iget-object p1, p1, Lcom/truecaller/ui/FeedbackDialogActivity;->c:Le/a/r2/f;

    const-string v1, "positiveButton"

    invoke-static {p1, v2, v1}, Le/m/d/y/n;->y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_9
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j()V

    .line 24
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 25
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 26
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_RATE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p1, v1, :cond_a

    .line 27
    sget-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p1, v1, :cond_b

    :cond_a
    const-string p1, "FEEDBACK_LIKES_TRUECALLER"

    .line 28
    invoke-static {p1, v4}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 29
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 31
    iget-object v1, v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 32
    invoke-virtual {v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getIconId()I

    move-result v1

    .line 33
    invoke-static {p1}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    if-gez v1, :cond_c

    goto/16 :goto_1

    .line 34
    :cond_c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 35
    iget-object v2, v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 36
    invoke-virtual {v2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getIconId()I

    move-result v2

    const v5, 0x7f040729

    invoke-static {v1, v2, v5}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 37
    iput-boolean v4, p0, Lcom/truecaller/ui/components/FeedbackItemView;->i:Z

    .line 38
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v2, v6, v5}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v2

    .line 39
    iget-object v5, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 40
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 41
    iget-object v9, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    iget-object v2, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 43
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 44
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v2, v6, v5}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v2

    .line 45
    iget-object v5, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 47
    iget-object v9, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    new-instance v5, Le/a/e/c2/d0;

    invoke-direct {v5, p0, p1, v1}, Le/a/e/c2/d0;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object p1, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    iget-object p1, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 51
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 53
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    new-instance v1, Le/a/e/c2/e0;

    invoke-direct {v1, p0}, Le/a/e/c2/e0;-><init>(Lcom/truecaller/ui/components/FeedbackItemView;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    iget-object v1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    new-array v2, v3, [F

    iget v5, p0, Lcom/truecaller/ui/components/FeedbackItemView;->h:F

    neg-float v5, v5

    const/4 v9, 0x0

    aput v5, v2, v9

    const/4 v5, 0x0

    aput v5, v2, v4

    const-string v10, "translationX"

    invoke-static {v1, v10, v2}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v1

    .line 56
    iget-object v2, v1, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 57
    iget-object v2, v1, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    iget-object v1, v1, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 59
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    new-array v11, v3, [F

    fill-array-data v11, :array_2

    invoke-static {v2, v6, v11}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v2

    .line 60
    iget-object v11, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 61
    iget-object v11, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    iget-object v2, v2, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 63
    iget-object v11, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    new-array v12, v3, [F

    iget v13, p0, Lcom/truecaller/ui/components/FeedbackItemView;->h:F

    neg-float v13, v13

    aput v13, v12, v9

    aput v5, v12, v4

    invoke-static {v11, v10, v12}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v5

    .line 64
    iget-object v9, v5, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 65
    iget-object v9, v5, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    iget-object v5, v5, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 67
    iget-object v9, p0, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v9, v6, v3}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v3

    .line 68
    iget-object v6, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 69
    iget-object v6, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v3, v3, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 72
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 73
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 74
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 75
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 76
    :cond_d
    :goto_1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 79
    iget-object v2, v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 80
    invoke-virtual {v2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldGiveFeedback()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 81
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 82
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 83
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->asAnalyticsContext()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->FEEDBACK:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {p1, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 84
    sget-object p1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {v0, p1}, Lcom/truecaller/ui/SingleActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/SingleActivity$FragmentSingle;)Landroid/content/Intent;

    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 86
    :cond_e
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 87
    iget-object v2, v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 88
    invoke-virtual {v2}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldRate()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 89
    iget-object v2, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 90
    iget-object v2, v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 91
    invoke-virtual {v2}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->asAnalyticsContext()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->RATE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {v2, v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 92
    invoke-interface {p1}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object p1

    invoke-interface {p1}, Le/a/d4/a;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 93
    invoke-static {v0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 94
    :cond_f
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->j:Lcom/truecaller/ui/components/FeedbackItemView$c;

    if-eqz p1, :cond_10

    .line 95
    check-cast p1, Lcom/truecaller/ui/FeedbackDialogActivity;

    .line 96
    iput-object p0, p1, Lcom/truecaller/ui/FeedbackDialogActivity;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    goto :goto_2

    .line 97
    :cond_10
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->DUMMY_FINAL:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 98
    iput-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    :goto_2
    const-string p1, "GOOGLE_REVIEW_DONE"

    .line 99
    invoke-static {p1, v4}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    const-wide/16 v0, 0x0

    const-string p1, "FEEDBACK_DISMISSED_COUNT"

    .line 100
    invoke-static {p1, v0, v1}, Le/a/j4/b/a/h;->w(Ljava/lang/String;J)V

    goto :goto_4

    .line 101
    :cond_11
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 102
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 103
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldShare()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 104
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 105
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 106
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->asAnalyticsContext()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->SHARE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {p1, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    const p1, 0x7f12036b

    .line 107
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f1206ba

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1206b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 109
    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/q/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z

    .line 110
    iput-boolean v4, p0, Lcom/truecaller/ui/components/FeedbackItemView;->k:Z

    goto :goto_4

    .line 111
    :cond_12
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 112
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 113
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldInvite()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 114
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 115
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 116
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->asAnalyticsContext()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;->INVITE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;

    invoke-static {p1, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;->i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 117
    instance-of p1, v0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_13

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Ln3/r/a/l;

    goto :goto_3

    .line 118
    :cond_13
    move-object p1, v0

    check-cast p1, Ln3/r/a/l;

    :goto_3
    const-string v0, "ReferralManagerImpl"

    .line 119
    invoke-static {p1, v0}, Le/a/q4/l0;->PA(Ln3/r/a/l;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 120
    sget-object v0, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    check-cast p1, Le/a/q4/l0;

    .line 121
    iget-object p1, p1, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {p1, v0}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    .line 122
    :cond_14
    :goto_4
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 123
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 124
    invoke-virtual {p1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldClose()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 125
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 126
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 127
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p1, v0, :cond_16

    .line 128
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p1, v0, :cond_16

    .line 129
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p1, v0, :cond_16

    .line 130
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p1, v0, :cond_15

    goto :goto_5

    .line 131
    :cond_15
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView;->a()V

    goto :goto_6

    .line 132
    :cond_16
    :goto_5
    invoke-virtual {p0}, Lcom/truecaller/ui/components/FeedbackItemView;->b()V

    :cond_17
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDialogStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->g:Z

    return-void
.end method

.method public setFeedbackItemListener(Lcom/truecaller/ui/components/FeedbackItemView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView;->j:Lcom/truecaller/ui/components/FeedbackItemView$c;

    return-void
.end method
