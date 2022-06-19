.class public final Lcom/hiya/stingray/ui/premium/n;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/premium/q;


# instance fields
.field public l:Lcom/hiya/stingray/manager/u3;

.field public m:Lcom/hiya/stingray/ui/premium/p;

.field private n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/n;->l:Lcom/hiya/stingray/manager/u3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hiya/stingray/ui/premium/i;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/i;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/hiya/stingray/ui/premium/b;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/b;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "activity!!"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v1

    const v2, 0x7f0902f9

    .line 4
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/y;->j()I

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_2
    const-string v0, "premiumManager"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/n;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->i0(Lcom/hiya/stingray/ui/premium/n;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/n;->m:Lcom/hiya/stingray/ui/premium/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0085

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/n;->Z0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/n;->m:Lcom/hiya/stingray/ui/premium/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/p;->t()V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->v0()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/s/k;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
