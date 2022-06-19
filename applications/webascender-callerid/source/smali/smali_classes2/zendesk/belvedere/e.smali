.class public Lzendesk/belvedere/e;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/e$c;,
        Lzendesk/belvedere/e$b;
    }
.end annotation


# instance fields
.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/o;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/e$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/e$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lzendesk/belvedere/m;

.field private j:Lzendesk/belvedere/b$c;

.field private k:Z

.field private l:Lzendesk/belvedere/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lzendesk/belvedere/e;->f:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/e;->h:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lzendesk/belvedere/e;->i:Lzendesk/belvedere/m;

    .line 6
    iput-object v1, p0, Lzendesk/belvedere/e;->j:Lzendesk/belvedere/b$c;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lzendesk/belvedere/e;->k:Z

    return-void
.end method

.method static synthetic Z0(Lzendesk/belvedere/e;)Lzendesk/belvedere/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/e;->j:Lzendesk/belvedere/b$c;

    return-object p0
.end method


# virtual methods
.method public a1(Lzendesk/belvedere/e$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b1(Lzendesk/belvedere/e$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->h:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/belvedere/e;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/e;->i:Lzendesk/belvedere/m;

    invoke-virtual {v0}, Lzendesk/belvedere/m;->dismiss()V

    :cond_0
    return-void
.end method

.method public d1()Lzendesk/belvedere/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/o;

    return-object v0
.end method

.method e1(Ljava/util/List;Lzendesk/belvedere/t$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/q;",
            ">;",
            "Lzendesk/belvedere/t$d;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->l:Lzendesk/belvedere/t;

    invoke-virtual {v0, p0, p1, p2}, Lzendesk/belvedere/t;->j(Landroidx/fragment/app/Fragment;Ljava/util/List;Lzendesk/belvedere/t$d;)V

    return-void
.end method

.method public f1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->i:Lzendesk/belvedere/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/e$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lzendesk/belvedere/e$b;->onDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method h1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/e$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lzendesk/belvedere/e$b;->onMediaDeselected(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method i1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/e$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lzendesk/belvedere/e$b;->onMediaSelected(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method j1(IIF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/e$c;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1, p2, p3}, Lzendesk/belvedere/e$c;->onScroll(IIF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/e$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lzendesk/belvedere/e$b;->onVisible()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method l1(Lzendesk/belvedere/m;Lzendesk/belvedere/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/e;->i:Lzendesk/belvedere/m;

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lzendesk/belvedere/e;->j:Lzendesk/belvedere/b$c;

    :cond_0
    return-void
.end method

.method m1(Lzendesk/belvedere/o;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lzendesk/belvedere/e;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public n1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/belvedere/e;->k:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzendesk/belvedere/a;->c(Landroid/content/Context;)Lzendesk/belvedere/a;

    move-result-object v1

    new-instance v5, Lzendesk/belvedere/e$a;

    invoke-direct {v5, p0}, Lzendesk/belvedere/e$a;-><init>(Lzendesk/belvedere/e;)V

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lzendesk/belvedere/a;->e(IILandroid/content/Intent;Lzendesk/belvedere/d;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 3
    new-instance p1, Lzendesk/belvedere/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lzendesk/belvedere/t;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzendesk/belvedere/e;->l:Lzendesk/belvedere/t;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/e;->i:Lzendesk/belvedere/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lzendesk/belvedere/m;->dismiss()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lzendesk/belvedere/e;->k:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lzendesk/belvedere/e;->k:Z

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/e;->l:Lzendesk/belvedere/t;

    invoke-virtual {v0, p0, p1, p2, p3}, Lzendesk/belvedere/t;->l(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method
