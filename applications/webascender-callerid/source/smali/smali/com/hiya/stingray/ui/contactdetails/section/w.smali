.class public Lcom/hiya/stingray/ui/contactdetails/section/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/section/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/e4;

.field private final c:Lcom/hiya/stingray/ui/contactdetails/v;

.field private final d:Lcom/hiya/stingray/ui/contactdetails/g0;

.field private final e:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/ui/contactdetails/v;Lcom/hiya/stingray/ui/contactdetails/g0;Li/c/b0/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->b:Lcom/hiya/stingray/manager/e4;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->c:Lcom/hiya/stingray/ui/contactdetails/v;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->d:Lcom/hiya/stingray/ui/contactdetails/g0;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->e:Li/c/b0/c/a;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p3, p1, p4}, Lcom/hiya/stingray/ui/contactdetails/section/w;->d(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->b:Lcom/hiya/stingray/manager/e4;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/manager/e4;->e(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/s/b;

    invoke-direct {p2}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 4
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/ui/contactdetails/section/k;

    invoke-direct {p2, p0, p3, p4}, Lcom/hiya/stingray/ui/contactdetails/section/k;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/w;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;)V

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/j;

    invoke-direct {v0, p0, p3, p4}, Lcom/hiya/stingray/ui/contactdetails/section/j;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/w;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->e:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private d(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;",
            "Lcom/hiya/stingray/t/d0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/w;->k(Landroid/content/Context;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private synthetic e(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/w;->d(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private synthetic g(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/w;->d(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private synthetic i(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)Lkotlin/r;
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/w;->l(Landroid/content/Context;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->c:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->t()V

    .line 3
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method private k(Landroid/content/Context;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;",
            "Lcom/hiya/stingray/t/d0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->d:Lcom/hiya/stingray/ui/contactdetails/g0;

    invoke-virtual {v2, p3}, Lcom/hiya/stingray/ui/contactdetails/g0;->d(Ljava/util/List;)V

    .line 3
    iget-object v2, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->spamCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->d:Lcom/hiya/stingray/ui/contactdetails/g0;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->sectionText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->sectionText:Landroid/widget/TextView;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    new-instance v1, Lcom/hiya/stingray/ui/common/p;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, p1, v2}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    .line 11
    iget-object p1, p2, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->spamCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->d:Lcom/hiya/stingray/ui/contactdetails/g0;

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/l;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/hiya/stingray/ui/contactdetails/section/l;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/w;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/contactdetails/g0;->e(Lkotlin/w/b/a;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->d:Lcom/hiya/stingray/ui/contactdetails/g0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private l(Landroid/content/Context;Ljava/util/List;Lcom/hiya/stingray/t/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/c1;",
            ">;",
            "Lcom/hiya/stingray/t/d0;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/contactdetails/reports_list/UserReportsListFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "spam_reports_list"

    .line 3
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p2, "CALL_LOG_ITEM"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    const v1, 0x7f0c004c

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;

    .line 2
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v1, -0x777778

    invoke-virtual {p3, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->sectionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->a:Landroid/content/Context;

    const v2, 0x7f110407

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->spamCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/w;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;->spamCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 7
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/w;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public synthetic f(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/w;->e(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/w;->g(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic j(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)Lkotlin/r;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/w;->i(Lcom/hiya/stingray/ui/contactdetails/viewholder/UserReportsViewHolder;Ljava/util/List;Lcom/hiya/stingray/t/d0;)Lkotlin/r;

    move-result-object p1

    return-object p1
.end method
