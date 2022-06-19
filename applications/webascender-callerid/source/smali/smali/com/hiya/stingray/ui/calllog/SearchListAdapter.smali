.class public Lcom/hiya/stingray/ui/calllog/SearchListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/calllog/SearchListAdapter$EmptyInitialResultsViewHolder;,
        Lcom/hiya/stingray/ui/calllog/SearchListAdapter$NoResultsViewHolder;,
        Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private final f:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/hiya/stingray/ui/local/search/f;

.field private j:Lcom/hiya/stingray/manager/u3;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/hiya/stingray/ui/calllog/w;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/local/search/f;Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->f:Li/c/b0/k/b;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->g:Li/c/b0/k/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->h:Z

    .line 5
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->i:Lcom/hiya/stingray/ui/local/search/f;

    .line 6
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->j:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic e(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->f:Li/c/b0/k/b;

    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->n:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic f(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->e(ILandroid/view/View;)V

    return-void
.end method

.method public g()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->f:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/calllog/w;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->j:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/hiya/stingray/ui/calllog/w;-><init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Ljava/util/List;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public h()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->g:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->h:Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->n:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->g:Li/c/b0/k/b;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->INITIAL:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;->QUERY:Lcom/hiya/stingray/ui/calllog/SearchListAdapter$a;

    :goto_1
    invoke-virtual {p1, v0}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public l(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/calllog/w;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->j:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/hiya/stingray/ui/calllog/w;-><init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Ljava/util/List;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->o:Ljava/util/List;

    .line 6
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->l:Ljava/util/List;

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/calllog/w;->f(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->m:Lcom/hiya/stingray/ui/calllog/w;

    iget-object p2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->l:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/calllog/w;->e(Ljava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Lcom/hiya/stingray/ui/calllog/viewholder/a;

    .line 3
    iget-object v0, p1, Lcom/hiya/stingray/ui/calllog/viewholder/a;->a:Lcom/hiya/stingray/ui/calllog/SearchItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->i:Lcom/hiya/stingray/ui/local/search/f;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->i(Lcom/hiya/stingray/ui/local/search/f;)V

    .line 4
    iget-object v0, p1, Lcom/hiya/stingray/ui/calllog/viewholder/a;->a:Lcom/hiya/stingray/ui/calllog/SearchItemView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->k:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/n0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->n:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->h:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/ui/calllog/SearchItemView;->g(Lcom/hiya/stingray/t/n0;Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p1, Lcom/hiya/stingray/ui/calllog/viewholder/a;->a:Lcom/hiya/stingray/ui/calllog/SearchItemView;

    iget-object p1, p1, Lcom/hiya/stingray/ui/calllog/SearchItemView;->searchItemWithoutButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/hiya/stingray/ui/calllog/q;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/calllog/q;-><init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00f7

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$NoResultsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$NoResultsViewHolder;-><init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c006d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$EmptyInitialResultsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter$EmptyInitialResultsViewHolder;-><init>(Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Landroid/view/View;)V

    return-object p2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0123

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/hiya/stingray/ui/calllog/viewholder/a;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/calllog/viewholder/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
