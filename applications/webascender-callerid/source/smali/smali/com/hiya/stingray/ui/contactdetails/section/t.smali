.class public Lcom/hiya/stingray/ui/contactdetails/section/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/section/n;


# instance fields
.field private final a:Lcom/hiya/stingray/manager/x1;

.field private final b:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/x1;Li/c/b0/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/t;->a:Lcom/hiya/stingray/manager/x1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/t;->b:Li/c/b0/c/a;

    return-void
.end method

.method private c(Lcom/hiya/stingray/t/d0;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/d0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->k()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v;->k()Lcom/google/common/collect/x0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic d(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/t;->h(Landroid/content/Context;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic f(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to fetch name to photo map"

    .line 1
    invoke-static {p4, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/hiya/stingray/ui/contactdetails/section/t;->c(Lcom/hiya/stingray/t/d0;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/t;->h(Landroid/content/Context;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V

    return-void
.end method

.method private h(Landroid/content/Context;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/f0;

    invoke-virtual {v0, p3}, Lcom/hiya/stingray/ui/contactdetails/f0;->e(Ljava/util/Map;)V

    .line 2
    new-instance p3, Lcom/hiya/stingray/ui/common/p;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p3, p1, v0}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p3, p1}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    .line 5
    iget-object p1, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 6
    iget-object p1, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

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

    const v1, 0x7f0c004a

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 4

    .line 1
    move-object p3, p1

    check-cast p3, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;

    .line 2
    iget-object v0, p3, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sectionText:Landroid/widget/TextView;

    const v1, 0x7f1100ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p3, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    iget-object v0, p3, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    iget-object v0, p3, Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;->sharedContactsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/f0;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/ui/contactdetails/f0;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/t;->a:Lcom/hiya/stingray/manager/x1;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x1;->c(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/section/e;

    invoke-direct {v1, p0, p1, p3}, Lcom/hiya/stingray/ui/contactdetails/section/e;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/t;Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;)V

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/section/f;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/f;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/t;Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Lcom/hiya/stingray/t/d0;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/t;->b:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public synthetic e(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/t;->d(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic g(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/ui/contactdetails/section/t;->f(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/contactdetails/viewholder/MultiContactsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V

    return-void
.end method
