.class public final Lcom/hiya/stingray/ui/local/settings/n;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field public l:Lcom/hiya/stingray/ui/local/settings/p;

.field public m:Lcom/hiya/stingray/manager/e1;

.field public n:Lcom/hiya/stingray/util/a0;

.field public o:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

.field public p:Lcom/hiya/stingray/manager/q1;

.field public q:Lcom/hiya/stingray/util/b0;

.field public r:Lcom/hiya/stingray/manager/d3;

.field public s:Lcom/hiya/stingray/manager/s2;

.field private final t:Ljava/lang/String;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, "settings"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->t:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/settings/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/settings/n;->i1(Ljava/lang/String;)V

    return-void
.end method

.method private final i1(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->m:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "options_item"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "settings"

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "navigate"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void

    :cond_0
    const-string p1, "analyticsManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final j1()V
    .locals 8

    .line 1
    sget v0, Lcom/hiya/stingray/o;->l:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "appBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const-string v1, "appBar.toolBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11032a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->r:Lcom/hiya/stingray/manager/d3;

    const/4 v1, 0x0

    const-string v2, "onBoardingManager"

    if-eqz v0, :cond_7

    sget-object v3, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/manager/d3;->j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;

    move-result-object v0

    .line 3
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/stingray/manager/d3$a;

    .line 5
    iget-object v7, p0, Lcom/hiya/stingray/ui/local/settings/n;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v6}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    const/4 v4, 0x1

    .line 6
    :cond_5
    sget v0, Lcom/hiya/stingray/o;->m3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "recommendedSettingsContainer"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v4, 0x1

    invoke-static {v0, v2}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->l3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/hiya/stingray/ui/local/settings/n$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/settings/n$a;-><init>(Lcom/hiya/stingray/ui/local/settings/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->P:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/hiya/stingray/ui/local/settings/n$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/settings/n$b;-><init>(Lcom/hiya/stingray/ui/local/settings/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->O:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "callScreenerContainer"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/settings/n;->p:Lcom/hiya/stingray/manager/q1;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/q1;->l()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "callScreenerManager.isCallScreenerSupported"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->N:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/n$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/n$c;-><init>(Lcom/hiya/stingray/ui/local/settings/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v0, Lcom/hiya/stingray/o;->y1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/n$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/n$d;-><init>(Lcom/hiya/stingray/ui/local/settings/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget v0, Lcom/hiya/stingray/o;->a:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/n;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/n$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/n$e;-><init>(Lcom/hiya/stingray/ui/local/settings/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    const-string v0, "callScreenerManager"

    .line 13
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_7
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->t:Ljava/lang/String;

    return-object v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->u:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->u:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/n;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/n;->o:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callSettingsFragment"

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

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->a0(Lcom/hiya/stingray/ui/local/settings/n;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n;->l:Lcom/hiya/stingray/ui/local/settings/p;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "settingsPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/n;->Z0()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/n;->j1()V

    return-void
.end method
