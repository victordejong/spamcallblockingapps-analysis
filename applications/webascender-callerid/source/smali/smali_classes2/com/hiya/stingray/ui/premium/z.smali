.class public final Lcom/hiya/stingray/ui/premium/z;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/premium/upsell/h;
.implements Lcom/hiya/stingray/ui/premium/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/z$a;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/premium/upsell/g;

.field public m:Lcom/hiya/stingray/ui/login/o;

.field public n:Lcom/hiya/stingray/ui/premium/upsell/b;

.field public o:Lcom/hiya/stingray/manager/x3;

.field public p:Lcom/hiya/stingray/ui/premium/x;

.field public q:Lcom/hiya/stingray/manager/g3;

.field private final r:Lcom/hiya/stingray/ui/premium/upsell/i;

.field private s:Z

.field private t:Lcom/hiya/stingray/ui/premium/z$a;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/i;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/upsell/i;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->r:Lcom/hiya/stingray/ui/premium/upsell/i;

    return-void
.end method


# virtual methods
.method public B()Lcom/hiya/stingray/ui/premium/upsell/h$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/h$b;->SOFT_PAYWALL2:Lcom/hiya/stingray/ui/premium/upsell/h$b;

    return-object v0
.end method

.method public T0(Lcom/hiya/stingray/t/e0;)V
    .locals 0

    return-void
.end method

.method public U()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public W(Lcom/hiya/stingray/manager/u3$i;Lcom/hiya/stingray/manager/u3$i;Z)V
    .locals 4

    const-string v0, "monthly"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annual"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->b(Z)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->V3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "silverPriceTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "context!!"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->p1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "goldPriceTv"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/premium/z;->s:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/premium/z;->s:Z

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/z;->p:Lcom/hiya/stingray/ui/premium/x;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/ui/premium/x;->c(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "softPaywallAnalytics"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 8
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method public W0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "loadingView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v0, 0x7f1102c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->u:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/z;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->t:Lcom/hiya/stingray/ui/premium/z$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hiya/stingray/ui/premium/z$a;->g()V

    return-void

    :cond_0
    const-string v0, "softPaywallCallback"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->r:Lcom/hiya/stingray/ui/premium/upsell/i;

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/i;->b(Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/premium/upsell/g;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g1()Lcom/hiya/stingray/ui/premium/upsell/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->n:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/premium/upsell/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v0, 0x7f1102a9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i1()Lcom/hiya/stingray/ui/premium/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->p:Lcom/hiya/stingray/ui/premium/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "softPaywallAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->m:Lcom/hiya/stingray/ui/login/o;

    const-string v1, "permissionHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->n:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/b;->f()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->m:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/z;->m:Lcom/hiya/stingray/ui/login/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1773

    .line 5
    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "analytics"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->H()V

    :goto_0
    return-void

    :cond_5
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const-string v1, "presenter"

    const/16 v2, 0x1f47

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/premium/upsell/g;->E()V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/z;->r:Lcom/hiya/stingray/ui/premium/upsell/i;

    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/hiya/stingray/ui/premium/upsell/i;->a(IILandroid/content/Intent;Lcom/hiya/stingray/ui/premium/upsell/g;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/hiya/stingray/ui/premium/z$a;

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/z;->t:Lcom/hiya/stingray/ui/premium/z$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->s0(Lcom/hiya/stingray/ui/premium/z;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c008a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/z;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->o()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/z;->m:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    new-instance v6, Lcom/hiya/stingray/ui/premium/z$b;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/premium/z$b;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void

    :cond_0
    const-string p1, "permissionHandler"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->b(Z)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/premium/upsell/g;->p()V

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/z;->q:Lcom/hiya/stingray/manager/g3;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/manager/g3;->j(Z)V

    return-void

    :cond_0
    const-string v0, "paywallManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/z;->o:Lcom/hiya/stingray/manager/x3;

    const/4 v0, 0x0

    const-string v1, "remoteConfigManager"

    if-eqz p2, :cond_3

    const-string v2, "premium_monthly_price"

    invoke-virtual {p2, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f1102a2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget v2, Lcom/hiya/stingray/o;->V3:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "silverPriceTv"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget p1, Lcom/hiya/stingray/o;->p1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "goldPriceTv"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/z;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v3, :cond_2

    const-string v1, "premium_annual_price"

    invoke-virtual {v3, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/z;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->G:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lcom/hiya/stingray/ui/premium/z$c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/z$c;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->U3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/hiya/stingray/ui/premium/z$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/z$d;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget p2, Lcom/hiya/stingray/o;->o1:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/premium/z$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/z$e;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->q3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/hiya/stingray/ui/premium/z$f;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/z$f;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Lcom/hiya/stingray/ui/premium/z$j;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/z$j;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/hiya/stingray/ui/premium/z$g;

    invoke-direct {v2, p0, v1}, Lcom/hiya/stingray/ui/premium/z$g;-><init>(Lcom/hiya/stingray/ui/premium/z;Lkotlin/w/b/l;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lcom/hiya/stingray/ui/premium/z$h;

    invoke-direct {p2, p0, v1}, Lcom/hiya/stingray/ui/premium/z$h;-><init>(Lcom/hiya/stingray/ui/premium/z;Lkotlin/w/b/l;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/z;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/premium/z$i;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/z$i;-><init>(Lcom/hiya/stingray/ui/premium/z;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 15
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public y0()Ljava/lang/String;
    .locals 1

    const-string v0, "soft_paywall"

    return-object v0
.end method
