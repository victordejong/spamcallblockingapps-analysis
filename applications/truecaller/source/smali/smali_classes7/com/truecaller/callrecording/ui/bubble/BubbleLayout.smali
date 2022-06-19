.class public Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;
.super Le/a/k0/n/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;,
        Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;,
        Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;,
        Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;

.field public i:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;

.field public j:J

.field public final k:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;

.field public l:I

.field public final m:Landroid/view/WindowManager;

.field public n:Z

.field public o:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/k0/n/b/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->n:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->p:Z

    .line 4
    new-instance v0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$a;)V

    iput-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->k:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;

    const-string v0, "window"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->m:Landroid/view/WindowManager;

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 8
    new-instance p1, Le/a/k0/n/b/a;

    invoke-direct {p1, p0}, Le/a/k0/n/b/a;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->m:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/callrecording/R$animator;->bubble_shown_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 4
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    if-eqz p1, :cond_b

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->d:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->e:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 4
    invoke-direct {p0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 6
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7
    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 8
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    .line 9
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getLayoutCoordinator()Le/a/k0/n/b/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getLayoutCoordinator()Le/a/k0/n/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/k0/n/b/h;->b(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->o:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;

    if-eqz v0, :cond_b

    .line 15
    invoke-interface {v0, p0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;->a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    goto/16 :goto_1

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->n:Z

    if-eqz v0, :cond_4

    .line 17
    iget v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->l:I

    div-int/2addr v0, v2

    .line 18
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lt v1, v0, :cond_3

    iget v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->l:I

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->k:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;

    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    .line 20
    iput v0, v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->b:F

    .line 21
    iput v2, v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->c:F

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->d:J

    .line 23
    iget-object v0, v1, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_4
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getLayoutCoordinator()Le/a/k0/n/b/h;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getLayoutCoordinator()Le/a/k0/n/b/h;

    move-result-object v0

    .line 26
    iget-object v1, v0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    if-eqz v1, :cond_6

    .line 27
    invoke-virtual {v0, p0}, Le/a/k0/n/b/h;->a(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, v0, Le/a/k0/n/b/h;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, v1, Lcom/truecaller/callrecording/ui/bubble/BubblesService;->c:Landroid/os/Handler;

    new-instance v4, Le/a/k0/n/b/e;

    invoke-direct {v4, v1, p0}, Le/a/k0/n/b/e;-><init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    :cond_5
    iget-object v0, v0, Le/a/k0/n/b/h;->a:Le/a/k0/n/b/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Le/a/k0/n/b/g;->setVisibility(I)V

    .line 32
    :cond_6
    iget-boolean v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->p:Z

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/callrecording/R$animator;->bubble_up_click_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 35
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 37
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->j:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x96

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    .line 38
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->i:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;->B1()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->i:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;

    invoke-interface {v0, p0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;->C1(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    .line 40
    :cond_8
    iput-boolean v3, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->p:Z

    goto :goto_1

    .line 41
    :cond_9
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->f:I

    .line 42
    invoke-virtual {p0}, Le/a/k0/n/b/f;->getViewParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->g:I

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->d:F

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->e:F

    .line 45
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->i:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;

    invoke-interface {v0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;->B1()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    iput-boolean v1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->p:Z

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/callrecording/R$animator;->bubble_down_click_animator:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 49
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 51
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->j:J

    .line 52
    invoke-direct {p0}, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 53
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->l:I

    .line 54
    iget-object v0, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->k:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;

    .line 55
    iget-object v1, v0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_b
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnBubbleClickListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->i:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$c;

    return-void
.end method

.method public setOnBubbleMovedListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->o:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$d;

    return-void
.end method

.method public setOnBubbleRemoveListener(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->h:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout$e;

    return-void
.end method

.method public setShouldStickToWall(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;->n:Z

    return-void
.end method
