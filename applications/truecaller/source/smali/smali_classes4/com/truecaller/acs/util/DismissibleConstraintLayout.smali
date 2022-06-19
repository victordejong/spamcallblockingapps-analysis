.class public final Lcom/truecaller/acs/util/DismissibleConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J3\u0010\r\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J3\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u0019\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0007R\u001d\u0010#\u001a\u00020\u001e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001d\u0010\'\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010 \u001a\u0004\u0008%\u0010&R\u0016\u0010*\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R0\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0018\u00010+j\u0004\u0018\u0001`,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010=\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010)R\u001d\u0010@\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010 \u001a\u0004\u0008?\u0010&\u00a8\u0006A"
    }
    d2 = {
        "Lcom/truecaller/acs/util/DismissibleConstraintLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "e1",
        "e2",
        "",
        "velocityX",
        "velocityY",
        "onFling",
        "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z",
        "event",
        "onTouchEvent",
        "distanceX",
        "distanceY",
        "onScroll",
        "e",
        "onDown",
        "onSingleTapUp",
        "Ls1/s;",
        "onLongPress",
        "(Landroid/view/MotionEvent;)V",
        "onShowPress",
        "f1",
        "()V",
        "g1",
        "Landroid/view/View;",
        "x",
        "Ls1/g;",
        "getViewToAnimate",
        "()Landroid/view/View;",
        "viewToAnimate",
        "w",
        "getMinScrollDistance",
        "()F",
        "minScrollDistance",
        "y",
        "Z",
        "isScrolling",
        "Lkotlin/Function0;",
        "Lcom/truecaller/acs/util/OnDismissListener;",
        "t",
        "Ls1/z/b/a;",
        "getOnDismissListener",
        "()Ls1/z/b/a;",
        "setOnDismissListener",
        "(Ls1/z/b/a;)V",
        "onDismissListener",
        "Ln3/k/i/e;",
        "u",
        "Ln3/k/i/e;",
        "gestureDetector",
        "",
        "z",
        "I",
        "lastPointerIndex",
        "A",
        "isSwipeEnabled",
        "v",
        "getMinVelocity",
        "minVelocity",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final A:Z

.field public t:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ln3/k/i/e;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Ln3/k/i/e;

    invoke-direct {p2, p1, p0}, Ln3/k/i/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->u:Ln3/k/i/e;

    .line 4
    new-instance p2, Lb2;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0}, Lb2;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->v:Ls1/g;

    .line 5
    new-instance p2, Lb2;

    invoke-direct {p2, v0, p0}, Lb2;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->w:Ls1/g;

    .line 6
    new-instance p2, Le/a/g/j/n0;

    invoke-direct {p2, p0, p1}, Le/a/g/j/n0;-><init>(Lcom/truecaller/acs/util/DismissibleConstraintLayout;Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->x:Ls1/g;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->z:I

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->A:Z

    return-void
.end method

.method private final getMinScrollDistance()F
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getMinVelocity()F
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getViewToAnimate()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final f1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object v1

    const-string v2, "viewToAnimate"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    new-instance v3, Lcom/truecaller/acs/util/DismissibleConstraintLayout$a;

    invoke-direct {v3, p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout$a;-><init>(Lcom/truecaller/acs/util/DismissibleConstraintLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final g1(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 4
    iget v5, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->z:I

    if-eq v5, v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->u:Ln3/k/i/e;

    .line 6
    iget-object v2, v2, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast v2, Ln3/k/i/e$b;

    .line 7
    iget-object v2, v2, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    if-nez v2, :cond_5

    .line 8
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object p1

    const-string v0, "viewToAnimate"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->f1()V

    goto :goto_1

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 20
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->y:Z

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->z:I

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->z:I

    :goto_2
    move v4, v2

    :goto_3
    return v4
.end method

.method public final getOnDismissListener()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->t:Ls1/z/b/a;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getMinVelocity()F

    move-result p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->f1()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->g1(Landroid/view/MotionEvent;)Z

    .line 3
    iget-boolean p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->y:Z

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2
    iget-boolean p2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->y:Z

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getMinScrollDistance()F

    move-result p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    return p3

    :cond_1
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->y:Z

    .line 4
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p4, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->getViewToAnimate()Landroid/view/View;

    move-result-object v0

    const-string v1, "viewToAnimate"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float/2addr p4, p1

    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    return p2

    :cond_2
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->g1(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnDismissListener(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/acs/util/DismissibleConstraintLayout;->t:Ls1/z/b/a;

    return-void
.end method
