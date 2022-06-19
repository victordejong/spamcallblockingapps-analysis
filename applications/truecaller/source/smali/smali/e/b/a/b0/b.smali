.class public Le/b/a/b0/b;
.super Le/b/a/b0/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public c:F

.field public d:Z

.field public e:J

.field public f:F

.field public g:I

.field public h:F

.field public i:F

.field public j:Le/b/a/e;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/b/a/b0/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Le/b/a/b0/b;->c:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/b/a/b0/b;->d:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Le/b/a/b0/b;->e:J

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Le/b/a/b0/b;->f:F

    .line 6
    iput v0, p0, Le/b/a/b0/b;->g:I

    const/high16 v1, -0x31000000

    .line 7
    iput v1, p0, Le/b/a/b0/b;->h:F

    const/high16 v1, 0x4f000000

    .line 8
    iput v1, p0, Le/b/a/b0/b;->i:F

    .line 9
    iput-boolean v0, p0, Le/b/a/b0/b;->k:Z

    return-void
.end method


# virtual methods
.method public c()F
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Le/b/a/b0/b;->f:F

    .line 3
    iget v2, v0, Le/b/a/e;->k:F

    sub-float/2addr v1, v2

    .line 4
    iget v0, v0, Le/b/a/e;->l:F

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/b0/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 2
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/b/a/b0/b;->i()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/b/a/b0/b;->h()V

    .line 2
    iget-object p1, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-eqz p1, :cond_b

    .line 3
    iget-boolean p1, p0, Le/b/a/b0/b;->k:Z

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 5
    iget-wide v0, p0, Le/b/a/b0/b;->e:J

    sub-long v0, p1, v0

    .line 6
    iget-object v2, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v2, :cond_1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 7
    iget v2, v2, Le/b/a/e;->m:F

    div-float/2addr v3, v2

    .line 8
    iget v2, p0, Le/b/a/b0/b;->c:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v3, v2

    :goto_0
    long-to-float v0, v0

    div-float/2addr v0, v2

    .line 9
    iget v1, p0, Le/b/a/b0/b;->f:F

    invoke-virtual {p0}, Le/b/a/b0/b;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-float v0, v0

    :cond_2
    add-float/2addr v1, v0

    iput v1, p0, Le/b/a/b0/b;->f:F

    .line 10
    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v0

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v2

    .line 11
    sget-object v3, Le/b/a/b0/d;->a:Landroid/graphics/PointF;

    cmpl-float v0, v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_3

    cmpg-float v0, v1, v2

    if-gtz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    xor-int/2addr v0, v4

    .line 12
    iget v1, p0, Le/b/a/b0/b;->f:F

    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v2

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v5

    invoke-static {v1, v2, v5}, Le/b/a/b0/d;->b(FFF)F

    move-result v1

    iput v1, p0, Le/b/a/b0/b;->f:F

    .line 13
    iput-wide p1, p0, Le/b/a/b0/b;->e:J

    .line 14
    invoke-virtual {p0}, Le/b/a/b0/a;->b()V

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget v0, p0, Le/b/a/b0/b;->g:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 16
    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result p1

    iput p1, p0, Le/b/a/b0/b;->f:F

    .line 17
    invoke-virtual {p0}, Le/b/a/b0/b;->i()V

    .line 18
    invoke-virtual {p0}, Le/b/a/b0/b;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Le/b/a/b0/a;->a(Z)V

    goto :goto_5

    .line 19
    :cond_4
    iget-object v0, p0, Le/b/a/b0/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 20
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    goto :goto_2

    .line 21
    :cond_5
    iget v0, p0, Le/b/a/b0/b;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Le/b/a/b0/b;->g:I

    .line 22
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 23
    iget-boolean v0, p0, Le/b/a/b0/b;->d:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Le/b/a/b0/b;->d:Z

    .line 24
    iget v0, p0, Le/b/a/b0/b;->c:F

    neg-float v0, v0

    .line 25
    iput v0, p0, Le/b/a/b0/b;->c:F

    goto :goto_4

    .line 26
    :cond_6
    invoke-virtual {p0}, Le/b/a/b0/b;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v0

    :goto_3
    iput v0, p0, Le/b/a/b0/b;->f:F

    .line 27
    :goto_4
    iput-wide p1, p0, Le/b/a/b0/b;->e:J

    .line 28
    :cond_8
    :goto_5
    iget-object p1, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez p1, :cond_9

    goto :goto_6

    .line 29
    :cond_9
    iget p1, p0, Le/b/a/b0/b;->f:F

    iget p2, p0, Le/b/a/b0/b;->h:F

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_a

    iget p2, p0, Le/b/a/b0/b;->i:F

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_a

    :goto_6
    return-void

    .line 30
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Le/b/a/b0/b;->h:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Le/b/a/b0/b;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v4

    iget v0, p0, Le/b/a/b0/b;->f:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Frame must be [%f,%f]. It is %f"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_7
    return-void
.end method

.method public e()F
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Le/b/a/b0/b;->i:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 3
    iget v1, v0, Le/b/a/e;->l:F

    :cond_1
    return v1
.end method

.method public f()F
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v1, p0, Le/b/a/b0/b;->h:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 3
    iget v1, v0, Le/b/a/e;->k:F

    :cond_1
    return v1
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/b0/b;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/a/b0/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v0

    iget v1, p0, Le/b/a/b0/b;->f:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v1

    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Le/b/a/b0/b;->f:F

    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v1

    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/b0/b;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/b/a/e;->a()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/b0/b;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/b/a/b0/b;->k:Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/b0/b;->k:Z

    return v0
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/b0/b;->f:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/a/b0/b;->f()F

    move-result v0

    invoke-virtual {p0}, Le/b/a/b0/b;->e()F

    move-result v1

    invoke-static {p1, v0, v1}, Le/b/a/b0/d;->b(FFF)F

    move-result p1

    iput p1, p0, Le/b/a/b0/b;->f:F

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Le/b/a/b0/b;->e:J

    .line 4
    invoke-virtual {p0}, Le/b/a/b0/a;->b()V

    return-void
.end method

.method public k(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 1
    iget-object v0, p0, Le/b/a/b0/b;->j:Le/b/a/e;

    if-nez v0, :cond_0

    const v1, -0x800001

    goto :goto_0

    .line 2
    :cond_0
    iget v1, v0, Le/b/a/e;->k:F

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    .line 3
    :cond_1
    iget v0, v0, Le/b/a/e;->l:F

    .line 4
    :goto_1
    invoke-static {p1, v1, v0}, Le/b/a/b0/d;->b(FFF)F

    move-result v2

    iput v2, p0, Le/b/a/b0/b;->h:F

    .line 5
    invoke-static {p2, v1, v0}, Le/b/a/b0/d;->b(FFF)F

    move-result v0

    iput v0, p0, Le/b/a/b0/b;->i:F

    .line 6
    iget v0, p0, Le/b/a/b0/b;->f:F

    invoke-static {v0, p1, p2}, Le/b/a/b0/d;->b(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Le/b/a/b0/b;->j(I)V

    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-boolean p1, p0, Le/b/a/b0/b;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Le/b/a/b0/b;->d:Z

    .line 4
    iget p1, p0, Le/b/a/b0/b;->c:F

    neg-float p1, p1

    .line 5
    iput p1, p0, Le/b/a/b0/b;->c:F

    :cond_0
    return-void
.end method
