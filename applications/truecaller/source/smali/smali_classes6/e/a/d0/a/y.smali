.class public abstract Le/a/d0/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d0/a/y$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/d0/a/y$b;

.field public final c:Lcom/truecaller/settings/CallingSettings;

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/view/WindowManager;

.field public f:Z

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public h:Le/a/d0/v;

.field public i:I

.field public j:I

.field public k:Le/a/p5/a0;

.field public l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f1303ac

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object v1, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Le/a/d0/a/y;->b:Le/a/d0/a/y$b;

    .line 6
    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object p1

    iput-object p1, p0, Le/a/d0/a/y;->k:Le/a/p5/a0;

    .line 7
    iput-object p3, p0, Le/a/d0/a/y;->c:Lcom/truecaller/settings/CallingSettings;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x10e0000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method

.method public static g(Le/a/p5/a0;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 p0, 0x7f6

    return p0

    .line 2
    :cond_1
    invoke-interface {p0}, Le/a/p5/a0;->k()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x7da

    return p0

    :cond_2
    const/16 p0, 0x7d5

    return p0
.end method


# virtual methods
.method public L5(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/d0/a/y;->f:Z

    .line 2
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Le/a/d0/a/y;->b(FZZ)V

    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/d0/a/y;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    iget-object v3, p0, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0}, Le/a/d0/a/y;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    .line 4
    iget-object v1, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Le/a/d0/a/y;->f()Le/a/d0/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Le/a/d0/a/y;->o(Landroid/view/View;)V

    return-void
.end method

.method public b(FZZ)V
    .locals 4

    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v2, p2, 0x1

    .line 3
    iput-boolean v2, p0, Le/a/d0/a/y;->f:Z

    if-eqz p3, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 5
    iget v2, p0, Le/a/d0/a/y;->i:I

    int-to-float v2, v2

    add-float/2addr p3, v2

    mul-float/2addr p1, p3

    .line 6
    :cond_1
    iget-object p3, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Le/a/d0/a/y$a;

    invoke-direct {p3, p0, p2}, Le/a/d0/a/y$a;-><init>(Le/a/d0/a/y;Z)V

    .line 11
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract e()I
.end method

.method public abstract f()Le/a/d0/a/e;
.end method

.method public final h()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Le/a/d0/a/y;->e:Landroid/view/WindowManager;

    .line 2
    iget-object v0, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Le/a/d0/a/y;->i:I

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    iget-object v1, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Le/a/o5/j0;->l(Landroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Le/a/d0/a/y;->j:I

    const/16 v0, 0x31

    .line 7
    iget-object v1, p0, Le/a/d0/a/y;->k:Le/a/p5/a0;

    invoke-static {v1}, Le/a/d0/a/y;->g(Le/a/p5/a0;)I

    move-result v5

    .line 8
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x2

    const v6, 0x80008

    const/4 v7, -0x3

    move-object v2, v1

    .line 9
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    .line 10
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f19999a    # 0.6f

    .line 11
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 12
    iget-object v0, p0, Le/a/d0/a/y;->c:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "callerIdLastYPosition"

    invoke-interface {v0, v2, v8}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 13
    iget-object v0, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-static {v4, v5}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v0}, Le/a/o5/j0;->l(Landroid/content/res/Resources;)I

    move-result v0

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    .line 15
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 16
    iget-object v3, p0, Le/a/d0/a/y;->c:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v3, v2, v0}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    .line 17
    :cond_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 18
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final i(Le/a/d0/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/a/y;->h:Le/a/d0/v;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Le/a/d0/v;->c:J

    iget-wide v2, p1, Le/a/d0/v;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v1, p0, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/b0/g/a;

    .line 3
    invoke-virtual {v1}, Le/a/b0/g/a;->W()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-nez v1, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    iget-boolean v1, p0, Le/a/d0/a/y;->f:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Le/a/d0/a/y;->p()V

    goto :goto_2

    :cond_3
    return-void

    .line 6
    :cond_4
    :goto_2
    iput-object p1, p0, Le/a/d0/a/y;->h:Le/a/d0/v;

    .line 7
    invoke-virtual {p0, p1, v0}, Le/a/d0/a/y;->j(Le/a/d0/v;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method public abstract j(Le/a/d0/v;Z)V
.end method

.method public abstract k()V
.end method

.method public l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/d0/a/y;->f:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 5
    :try_start_0
    iget-object v1, p0, Le/a/d0/a/y;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :goto_1
    iget-object v0, p0, Le/a/d0/a/y;->c:Lcom/truecaller/settings/CallingSettings;

    iget-object v1, p0, Le/a/d0/a/y;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v2, "callerIdLastYPosition"

    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    .line 8
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Le/a/d0/a/y;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 12
    :cond_2
    iget-object v0, p0, Le/a/d0/a/y;->b:Le/a/d0/a/y$b;

    invoke-interface {v0}, Le/a/d0/a/y$b;->d()V

    .line 13
    invoke-virtual {p0}, Le/a/d0/a/y;->k()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Le/a/d0/a/y;->p()V

    :goto_2
    return-void
.end method

.method public abstract m()V
.end method

.method public abstract o(Landroid/view/View;)V
.end method

.method public p()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/d0/a/y;->f:Z

    .line 2
    iget-object v0, p0, Le/a/d0/a/y;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Le/a/d0/a/y;->l:Landroid/view/View;

    iget v3, p0, Le/a/d0/a/y;->i:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    invoke-virtual {p0, v2, v1, v1}, Le/a/d0/a/y;->b(FZZ)V

    .line 7
    invoke-virtual {p0}, Le/a/d0/a/y;->m()V

    return-void
.end method
