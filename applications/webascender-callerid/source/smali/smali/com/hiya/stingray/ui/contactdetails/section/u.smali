.class public Lcom/hiya/stingray/ui/contactdetails/section/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/section/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/o1;

.field private final c:Lcom/hiya/stingray/ui/common/error/e;

.field private final d:Lcom/hiya/stingray/util/a0;

.field private final e:Lcom/hiya/stingray/ui/contactdetails/v;

.field private final f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/ui/common/error/e;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/contactdetails/v;Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->b:Lcom/hiya/stingray/manager/o1;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->c:Lcom/hiya/stingray/ui/common/error/e;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->d:Lcom/hiya/stingray/util/a0;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    return-void
.end method

.method private c(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->b:Lcom/hiya/stingray/manager/o1;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/o1;->t(Ljava/util/List;I)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/i;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/i;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/section/g;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/g;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V

    .line 6
    invoke-virtual {p1, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method private synthetic d(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->l(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V

    return-void
.end method

.method private synthetic f(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->c:Lcom/hiya/stingray/ui/common/error/e;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/common/error/e;->g(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->d:Lcom/hiya/stingray/util/a0;

    new-instance v0, Lcom/hiya/stingray/t/e1/a;

    const-class v1, Lcom/hiya/stingray/ui/contactdetails/section/u;

    const-string v2, "Failed to get a call log data"

    invoke-direct {v0, v1, v2, p2}, Lcom/hiya/stingray/t/e1/a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic h(Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)Lkotlin/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->e:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/v;->r()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 3
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/u;->k(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/u;->k(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 9
    :goto_0
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method private j(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/common/n$c;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->a:Landroid/content/Context;

    const v3, 0x7f1102d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/hiya/stingray/ui/common/n;

    iget-object v5, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    const v6, 0x7f06019a

    const v7, 0x7f0c0067

    const v8, 0x7f0903bb

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 5
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/f0;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/common/n;)Lcom/hiya/stingray/ui/common/o;

    move-result-object v0

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    .line 9
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v0}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 10
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method private k(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "recent_list_phone"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    const-class p2, Lcom/hiya/stingray/ui/contactdetails/recentactivity/RecentActivitiesFragment;

    invoke-static {p1, v0, p2}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private l(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/d0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityLayout:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;->recentActivityLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6
    iget-object v4, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-interface {p2, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;->d(Ljava/util/List;)V

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;->f(Z)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/section/h;

    invoke-direct {v1, p0, p2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/h;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/u;Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;->e(Lkotlin/w/b/a;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/u;->f:Lcom/hiya/stingray/ui/contactdetails/recentactivity/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/contactdetails/d0;->PRIVATE:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/hiya/stingray/t/d0;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 3
    invoke-static {p3}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->l(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/contactdetails/section/u;->c(Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/section/u;->j(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)V

    return-void
.end method

.method public synthetic e(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->d(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public synthetic g(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->f(Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic i(Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)Lkotlin/r;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/u;->h(Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/viewholder/RecentActivityViewHolder;)Lkotlin/r;

    move-result-object p1

    return-object p1
.end method
