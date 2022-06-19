.class public abstract Lcom/truecaller/ui/components/FloatingWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/FloatingWindow$d;,
        Lcom/truecaller/ui/components/FloatingWindow$c;,
        Lcom/truecaller/ui/components/FloatingWindow$DismissCause;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewType:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/ui/components/FloatingWindow$c;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TViewType;>;"
        }
    .end annotation
.end field

.field public d:Landroid/view/WindowManager;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:Landroid/widget/FrameLayout;

.field public g:Landroid/os/Handler;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/ui/components/FloatingWindow$c;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/ui/components/FloatingWindow$c;",
            "Ljava/lang/Class<",
            "TViewType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Le/a/l4/k;->D(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Le/a/e/c2/o;->a:Le/a/e/c2/o;

    :cond_0
    iput-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->b:Lcom/truecaller/ui/components/FloatingWindow$c;

    .line 4
    iput-object p3, p0, Lcom/truecaller/ui/components/FloatingWindow;->c:Ljava/lang/Class;

    .line 5
    new-instance p2, Landroid/os/Handler;

    new-instance v0, Le/a/e/c2/n;

    invoke-direct {v0, p0}, Le/a/e/c2/n;-><init>(Lcom/truecaller/ui/components/FloatingWindow;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x10e0000

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->j:I

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->n:I

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const/16 p2, 0x7f6

    goto :goto_1

    :cond_2
    const/16 p2, 0x7da

    :goto_1
    move v3, p2

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v0, "window"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->d:Landroid/view/WindowManager;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 12
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Le/a/o5/j0;->l(Landroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    .line 14
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x31

    .line 15
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f19999a    # 0.6f

    .line 16
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const-string v0, "clipboardSearchLastYPosition"

    .line 17
    invoke-static {v0}, Le/a/j4/b/a/h;->i(Ljava/lang/String;)I

    move-result v0

    .line 18
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const v0, 0x7f0d04f9

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 20
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->d:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/truecaller/ui/components/FloatingWindow$d;

    invoke-direct {p2, p0}, Lcom/truecaller/ui/components/FloatingWindow$d;-><init>(Lcom/truecaller/ui/components/FloatingWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Le/a/e/c2/v;

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Le/a/w1;

    invoke-interface {p3}, Le/a/w1;->s()Le/a/j2;

    move-result-object p3

    .line 28
    invoke-interface {p3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c2/v;->z:Le/a/r2/f;

    .line 29
    invoke-interface {p3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c2/v;->A:Lcom/truecaller/settings/CallingSettings;

    .line 30
    invoke-interface {p3}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c2/v;->B:Le/a/b0/e/f;

    .line 31
    invoke-interface {p3}, Le/a/j2;->N7()Le/a/h3/b/a;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c2/v;->C:Le/a/h3/b/a;

    const p3, 0x7f0a036f

    .line 32
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/truecaller/ui/components/AvatarView;

    iput-object p3, p2, Le/a/e/c2/v;->p:Lcom/truecaller/ui/components/AvatarView;

    const p3, 0x7f0a036b

    .line 33
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c2/v;->q:Landroid/widget/TextView;

    const p3, 0x7f0a036a

    .line 34
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c2/v;->r:Landroid/widget/TextView;

    const p3, 0x7f0a0ecc

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c2/v;->t:Landroid/view/View;

    const p3, 0x7f0a0ecf

    .line 36
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c2/v;->u:Landroid/view/View;

    const p3, 0x7f0a0ece

    .line 37
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c2/v;->v:Landroid/view/View;

    const p3, 0x7f0a0ecd

    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Le/a/e/c2/v;->w:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p2, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    const v1, 0x7f040729

    .line 40
    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p3, v0}, Le/a/p5/s0/g;->r1(Landroid/widget/ImageView;I)V

    const p3, 0x7f0a01ae

    .line 41
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    iget-object p3, p2, Le/a/e/c2/v;->B:Le/a/b0/e/f;

    invoke-interface {p3}, Le/a/b0/e/f;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    const p3, 0x7f08062b

    .line 43
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :cond_3
    iget-object p1, p2, Le/a/e/c2/v;->t:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p2, Le/a/e/c2/v;->u:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p2, Le/a/e/c2/v;->v:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object p1, p2, Le/a/e/c2/v;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 3
    iget v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    neg-int v2, v0

    if-eq p1, v2, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, p1

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/truecaller/ui/components/FloatingWindow;->j:I

    int-to-long v2, v2

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/truecaller/ui/components/FloatingWindow$b;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/ui/components/FloatingWindow$b;-><init>(Lcom/truecaller/ui/components/FloatingWindow;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public final b(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/ui/components/FloatingWindow;->j:I

    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/truecaller/ui/components/FloatingWindow$a;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/ui/components/FloatingWindow$a;-><init>(Lcom/truecaller/ui/components/FloatingWindow;Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public abstract c(Lcom/truecaller/ui/components/FloatingWindow$DismissCause;)V
.end method

.method public final d()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->m:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    iget v2, p0, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/truecaller/ui/components/FloatingWindow;->a(I)V

    .line 6
    move-object v0, p0

    check-cast v0, Le/a/e/c2/v;

    .line 7
    iget-object v1, v0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v0, v0, Lcom/truecaller/ui/components/FloatingWindow;->g:Landroid/os/Handler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
