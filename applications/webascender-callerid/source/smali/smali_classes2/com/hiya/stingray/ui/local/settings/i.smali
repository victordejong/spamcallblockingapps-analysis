.class public abstract Lcom/hiya/stingray/ui/local/settings/i;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field public l:Lcom/hiya/stingray/ui/local/settings/m;

.field public m:Lcom/hiya/stingray/ui/local/settings/j;

.field public n:Lcom/hiya/stingray/manager/o2;

.field public o:Lcom/hiya/stingray/manager/c4;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->p:Ljava/util/List;

    return-void
.end method

.method private final g1(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->l:Lcom/hiya/stingray/ui/local/settings/m;

    const-string v1, "settingsAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/settings/m;->f(Ljava/util/List;)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v9, "context!!"

    invoke-static {v4, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f06019a

    const v6, 0x7f0c00c0

    const v7, 0x7f0903bb

    .line 3
    iget-object v8, p0, Lcom/hiya/stingray/ui/local/settings/i;->l:Lcom/hiya/stingray/ui/local/settings/m;

    if-eqz v8, :cond_3

    move-object v3, v0

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    sget-object v1, Lcom/hiya/stingray/t/a1;->j:Lcom/hiya/stingray/t/a1$a;

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/a1$a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/i;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "recyclerView"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/i;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hiya/stingray/ui/common/o;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0700ed

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 10
    invoke-direct {v4, v5, v2, v0}, Lcom/hiya/stingray/ui/common/o;-><init>(Landroid/content/Context;ILcom/hiya/stingray/ui/common/n;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v4, v0}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v4, v2}, Lcom/hiya/stingray/ui/common/o;->h(Z)V

    .line 13
    invoke-virtual {v4, v0}, Lcom/hiya/stingray/ui/common/o;->g(Z)V

    .line 14
    invoke-static {v1, v4}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/settings/i;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_0
    return-void

    .line 16
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 17
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 18
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 20
    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final setupRecyclerView()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/settings/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->l:Lcom/hiya/stingray/ui/local/settings/m;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hiya/stingray/ui/local/settings/i$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/settings/i$a;-><init>(Lcom/hiya/stingray/ui/local/settings/i;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/settings/m;->g(Lkotlin/w/b/p;)V

    return-void

    :cond_0
    const-string v0, "settingsAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->q:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/i;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final h1()Lcom/hiya/stingray/manager/o2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->n:Lcom/hiya/stingray/manager/o2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceUserInfoManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->p:Ljava/util/List;

    return-object v0
.end method

.method public final j1()Lcom/hiya/stingray/manager/c4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/i;->o:Lcom/hiya/stingray/manager/c4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "settingsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k1(Lcom/hiya/stingray/t/a1;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "setting"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/t/a1;->j(Ljava/lang/Boolean;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->g()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->f()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/i;->n:Lcom/hiya/stingray/manager/o2;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/a1;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/hiya/stingray/manager/o2;->F(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_2
    const-string p1, "deviceUserInfoManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/i;->m:Lcom/hiya/stingray/ui/local/settings/j;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->c1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/hiya/stingray/ui/local/settings/j;->c(Lcom/hiya/stingray/t/a1;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "genericSettingsFragmentAnalytics"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public l1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/i;->p:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->i1()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hiya/stingray/t/a1;

    .line 5
    invoke-virtual {v2}, Lcom/hiya/stingray/t/a1;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/t/a1;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/a1;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/settings/i;->n:Lcom/hiya/stingray/manager/o2;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/t/a1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/o2;->j(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/a1;->j(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_3
    const-string p1, "deviceUserInfoManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->i1()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/settings/i;->g1(Ljava/util/List;)V

    return-void
.end method

.method public abstract m1()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->m1()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/settings/i;->setupRecyclerView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->Q(Lcom/hiya/stingray/ui/local/settings/i;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0078

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/i;->Z0()V

    return-void
.end method
