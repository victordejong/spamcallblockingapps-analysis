.class public Le/a/d0/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Le/a/d0/a/y;

.field public final b:F

.field public final c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Lcom/truecaller/settings/CallingSettings;

.field public final k:I

.field public final l:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Le/a/d0/a/y;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Le/a/d0/a/e;->l:Landroid/view/VelocityTracker;

    .line 3
    iput-object p1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 4
    iput p2, p0, Le/a/d0/a/e;->k:I

    .line 5
    iget-object p2, p1, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, p2

    .line 6
    iput v0, p0, Le/a/d0/a/e;->c:F

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p2, v0

    .line 7
    iput p2, p0, Le/a/d0/a/e;->b:F

    .line 8
    iget-object p1, p1, Le/a/d0/a/y;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object p1

    iput-object p1, p0, Le/a/d0/a/e;->j:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object p1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 2
    iget-boolean p1, p1, Le/a/d0/a/y;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/d0/a/e;->l:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v0, :cond_a

    if-eq p1, v3, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 7
    iget v3, p0, Le/a/d0/a/e;->d:F

    sub-float/2addr p1, v3

    .line 8
    iget v3, p0, Le/a/d0/a/e;->e:F

    sub-float/2addr p2, v3

    .line 9
    iget-boolean v3, p0, Le/a/d0/a/e;->g:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Le/a/d0/a/e;->h:Z

    if-nez v3, :cond_3

    .line 10
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Le/a/d0/a/e;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 11
    iput-boolean v0, p0, Le/a/d0/a/e;->h:Z

    .line 12
    iget-boolean v3, p0, Le/a/d0/a/e;->i:Z

    if-nez v3, :cond_3

    .line 13
    iput-boolean v0, p0, Le/a/d0/a/e;->i:Z

    .line 14
    iget-object v3, p0, Le/a/d0/a/e;->j:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "callerIdHintCount"

    invoke-interface {v3, v4}, Lcom/truecaller/settings/CallingSettings;->l(Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Le/a/d0/a/e;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 16
    iput-boolean v0, p0, Le/a/d0/a/e;->g:Z

    .line 17
    :cond_3
    :goto_0
    iget-boolean v3, p0, Le/a/d0/a/e;->h:Z

    if-eqz v3, :cond_7

    .line 18
    iget v3, p0, Le/a/d0/a/e;->f:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    float-to-int p2, v3

    if-gez p2, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    iget-object v1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 20
    iget v3, v1, Le/a/d0/a/y;->j:I

    .line 21
    invoke-virtual {v1}, Le/a/d0/a/y;->c()I

    move-result v1

    sub-int/2addr v3, v1

    if-le p2, v3, :cond_5

    .line 22
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 23
    iget v1, p2, Le/a/d0/a/y;->j:I

    .line 24
    invoke-virtual {p2}, Le/a/d0/a/y;->c()I

    move-result p2

    sub-int/2addr v1, p2

    goto :goto_1

    :cond_5
    move v1, p2

    .line 25
    :goto_1
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 26
    iget-object v3, p2, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_6

    .line 27
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    :cond_6
    iget-object v4, p2, Le/a/d0/a/y;->e:Landroid/view/WindowManager;

    iget-object p2, p2, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    invoke-interface {v4, p2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    sget-boolean p2, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p2

    .line 30
    invoke-static {p2}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "BroadcastCallerIdPosY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ExtraPosY"

    .line 31
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    .line 32
    :cond_7
    iget-boolean p2, p0, Le/a/d0/a/e;->g:Z

    if-eqz p2, :cond_9

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 34
    iget v1, v1, Le/a/d0/a/y;->j:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    .line 35
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 36
    iget-object v1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 37
    iget-object v1, v1, Le/a/d0/a/y;->l:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    :cond_8
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 40
    iget-object p2, p2, Le/a/d0/a/y;->l:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_9
    return v0

    .line 42
    :cond_a
    iget-boolean p1, p0, Le/a/d0/a/e;->g:Z

    const-string v4, "action"

    const-string v5, "context"

    const-string v6, "callerId"

    if-eqz p1, :cond_f

    .line 43
    iget-object p1, p0, Le/a/d0/a/e;->l:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 44
    iget-object p1, p0, Le/a/d0/a/e;->l:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Le/a/d0/a/e;->b:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    iget v7, p0, Le/a/d0/a/e;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v7, p0, Le/a/d0/a/e;->c:F

    cmpl-float p2, p2, v7

    if-gtz p2, :cond_c

    :cond_b
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 46
    invoke-virtual {p2}, Le/a/d0/a/y;->d()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v7, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 47
    iget v8, v7, Le/a/d0/a/y;->i:I

    .line 48
    div-int/2addr v8, v3

    int-to-float v8, v8

    cmpl-float p2, p2, v8

    if-ltz p2, :cond_e

    .line 49
    :cond_c
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    invoke-virtual {p2}, Le/a/d0/a/y;->d()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 50
    iget v7, v2, Le/a/d0/a/y;->i:I

    .line 51
    div-int/2addr v7, v3

    int-to-float v3, v7

    cmpl-float p2, p2, v3

    if-ltz p2, :cond_d

    .line 52
    invoke-virtual {v2}, Le/a/d0/a/y;->d()F

    move-result p1

    .line 53
    :cond_d
    iget-object p2, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 54
    iget v2, p2, Le/a/d0/a/y;->i:I

    int-to-float v2, v2

    .line 55
    invoke-static {v2, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p1, v0, v1}, Le/a/d0/a/y;->b(FZZ)V

    .line 56
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    const-string p2, "SwipeAway"

    .line 57
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subAction"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dismissed"

    .line 58
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v3, v2, p2, v6}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    goto :goto_2

    .line 61
    :cond_e
    invoke-virtual {v7, v2, v1, v1}, Le/a/d0/a/y;->b(FZZ)V

    .line 62
    :goto_2
    iput-boolean v1, p0, Le/a/d0/a/e;->g:Z

    goto :goto_3

    .line 63
    :cond_f
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p1

    .line 64
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "moved"

    const/4 v2, 0x0

    .line 65
    invoke-static {p2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v3, p2, v2, v6}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, v3}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 68
    :goto_3
    iput-boolean v1, p0, Le/a/d0/a/e;->h:Z

    return v0

    .line 69
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Le/a/d0/a/e;->d:F

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Le/a/d0/a/e;->e:F

    .line 71
    iget-object p1, p0, Le/a/d0/a/e;->a:Le/a/d0/a/y;

    .line 72
    iget-object p2, p1, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_11

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    :cond_11
    iput v1, p0, Le/a/d0/a/e;->f:I

    .line 74
    iget p2, p1, Le/a/d0/a/y;->j:I

    .line 75
    invoke-virtual {p1}, Le/a/d0/a/y;->c()I

    move-result p1

    sub-int/2addr p2, p1

    .line 76
    iget p1, p0, Le/a/d0/a/e;->f:I

    if-le p1, p2, :cond_12

    .line 77
    iput p2, p0, Le/a/d0/a/e;->f:I

    :cond_12
    return v0
.end method
