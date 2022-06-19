.class public final Lcom/hiya/stingray/ui/local/common/g;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/n$o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/common/g$a;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/manager/e1;

.field private m:Landroidx/fragment/app/Fragment;

.field private n:Z

.field private o:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method private final l1(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v2, "childFragmentManager"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/n;->o0()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/n;->n0(I)Landroidx/fragment/app/n$k;

    move-result-object v1

    const-string v2, "childFragmentManager.getBackStackEntryAt(0)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroidx/fragment/app/n$k;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/n;->X0(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/n;->W0()V

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public static synthetic n1(Lcom/hiya/stingray/ui/local/common/g;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/local/common/g;->m1(Landroidx/fragment/app/Fragment;ZZ)V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/g;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final f1()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/g;->l:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g1()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/g;->m:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final h1()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/common/g;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Ljava/util/List;

    move-result-object v0

    const-string v1, "childFragmentManager.fragments"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final i1(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "fragmentClass"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/n;->o0()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/n;->o0()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->n0(I)Landroidx/fragment/app/n$k;

    move-result-object v0

    const-string v1, "childFragmentManager.get\u2026.backStackEntryCount - 1)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/fragment/app/n$k;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->h1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/local/common/g$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/hiya/stingray/ui/local/common/g$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/common/g$a;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/common/g;->l1(Z)Z

    move-result v0

    return v0
.end method

.method public final k1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->h1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/local/common/g$a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/hiya/stingray/ui/local/common/g$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/common/g$a;->J()V

    :cond_1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/common/g;->l1(Z)Z

    return-void
.end method

.method public final m1(Landroidx/fragment/app/Fragment;ZZ)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    const v1, 0x7f090126

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    const-string v1, "childFragmentManager.beg\u2026R.id.container, fragment)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    :cond_0
    if-eqz p3, :cond_1

    const/16 p1, 0x1001

    .line 3
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->v(I)Landroidx/fragment/app/y;

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/y;->j()I

    return-void
.end method

.method public final o1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/common/g$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/common/g$b;-><init>(Lcom/hiya/stingray/ui/local/common/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->e(Lcom/hiya/stingray/ui/local/common/g;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/common/g;->n:Z

    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->o1()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00bb

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/g;->m:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/ui/local/common/g;->n1(Lcom/hiya/stingray/ui/local/common/g;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/n;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/fragment/app/n;->i(Landroidx/fragment/app/n$o;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->Z0()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/local/common/g;->n:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/common/g;->l1(Z)Z

    return-void
.end method

.method public final p1(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/g;->m:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->h1()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/common/g;->o1()V

    :cond_1
    return-void
.end method
