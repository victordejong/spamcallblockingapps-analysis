.class public final Le/a/a/j/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 3
    iget-object v0, v0, Le/a/a/j/f;->b:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 5
    iget-object v0, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->t:Le/a/a/j/f;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    const-wide/16 v2, -0x2710

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x2710

    .line 7
    :goto_1
    iget-object p1, v0, Le/a/a/j/f;->i:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v6

    add-long/2addr v6, v2

    const-wide/16 v2, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Le/m/a/c/t;->seekTo(J)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 11
    iget v2, v0, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->o()V

    goto :goto_2

    .line 13
    :cond_4
    invoke-static {v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;)Ls1/d0/e;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ls1/d0/e;->b(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 15
    invoke-virtual {v0, v2, v2, v3, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->k(FFFF)Ls1/k;

    move-result-object p1

    .line 16
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 18
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 19
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 20
    iget-object v3, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 21
    invoke-virtual {v3, v2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object v4

    .line 22
    invoke-static {v0, v4}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result v0

    .line 23
    invoke-virtual {v3, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->d(F)V

    .line 24
    iget-object v0, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 25
    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object v3

    .line 26
    invoke-static {p1, v3}, Le/a/c/p/a;->d(FLs1/d0/e;)F

    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->e(F)V

    .line 28
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 29
    invoke-virtual {p1, v2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->g(F)V

    :cond_5
    :goto_2
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i:Landroid/animation/Animator;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 5
    iget v0, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 6
    iget v1, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p1, v1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->i(F)Ls1/d0/e;

    move-result-object v1

    neg-float p3, p3

    .line 7
    new-instance v2, Le/a/a/j/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Le/a/a/j/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0, v1, p3, v2}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;FLs1/d0/e;FLs1/z/b/l;)Ln3/p/a/c;

    move-result-object p3

    .line 8
    iput-object p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->l:Ln3/p/a/c;

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 10
    iget-object p1, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eq p1, p2, :cond_3

    .line 12
    :cond_2
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 13
    iget p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 14
    iget v0, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    invoke-virtual {p1, v0}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->j(F)Ls1/d0/e;

    move-result-object v0

    neg-float p4, p4

    .line 15
    new-instance v1, Le/a/a/j/b$a;

    invoke-direct {v1, p2, p0}, Le/a/a/j/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p3, v0, p4, v1}, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;FLs1/d0/e;FLs1/z/b/l;)Ln3/p/a/c;

    move-result-object p3

    .line 16
    iput-object p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->m:Ln3/p/a/c;

    :cond_3
    return p2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "e1"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 2
    iget p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3
    iget p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->q:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 5
    :goto_0
    iput p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->q:I

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 7
    iget p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->q:I

    if-nez p2, :cond_2

    .line 8
    iget p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 9
    iget p4, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    div-float/2addr p3, p4

    add-float/2addr p3, p2

    .line 10
    iput p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    goto :goto_1

    :cond_2
    if-ne p2, v1, :cond_4

    .line 11
    iget p2, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 12
    iget p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->c:F

    div-float/2addr p4, p3

    add-float/2addr p4, p2

    .line 13
    iput p4, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    goto :goto_1

    .line 14
    :cond_3
    iget v0, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    div-float/2addr p3, p2

    add-float/2addr p3, v0

    .line 15
    iput p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    .line 16
    iget p3, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    div-float/2addr p4, p2

    add-float/2addr p4, p3

    .line 17
    iput p4, p1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p1

    return p1
.end method
