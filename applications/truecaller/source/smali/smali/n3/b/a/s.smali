.class public Ln3/b/a/s;
.super Ln3/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/a/s$d;,
        Ln3/b/a/s$c;,
        Ln3/b/a/s$e;
    }
.end annotation


# instance fields
.field public a:Ln3/b/f/v;

.field public b:Z

.field public c:Landroid/view/Window$Callback;

.field public d:Z

.field public e:Z

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroidx/appcompat/widget/Toolbar$f;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ln3/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/b/a/s;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ln3/b/a/s$a;

    invoke-direct {v0, p0}, Ln3/b/a/s$a;-><init>(Ln3/b/a/s;)V

    iput-object v0, p0, Ln3/b/a/s;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln3/b/a/s$b;

    invoke-direct {v0, p0}, Ln3/b/a/s$b;-><init>(Ln3/b/a/s;)V

    iput-object v0, p0, Ln3/b/a/s;->h:Landroidx/appcompat/widget/Toolbar$f;

    .line 5
    new-instance v1, Ln3/b/f/t0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ln3/b/f/t0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    .line 6
    new-instance v1, Ln3/b/a/s$e;

    invoke-direct {v1, p0, p3}, Ln3/b/a/s$e;-><init>(Ln3/b/a/s;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ln3/b/a/s;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {p3, v1}, Ln3/b/f/v;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 9
    iget-object p1, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {p1, p2}, Ln3/b/f/v;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ln3/b/f/v;->setVisibility(I)V

    return-void
.end method

.method public final C()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln3/b/a/s;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    new-instance v1, Ln3/b/a/s$c;

    invoke-direct {v1, p0}, Ln3/b/a/s$c;-><init>(Ln3/b/a/s;)V

    new-instance v2, Ln3/b/a/s$d;

    invoke-direct {v2, p0}, Ln3/b/a/s$d;-><init>(Ln3/b/a/s;)V

    invoke-interface {v0, v1, v2}, Ln3/b/f/v;->L4(Ln3/b/e/i/m$a;Ln3/b/e/i/g$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/b/a/s;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->E4()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public D(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->B4()I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Ln3/b/f/v;->v4(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->d()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->u4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

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
    iget-boolean v0, p0, Ln3/b/a/s;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ln3/b/a/s;->e:Z

    .line 3
    iget-object v0, p0, Ln3/b/a/s;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Ln3/b/a/s;->f:Ljava/util/ArrayList;

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
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->B4()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ln3/b/f/v;->setVisibility(I)V

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->G4()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ln3/b/a/s;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->G4()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ln3/b/a/s;->g:Ljava/lang/Runnable;

    .line 3
    sget-object v2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public h(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->G4()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Ln3/b/a/s;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/b/a/s;->C()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public k(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {p1}, Ln3/b/f/v;->b()Z

    :cond_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->b()Z

    move-result v0

    return v0
.end method

.method public m(Z)V
    .locals 0

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
    invoke-virtual {p0, p1, v0}, Ln3/b/a/s;->D(II)V

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
    invoke-virtual {p0, p1, v0}, Ln3/b/a/s;->D(II)V

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
    invoke-virtual {p0, p1, v0}, Ln3/b/a/s;->D(II)V

    return-void
.end method

.method public q(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->G4()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->x4(I)V

    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->K4(I)V

    return-void
.end method

.method public t(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->D4(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public u(Z)V
    .locals 0

    return-void
.end method

.method public v(Z)V
    .locals 0

    return-void
.end method

.method public w(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->t4(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ln3/b/f/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ln3/b/f/v;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0, p1}, Ln3/b/f/v;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
