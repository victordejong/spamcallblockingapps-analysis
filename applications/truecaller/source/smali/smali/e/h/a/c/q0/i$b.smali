.class public Le/h/a/c/q0/i$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/q0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/i;Le/h/a/c/q0/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/i$b;->a:Le/h/a/c/q0/i;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 v2, 0x32

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Le/h/a/c/q0/i$b;->a:Le/h/a/c/q0/i;

    invoke-virtual {v4, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Le/h/a/c/q0/i$b;->a:Le/h/a/c/q0/i;

    invoke-virtual {v4, v2}, Le/h/a/c/q0/a;->TA(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 5
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x12c

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 9
    new-instance p1, Le/h/a/c/q0/j;

    invoke-direct {p1, p0}, Le/h/a/c/q0/j;-><init>(Le/h/a/c/q0/i$b;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10
    iget-object p1, p0, Le/h/a/c/q0/i$b;->a:Le/h/a/c/q0/i;

    iget-object p1, p1, Le/h/a/c/q0/i;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    const/high16 v0, 0x42f00000    # 120.0f

    cmpl-float p4, p4, v0

    const/4 v1, 0x0

    const/high16 v2, 0x43480000    # 200.0f

    const/4 v3, 0x1

    if-lez p4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p4, p4, v2

    if-lez p4, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/h/a/c/q0/i$b;->a(Z)Z

    return v3

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Le/h/a/c/q0/i$b;->a(Z)Z

    return v3

    :cond_1
    return v1
.end method
