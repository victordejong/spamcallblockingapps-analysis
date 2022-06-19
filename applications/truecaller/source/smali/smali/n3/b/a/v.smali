.class public Ln3/b/a/v;
.super Ln3/b/a/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/a/v$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Ln3/b/f/v;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Ln3/b/a/v$d;

.field public j:Ln3/b/e/a;

.field public k:Ln3/b/e/a$a;

.field public l:Z

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ln3/b/e/g;

.field public v:Z

.field public w:Z

.field public final x:Ln3/k/i/a0;

.field public final y:Ln3/k/i/a0;

.field public final z:Ln3/k/i/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Ln3/b/a/v;->A:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ln3/b/a/v;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/b/a/v;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln3/b/a/v;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/b/a/v;->p:Z

    .line 6
    iput-boolean v0, p0, Ln3/b/a/v;->t:Z

    .line 7
    new-instance v0, Ln3/b/a/v$a;

    invoke-direct {v0, p0}, Ln3/b/a/v$a;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->x:Ln3/k/i/a0;

    .line 8
    new-instance v0, Ln3/b/a/v$b;

    invoke-direct {v0, p0}, Ln3/b/a/v$b;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->y:Ln3/k/i/a0;

    .line 9
    new-instance v0, Ln3/b/a/v$c;

    invoke-direct {v0, p0}, Ln3/b/a/v$c;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->z:Ln3/k/i/c0;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/v;->D(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ln3/b/a/v;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ln3/b/a/a;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/b/a/v;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Ln3/b/a/v;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ln3/b/a/v;->p:Z

    .line 19
    iput-boolean v0, p0, Ln3/b/a/v;->t:Z

    .line 20
    new-instance v0, Ln3/b/a/v$a;

    invoke-direct {v0, p0}, Ln3/b/a/v$a;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->x:Ln3/k/i/a0;

    .line 21
    new-instance v0, Ln3/b/a/v$b;

    invoke-direct {v0, p0}, Ln3/b/a/v$b;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->y:Ln3/k/i/a0;

    .line 22
    new-instance v0, Ln3/b/a/v$c;

    invoke-direct {v0, p0}, Ln3/b/a/v$c;-><init>(Ln3/b/a/v;)V

    iput-object v0, p0, Ln3/b/a/v;->z:Ln3/k/i/c0;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/b/a/v;->D(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/a/v;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/b/a/v;->q:Z

    .line 3
    invoke-virtual {p0, v0}, Ln3/b/a/v;->G(Z)V

    :cond_0
    return-void
.end method

.method public B(Ln3/b/e/a$a;)Ln3/b/e/a;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/a/v$d;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 4
    iget-object v0, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 5
    new-instance v0, Ln3/b/a/v$d;

    iget-object v1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Ln3/b/a/v$d;-><init>(Ln3/b/a/v;Landroid/content/Context;Ln3/b/e/a$a;)V

    .line 6
    iget-object p1, v0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {p1}, Ln3/b/e/i/g;->A()V

    .line 7
    :try_start_0
    iget-object p1, v0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    iget-object v1, v0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-interface {p1, v0, v1}, Ln3/b/e/a$a;->c9(Ln3/b/e/a;Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, v0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {v1}, Ln3/b/e/i/g;->z()V

    if-eqz p1, :cond_1

    .line 9
    iput-object v0, p0, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    .line 10
    invoke-virtual {v0}, Ln3/b/a/v$d;->i()V

    .line 11
    iget-object p1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->f(Ln3/b/e/a;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ln3/b/a/v;->C(Z)V

    .line 13
    iget-object p1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, v0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {v0}, Ln3/b/e/i/g;->z()V

    .line 15
    throw p1
.end method

.method public C(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Ln3/b/a/v;->s:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Ln3/b/a/v;->s:Z

    .line 3
    iget-object v2, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Ln3/b/a/v;->G(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Ln3/b/a/v;->s:Z

    if-eqz v1, :cond_3

    .line 7
    iput-boolean v0, p0, Ln3/b/a/v;->s:Z

    .line 8
    iget-object v1, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Ln3/b/a/v;->G(Z)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v2, v4, v5}, Ln3/b/f/v;->F4(IJ)Ln3/k/i/z;

    move-result-object p1

    .line 15
    iget-object v1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Ln3/b/f/a;->e(IJ)Ln3/k/i/z;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v0, v6, v7}, Ln3/b/f/v;->F4(IJ)Ln3/k/i/z;

    move-result-object v0

    .line 17
    iget-object p1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Ln3/b/f/a;->e(IJ)Ln3/k/i/z;

    move-result-object p1

    .line 18
    :goto_1
    new-instance v1, Ln3/b/e/g;

    invoke-direct {v1}, Ln3/b/e/g;-><init>()V

    .line 19
    iget-object v2, v1, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p1, Ln3/k/i/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    .line 22
    :goto_2
    iget-object p1, v0, Ln3/k/i/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 24
    :cond_6
    iget-object p1, v1, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v1}, Ln3/b/e/g;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v2}, Ln3/b/f/v;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    .line 28
    :cond_8
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v0}, Ln3/b/f/v;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final D(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    .line 3
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ln3/b/f/v;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ln3/b/f/v;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Ln3/b/f/v;

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    .line 9
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 10
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 11
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    if-eqz v0, :cond_a

    iget-object v1, p0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 12
    invoke-interface {v0}, Ln3/b/f/v;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1}, Ln3/b/f/v;->B4()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    iput-boolean v0, p0, Ln3/b/a/v;->h:Z

    .line 15
    :cond_3
    iget-object v2, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v0

    .line 17
    :goto_4
    iget-object v3, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v3, p1}, Ln3/b/f/v;->H4(Z)V

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ln3/b/a/v;->F(Z)V

    .line 20
    iget-object p1, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 23
    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    if-eqz v3, :cond_7

    .line 24
    iput-boolean v0, p0, Ln3/b/a/v;->w:Z

    .line 25
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_5

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    :goto_5
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_9

    int-to-float v0, v0

    .line 28
    iget-object v1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 29
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 31
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 32
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ln3/b/a/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, "null"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->B4()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Ln3/b/a/v;->h:Z

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Ln3/b/f/v;->v4(I)V

    return-void
