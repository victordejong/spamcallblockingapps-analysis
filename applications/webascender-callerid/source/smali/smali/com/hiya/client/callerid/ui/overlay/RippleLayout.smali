.class public final Lcom/hiya/client/callerid/ui/overlay/RippleLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final f:Landroid/view/animation/Animation;

.field private g:Landroid/animation/Animator;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    sget p2, Lcom/hiya/client/callerid/ui/k;->a:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string p2, "AnimationUtils.loadAnima\u2026R.anim.ripple_alpha_anim)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->f:Landroid/view/animation/Animation;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->h:Landroid/os/Handler;

    .line 5
    sget p1, Lcom/hiya/client/callerid/ui/o;->x:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->j:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->f:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->e()V

    return-void
.end method

.method private final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v2, v0, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$a;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$a;-><init>(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v1, "this"

    .line 5
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v1, 0x190

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 8
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->g:Landroid/animation/Animator;

    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;-><init>(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->i:Ljava/lang/Runnable;

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getEnableRipple()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->j:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->f()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->g()V

    return-void
.end method

.method public final setEnableRipple(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->j:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->f()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->g()V

    .line 5
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->j:Z

    return-void
.end method
