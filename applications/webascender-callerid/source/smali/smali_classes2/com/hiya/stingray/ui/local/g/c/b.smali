.class public final Lcom/hiya/stingray/ui/local/g/c/b;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field public l:Lcom/hiya/stingray/manager/o4/a;

.field public m:Lcom/hiya/stingray/ui/local/g/c/a;

.field private n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->n:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/g/c/b;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final g1()Lcom/hiya/stingray/ui/local/g/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "categoriesAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h1()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/c/b;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v0, "toolBar"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "activity!!"

    invoke-static {v2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110184

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.lc_categories_title)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->X:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/c/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "categoriesRecyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    const-string v2, "categoriesAdapter"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/hiya/stingray/ui/local/g/c/b$a;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/local/g/c/b$a;-><init>(Lcom/hiya/stingray/ui/local/g/c/b;)V

    invoke-virtual {v0, v4}, Lcom/hiya/stingray/ui/local/g/c/a;->g(Lkotlin/w/b/l;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/c/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/c/b;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/c/b;->l:Lcom/hiya/stingray/manager/o4/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o4/a;->f()Li/c/b0/b/v;

    move-result-object p1

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 8
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/hiya/stingray/ui/local/g/c/b$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/g/c/b$b;-><init>(Lcom/hiya/stingray/ui/local/g/c/b;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 11
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/g/c/b;->h1()V

    return-void

    :cond_0
    const-string p1, "localManager"

    .line 12
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 13
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->K(Lcom/hiya/stingray/ui/local/g/c/b;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00ad

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/g/c/b;->Z0()V

    return-void
.end method