.end method

.method public final F(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Ln3/b/a/v;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v0}, Ln3/b/f/v;->I4(Ln3/b/f/k0;)V

    .line 3
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ln3/b/f/k0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ln3/b/f/k0;)V

    .line 5
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1, v0}, Ln3/b/f/v;->I4(Ln3/b/f/k0;)V

    .line 6
    :goto_0
    iget-object p1, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {p1}, Ln3/b/f/v;->w4()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 7
    :goto_1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    iget-boolean v3, p0, Ln3/b/a/v;->n:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-interface {v0, v3}, Ln3/b/f/v;->z4(Z)V

    .line 8
    iget-object v0, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Ln3/b/a/v;->n:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final G(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ln3/b/a/v;->q:Z

    iget-boolean v1, p0, Ln3/b/a/v;->r:Z

    iget-boolean v2, p0, Ln3/b/a/v;->s:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    const-wide/16 v1, 0xfa

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-boolean v0, p0, Ln3/b/a/v;->t:Z

    if-nez v0, :cond_17

    .line 3
    iput-boolean v4, p0, Ln3/b/a/v;->t:Z

    .line 4
    iget-object v0, p0, Ln3/b/a/v;->u:Ln3/b/e/g;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Ln3/b/e/g;->a()V

    .line 6
    :cond_3
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget v0, p0, Ln3/b/a/v;->o:I

    const/4 v3, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ln3/b/a/v;->v:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_b

    .line 8
    :cond_4
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_5

    new-array p1, v5, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    iget-object v5, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 12
    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 13
    :cond_5
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, Ln3/b/e/g;

    invoke-direct {p1}, Ln3/b/e/g;-><init>()V

    .line 15
    iget-object v4, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v4}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object v4

    invoke-virtual {v4, v3}, Ln3/k/i/z;->g(F)Ln3/k/i/z;

    .line 16
    iget-object v5, p0, Ln3/b/a/v;->z:Ln3/k/i/c0;

    invoke-virtual {v4, v5}, Ln3/k/i/z;->f(Ln3/k/i/c0;)Ln3/k/i/z;

    .line 17
    iget-boolean v5, p1, Ln3/b/e/g;->e:Z

    if-nez v5, :cond_6

    .line 18
    iget-object v5, p1, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_6
    iget-boolean v4, p0, Ln3/b/a/v;->p:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Ln3/b/a/v;->g:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 20
    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    iget-object v0, p0, Ln3/b/a/v;->g:Landroid/view/View;

    invoke-static {v0}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln3/k/i/z;->g(F)Ln3/k/i/z;

    .line 22
    iget-boolean v3, p1, Ln3/b/e/g;->e:Z

    if-nez v3, :cond_7

    .line 23
    iget-object v3, p1, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_7
    sget-object v0, Ln3/b/a/v;->B:Landroid/view/animation/Interpolator;

    .line 25
    iget-boolean v3, p1, Ln3/b/e/g;->e:Z

    if-nez v3, :cond_8

    .line 26
    iput-object v0, p1, Ln3/b/e/g;->c:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez v3, :cond_9

    .line 27
    iput-wide v1, p1, Ln3/b/e/g;->b:J

    .line 28
    :cond_9
    iget-object v0, p0, Ln3/b/a/v;->y:Ln3/k/i/a0;

    if-nez v3, :cond_a

    .line 29
    iput-object v0, p1, Ln3/b/e/g;->d:Ln3/k/i/a0;

    .line 30
    :cond_a
    iput-object p1, p0, Ln3/b/a/v;->u:Ln3/b/e/g;

    .line 31
    invoke-virtual {p1}, Ln3/b/e/g;->b()V

    goto :goto_3

    .line 32
    :cond_b
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 33
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34
    iget-boolean p1, p0, Ln3/b/a/v;->p:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Ln3/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    :cond_c
    iget-object p1, p0, Ln3/b/a/v;->y:Ln3/k/i/a0;

    invoke-interface {p1, v7}, Ln3/k/i/a0;->b(Landroid/view/View;)V

    .line 37
    :goto_3
    iget-object p1, p0, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_17

    .line 38
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto/16 :goto_4

    .line 40
    :cond_d
    iget-boolean v0, p0, Ln3/b/a/v;->t:Z

    if-eqz v0, :cond_17

    .line 41
    iput-boolean v3, p0, Ln3/b/a/v;->t:Z

    .line 42
    iget-object v0, p0, Ln3/b/a/v;->u:Ln3/b/e/g;

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {v0}, Ln3/b/e/g;->a()V

    .line 44
    :cond_e
    iget v0, p0, Ln3/b/a/v;->o:I

    if-nez v0, :cond_16

    iget-boolean v0, p0, Ln3/b/a/v;->v:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_16

    .line 45
    :cond_f
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 46
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 47
    new-instance v0, Ln3/b/e/g;

    invoke-direct {v0}, Ln3/b/e/g;-><init>()V

    .line 48
    iget-object v3, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_10

    new-array p1, v5, [I

    .line 49
    fill-array-data p1, :array_1

    .line 50
    iget-object v5, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 51
    aget p1, p1, v4

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 52
    :cond_10
    iget-object p1, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object p1

    invoke-virtual {p1, v3}, Ln3/k/i/z;->g(F)Ln3/k/i/z;

    .line 53
    iget-object v4, p0, Ln3/b/a/v;->z:Ln3/k/i/c0;

    invoke-virtual {p1, v4}, Ln3/k/i/z;->f(Ln3/k/i/c0;)Ln3/k/i/z;

    .line 54
    iget-boolean v4, v0, Ln3/b/e/g;->e:Z

    if-nez v4, :cond_11

    .line 55
    iget-object v4, v0, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_11
    iget-boolean p1, p0, Ln3/b/a/v;->p:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Ln3/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_12

    .line 57
    invoke-static {p1}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object p1

    invoke-virtual {p1, v3}, Ln3/k/i/z;->g(F)Ln3/k/i/z;

    .line 58
    iget-boolean v3, v0, Ln3/b/e/g;->e:Z

    if-nez v3, :cond_12

    .line 59
    iget-object v3, v0, Ln3/b/e/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_12
    sget-object p1, Ln3/b/a/v;->A:Landroid/view/animation/Interpolator;

    .line 61
    iget-boolean v3, v0, Ln3/b/e/g;->e:Z

    if-nez v3, :cond_13

    .line 62
    iput-object p1, v0, Ln3/b/e/g;->c:Landroid/view/animation/Interpolator;

    :cond_13
    if-nez v3, :cond_14

    .line 63
    iput-wide v1, v0, Ln3/b/e/g;->b:J

    .line 64
    :cond_14
    iget-object p1, p0, Ln3/b/a/v;->x:Ln3/k/i/a0;

    if-nez v3, :cond_15

    .line 65
    iput-object p1, v0, Ln3/b/e/g;->d:Ln3/k/i/a0;

    .line 66
    :cond_15
    iput-object v0, p0, Ln3/b/a/v;->u:Ln3/b/e/g;

    .line 67
    invoke-virtual {v0}, Ln3/b/e/g;->b()V

    goto :goto_4

    .line 68
    :cond_16
    iget-object p1, p0, Ln3/b/a/v;->x:Ln3/k/i/a0;

    invoke-interface {p1, v7}, Ln3/k/i/a0;->b(Landroid/view/View;)V

    :cond_17
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/b/f/v;->u4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/b/a/v;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ln3/b/a/v;->l:Z

    .line 3
    iget-object v0, p0, Ln3/b/a/v;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Ln3/b/a/v;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/b/a/a$b;

    invoke-interface {v2, p1}, Ln3/b/a/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->B4()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    iget-object v1, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 4
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ln3/b/a/v;->b:Landroid/content/Context;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    iput-object v0, p0, Ln3/b/a/v;->b:Landroid/content/Context;

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/b/a/v;->b:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/a/v;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ln3/b/a/v;->q:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ln3/b/a/v;->G(Z)V

    :cond_0
    return-void
.end method

.method public h(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/v;->F(Z)V

    return-void
.end method

.method public j(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, v0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 4
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 6
    invoke-virtual {v0, p1, p2, v1}, Ln3/b/e/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/a/v;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Ln3/b/a/v;->E(II)V

    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Ln3/b/a/v;->E(II)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Ln3/b/a/v;->E(II)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Ln3/b/a/v;->E(II)V

    return-void
.end method

.method public q(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->x4(I)V

    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->K4(I)V

    return-void
.end method

.method public t(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->D4(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public u(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->H4(Z)V

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/b/a/v;->v:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/b/a/v;->u:Ln3/b/e/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ln3/b/e/g;->a()V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->t4(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
