.class public Lcom/google/firebase/inappmessaging/display/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/p$e;
    }
.end annotation


# instance fields
.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:Landroid/view/View;

.field private k:Lcom/google/firebase/inappmessaging/display/internal/p$e;

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:I

.field private q:Ljava/lang/Object;

.field private r:Landroid/view/VelocityTracker;

.field private s:F


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/google/firebase/inappmessaging/display/internal/p$e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->f:I

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->g:I

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->h:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->i:J

    .line 8
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    .line 9
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->q:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->k:Lcom/google/firebase/inappmessaging/display/internal/p$e;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/display/internal/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/p;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/inappmessaging/display/internal/p;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/inappmessaging/display/internal/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->q:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/inappmessaging/display/internal/p;)Lcom/google/firebase/inappmessaging/display/internal/p$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->k:Lcom/google/firebase/inappmessaging/display/internal/p$e;

    return-object p0
.end method

.method private e(FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/p;->f()F

    move-result v2

    sub-float v3, p1, v2

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float v5, p2, v4

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance p2, Lcom/google/firebase/inappmessaging/display/internal/p$b;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/p$b;-><init>(Lcom/google/firebase/inappmessaging/display/internal/p;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    .line 3
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->i:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/google/firebase/inappmessaging/display/internal/p$c;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/p$c;-><init>(Lcom/google/firebase/inappmessaging/display/internal/p;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/p$d;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/p$d;-><init>(Lcom/google/firebase/inappmessaging/display/internal/p;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected f()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method protected h(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected j()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/p;->e(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method protected k(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    neg-int p1, p1

    :goto_0
    int-to-float p1, p1

    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/p$a;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/internal/p$a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/p;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/p;->e(FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->s:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_7

    const/4 v5, 0x3

    if-eq p1, v1, :cond_3

    if-eq p1, v5, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/p;->j()V

    .line 7
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    iput-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    .line 9
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->s:F

    .line 10
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->m:F

    .line 11
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->n:F

    .line 12
    iput-boolean v2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    goto/16 :goto_7

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    if-nez p1, :cond_4

    goto/16 :goto_7

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->m:F

    sub-float/2addr p1, v1

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->n:F

    sub-float/2addr v1, v3

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->f:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v7

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6

    .line 18
    iput-boolean v4, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    cmpl-float v1, p1, v0

    if-lez v1, :cond_5

    .line 19
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->f:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->f:I

    neg-int v1, v1

    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->p:I

    .line 20
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v5

    .line 23
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 24
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->j:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 26
    :cond_6
    iget-boolean p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    if-eqz p2, :cond_13

    .line 27
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->s:F

    .line 28
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->p:I

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/p;->i(F)V

    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v7

    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->h(F)V

    return v4

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    if-nez p1, :cond_8

    goto/16 :goto_7

    .line 31
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v5, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->m:F

    sub-float/2addr p1, v5

    .line 32
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 34
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 35
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 36
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->l:I

    div-int/2addr v8, v1

    int-to-float v1, v8

    cmpl-float v1, v7, v1

    if-lez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    if-eqz v1, :cond_a

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    goto :goto_5

    .line 38
    :cond_a
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->g:I

    int-to-float v1, v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_f

    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->h:I

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_f

    cmpg-float v1, v6, v5

    if-gez v1, :cond_f

    if-gez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    if-eqz v1, :cond_f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_b

    const/4 p2, 0x1

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    :goto_1
    cmpg-float p1, p1, v0

    if-gez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    if-ne p2, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 39
    :goto_3
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    :goto_4
    move v9, v4

    move v4, p1

    move p1, v9

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_10

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/p;->k(Z)V

    goto :goto_6

    .line 41
    :cond_10
    iget-boolean p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    if-eqz p1, :cond_11

    .line 42
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/p;->j()V

    .line 43
    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_12

    .line 44
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 45
    :cond_12
    iput-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    .line 46
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->s:F

    .line 47
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->m:F

    .line 48
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->n:F

    .line 49
    iput-boolean v2, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->o:Z

    :cond_13
    :goto_7
    return v2

    .line 50
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->m:F

    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->n:F

    .line 52
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->k:Lcom/google/firebase/inappmessaging/display/internal/p$e;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->q:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/firebase/inappmessaging/display/internal/p$e;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 53
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/p;->r:Landroid/view/VelocityTracker;

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_15
    return v2
.end method
