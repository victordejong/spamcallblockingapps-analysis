.class public Ln3/b/a/v$d;
.super Ln3/b/e/a;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ln3/b/e/i/g;

.field public e:Ln3/b/e/a$a;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ln3/b/a/v;


# direct methods
.method public constructor <init>(Ln3/b/a/v;Landroid/content/Context;Ln3/b/e/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    invoke-direct {p0}, Ln3/b/e/a;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/b/a/v$d;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    .line 4
    new-instance p1, Ln3/b/e/i/g;

    invoke-direct {p1, p2}, Ln3/b/e/i/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Ln3/b/e/i/g;->l:I

    .line 6
    iput-object p1, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    .line 7
    iput-object p0, p1, Ln3/b/e/i/g;->e:Ln3/b/e/i/g$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Ln3/b/e/a$a;->sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ln3/b/e/i/g;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/b/a/v$d;->i()V

    .line 3
    iget-object p1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object p1, p1, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    iget-object p1, p1, Ln3/b/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->p()Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v1, v0, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Ln3/b/a/v;->q:Z

    iget-boolean v2, v0, Ln3/b/a/v;->r:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    if-nez v3, :cond_3

    .line 3
    iput-object p0, v0, Ln3/b/a/v;->j:Ln3/b/e/a;

    .line 4
    iget-object v1, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    iput-object v1, v0, Ln3/b/a/v;->k:Ln3/b/e/a$a;

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    invoke-interface {v0, p0}, Ln3/b/e/a$a;->zn(Ln3/b/e/a;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    .line 7
    iget-object v1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    invoke-virtual {v1, v4}, Ln3/b/a/v;->C(Z)V

    .line 8
    iget-object v1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v1, v1, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 9
    iget-object v2, v1, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v2, :cond_4

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 11
    :cond_4
    iget-object v1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v1, v1, Ln3/b/a/v;->e:Ln3/b/f/v;

    invoke-interface {v1}, Ln3/b/f/v;->G4()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 12
    iget-object v1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v2, v1, Ln3/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Ln3/b/a/v;->w:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 13
    iget-object v1, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iput-object v0, v1, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    return-object v0
.end method

.method public f()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Ln3/b/e/f;

    iget-object v1, p0, Ln3/b/a/v$d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Ln3/b/e/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->i:Ln3/b/a/v$d;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {v0}, Ln3/b/e/i/g;->A()V

    .line 3
    :try_start_0
    iget-object v0, p0, Ln3/b/a/v$d;->e:Ln3/b/e/a$a;

    iget-object v1, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-interface {v0, p0, v1}, Ln3/b/e/a$a;->gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {v0}, Ln3/b/e/i/g;->z()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln3/b/a/v$d;->d:Ln3/b/e/i/g;

    invoke-virtual {v1}, Ln3/b/e/i/g;->z()V

    .line 5
    throw v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/b/a/v$d;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/b/a/v$d;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ln3/b/e/a;->b:Z

    .line 2
    iget-object v0, p0, Ln3/b/a/v$d;->g:Ln3/b/a/v;

    iget-object v0, v0, Ln3/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
