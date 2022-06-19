.class public final Lcom/hiya/stingray/ui/premium/i;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/premium/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/i$c;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/premium/l;

.field public m:Lcom/hiya/stingray/manager/u3;

.field public n:Lcom/hiya/stingray/ui/premium/j;

.field public o:Lcom/hiya/stingray/manager/s2;

.field public p:Lcom/hiya/stingray/manager/x3;

.field public q:Lcom/hiya/stingray/util/b0;

.field private final r:Lkotlin/g;

.field private s:Z

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/premium/i$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/i$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    const-class v1, Lcom/hiya/stingray/ui/stats/c;

    invoke-static {v1}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/premium/i$b;

    invoke-direct {v2, v0}, Lcom/hiya/stingray/ui/premium/i$b;-><init>(Lkotlin/w/b/a;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/fragment/app/d0;->a(Landroidx/fragment/app/Fragment;Lkotlin/a0/b;Lkotlin/w/b/a;Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->r:Lkotlin/g;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/premium/i;->s:Z

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/premium/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->n1()V

    return-void
.end method

.method private final l1()Lcom/hiya/stingray/ui/stats/c;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->r:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/c;

    return-object v0
.end method

.method private final m1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->q:Lcom/hiya/stingray/util/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-class v2, Lcom/hiya/stingray/manager/i2$b;

    const/4 v3, 0x1

    sget-object v4, Lcom/hiya/stingray/ui/premium/i$d;->f:Lcom/hiya/stingray/ui/premium/i$d;

    invoke-virtual {v0, v2, v3, v4}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i2$b;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hiya/stingray/manager/i2$b$a;->SHOW_AUTO_BLOCKING_SETTINGS:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->n1()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "sticky"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final n1()V
    .locals 8

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/premium/i$c;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f11029a

    .line 2
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f11029b

    .line 3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {v2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Boolean;

    .line 5
    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

    const-string v6, "presenter"

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/premium/l;->u()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/premium/l;->v()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v5

    .line 7
    invoke-static {v1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v3, Lcom/hiya/stingray/ui/premium/i$h;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/premium/i$h;-><init>(Lcom/hiya/stingray/ui/premium/i;)V

    .line 9
    invoke-direct {v0, p0, v2, v1, v3}, Lcom/hiya/stingray/ui/premium/i$c;-><init>(Lcom/hiya/stingray/ui/premium/i;Ljava/util/List;Ljava/util/List;Lkotlin/w/b/p;)V

    .line 10
    new-instance v1, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v1, v2}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11029c

    .line 11
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/b$a;->p(I)Landroidx/appcompat/app/b$a;

    .line 12
    sget-object v2, Lcom/hiya/stingray/ui/premium/i$i;->f:Lcom/hiya/stingray/ui/premium/i$i;

    invoke-virtual {v1, v0, v4, v2}, Landroidx/appcompat/app/b$a;->o(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    const v2, 0x7f1101d5

    .line 13
    new-instance v3, Lcom/hiya/stingray/ui/premium/i$j;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/premium/i$j;-><init>(Lcom/hiya/stingray/ui/premium/i;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 14
    invoke-virtual {v1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v1

    const-string v2, "AlertDialog.Builder(acti\u2026                .create()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/i$c;->b(Landroidx/appcompat/app/b;)V

    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v7

    .line 18
    :cond_1
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 19
    :cond_2
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public A(I)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->E1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "identifiedCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public C0(I)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->A:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blockedCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public G0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/premium/i;->s:Z

    const/4 v1, 0x0

    const-string v2, "blockingSetupInfo"

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/hiya/stingray/o;->D:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 3
    iput-boolean v1, p0, Lcom/hiya/stingray/ui/premium/i;->s:Z

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->D:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 5
    :goto_0
    sget v0, Lcom/hiya/stingray/o;->E:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "blockingSetupStatus"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->C:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "blockingSetup"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x11

    goto :goto_3

    :cond_3
    const/16 p1, 0x13

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setGravity(I)V

    return-void
.end method

.method public I0(I)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->c2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "lookedUpCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public S0(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    sget v3, Lcom/hiya/stingray/o;->e3:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "providerInfo"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 2
    sget v4, Lcom/hiya/stingray/o;->i4:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, "subscriptionType"

    invoke-static {v4, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v2, v1

    invoke-static {v4, v2}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f110298

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "loadingView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->t:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/i;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/premium/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->n:Lcom/hiya/stingray/ui/premium/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i1()Lcom/hiya/stingray/manager/s2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->o:Lcom/hiya/stingray/manager/s2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "experimentManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j1()Lcom/hiya/stingray/ui/premium/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k0(Lcom/hiya/stingray/t/d1;)V
    .locals 1

    const-string v0, "subscriptionInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcom/hiya/stingray/o;->i4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->m:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "premiumManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final k1()Lcom/hiya/stingray/manager/x3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i;->p:Lcom/hiya/stingray/manager/x3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->u(Lcom/hiya/stingray/ui/premium/i;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

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

    const p3, 0x7f0c0084

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/i;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->m1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/l;->w()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->l1()Lcom/hiya/stingray/ui/stats/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c;->h()V

    .line 4
    sget p1, Lcom/hiya/stingray/o;->C:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/premium/i$e;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/i$e;-><init>(Lcom/hiya/stingray/ui/premium/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lcom/hiya/stingray/o;->O4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string v0, "viewStats"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/premium/i$f;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/i$f;-><init>(Lcom/hiya/stingray/ui/premium/i;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->l1()Lcom/hiya/stingray/ui/stats/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c;->g()Landroidx/lifecycle/t;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/ui/premium/i$g;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/i$g;-><init>(Lcom/hiya/stingray/ui/premium/i;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i;->n:Lcom/hiya/stingray/ui/premium/j;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/j;->c()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i;->l:Lcom/hiya/stingray/ui/premium/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/l;->w()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/i;->l1()Lcom/hiya/stingray/ui/stats/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c;->h()V

    goto :goto_0

    :cond_0
    const-string p1, "presenter"

    .line 5
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "analytics"

    .line 6
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
