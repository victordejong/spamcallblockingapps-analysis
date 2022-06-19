.class public final Le/a/c/a/a/a/c;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

.field public final c:Le/a/c/h/h;

.field public final d:Le/a/b0/m/c/a;

.field public final e:Le/a/c/x/a;

.field public final f:Le/a/c/a/i/h;

.field public final g:Le/a/c/a/c/h/j;

.field public final h:Le/a/c/b/j;

.field public final i:Le/a/c/a/c/h/l/c;

.field public final j:Le/a/c/a/c/h/l/d;

.field public final k:Le/a/c/e/c;

.field public final l:Le/a/c/j/b;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/b/j;Le/a/c/a/c/h/l/c;Le/a/c/a/c/h/l/d;Le/a/c/e/c;Le/a/c/j/b;)V
    .locals 1

    const-string v0, "messageLocator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageInfoLoader"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolTipController"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentTransactionAdapter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentUpdatesAdapter"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplinkEnricher"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/c/h/l/b;

    invoke-direct {v0}, Le/a/c/a/c/h/l/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/a/a/c;->c:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/a/a/c;->d:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/a/a/c;->e:Le/a/c/x/a;

    iput-object p4, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    iput-object p5, p0, Le/a/c/a/a/a/c;->g:Le/a/c/a/c/h/j;

    iput-object p6, p0, Le/a/c/a/a/a/c;->h:Le/a/c/b/j;

    iput-object p7, p0, Le/a/c/a/a/a/c;->i:Le/a/c/a/c/h/l/c;

    iput-object p8, p0, Le/a/c/a/a/a/c;->j:Le/a/c/a/c/h/l/d;

    iput-object p9, p0, Le/a/c/a/a/a/c;->k:Le/a/c/e/c;

    iput-object p10, p0, Le/a/c/a/a/a/c;->l:Le/a/c/j/b;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    goto/16 :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    if-eqz v0, :cond_1

    sget p1, Lcom/truecaller/insights/ui/R$layout;->empty_business_item:I

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$f;

    if-eqz v0, :cond_2

    sget p1, Lcom/truecaller/insights/ui/R$layout;->empty_business_page_item:I

    goto :goto_1

    .line 5
    :cond_2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v1, "ViewHolder type not supported"

    if-eqz v0, :cond_7

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 6
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 7
    instance-of v0, p1, Le/a/c/a/l/b$g;

    if-eqz v0, :cond_3

    sget p1, Lcom/truecaller/insights/ui/R$layout;->upcoming_reminder_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_3
    instance-of v0, p1, Le/a/c/a/l/b$a;

    if-eqz v0, :cond_4

    sget p1, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_container_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_4
    instance-of p1, p1, Le/a/c/a/l/b$i;

    if-eqz p1, :cond_5

    sget p1, Lcom/truecaller/insights/ui/R$layout;->updates_container_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_7
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    if-eqz v0, :cond_8

    sget p1, Lcom/truecaller/insights/ui/R$layout;->banner_item:I

    goto :goto_1

    .line 13
    :cond_8
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$h;

    if-eqz v0, :cond_9

    sget p1, Lcom/truecaller/insights/ui/R$layout;->layout_mini_banner_item:I

    goto :goto_1

    .line 14
    :cond_9
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$g;

    if-eqz v0, :cond_a

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_sections_entry_point:I

    goto :goto_1

    .line 15
    :cond_a
    instance-of p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$c;

    if-eqz p1, :cond_b

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_finance_trx_hidden:I

    :goto_1
    return p1

    .line 16
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Le/a/c/a/a/a/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/a/a/a/a/a;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/a;->W4(Lcom/truecaller/insights/ui/models/AdapterItem$i;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/c/a/a/a/a/i;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/i;->O4(Lcom/truecaller/insights/ui/models/AdapterItem$e;)V

    goto/16 :goto_2

    .line 4
    :cond_1
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v1, "itemView"

    const-string v2, "item"

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 5
    iget-object p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 6
    instance-of v0, p1, Le/a/c/a/c/h/l/g;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/c/a/c/h/l/g;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpcomingItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/c/a/l/b$g;

    invoke-virtual {p1, p2}, Le/a/c/a/c/h/l/g;->W4(Le/a/c/a/l/b$g;)V

    goto/16 :goto_2

    .line 7
    :cond_2
    instance-of v0, p1, Le/a/c/a/a/a/a/m;

    if-eqz v0, :cond_3

    check-cast p1, Le/a/c/a/a/a/a/m;

    goto/16 :goto_2

    .line 8
    :cond_3
    instance-of v0, p1, Le/a/c/a/c/h/l/a;

    const-string v4, "itemView.context"

    if-eqz v0, :cond_5

    check-cast p1, Le/a/c/a/c/h/l/a;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceContainerItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/c/a/l/b$a;

    .line 9
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Le/a/c/a/c/h/l/a;->e:Le/a/c/a/g/a0;

    .line 11
    iget-object v2, v0, Le/a/c/a/g/a0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "recentTransactionRecyclerView"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    iget-object v6, p1, Le/a/c/a/c/h/l/a;->f:Le/a/c/a/c/h/l/c;

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, v0, Le/a/c/a/g/a0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Le/a/c/a/c/h/l/a;->f:Le/a/c/a/c/h/l/c;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 13
    iget-object v2, v0, Le/a/c/a/g/a0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 14
    iget-object v2, v0, Le/a/c/a/g/a0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ln3/b0/a/g;

    invoke-direct {v3}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 15
    iget-object v0, v0, Le/a/c/a/g/a0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Le/a/c/a/c/h/l/k/a;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v1, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/c/a/c/h/l/k/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 16
    :cond_4
    iget-object p1, p1, Le/a/c/a/c/h/l/a;->f:Le/a/c/a/c/h/l/c;

    .line 17
    iget-object p2, p2, Le/a/c/a/l/b$a;->b:Ljava/util/List;

    .line 18
    invoke-virtual {p1, p2}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 19
    :cond_5
    instance-of v0, p1, Le/a/c/a/c/h/l/j;

    if-eqz v0, :cond_7

    check-cast p1, Le/a/c/a/c/h/l/j;

    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpdatesContainerItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/c/a/l/b$i;

    .line 20
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p1, Le/a/c/a/c/h/l/j;->e:Le/a/c/a/g/e2;

    iget-object v0, v0, Le/a/c/a/g/e2;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v2

    iget-object v5, p1, Le/a/c/a/c/h/l/j;->f:Le/a/c/a/c/h/l/d;

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p1, Le/a/c/a/c/h/l/j;->f:Le/a/c/a/c/h/l/d;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 24
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 25
    new-instance v2, Ln3/b0/a/g;

    invoke-direct {v2}, Ln3/b0/a/g;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 26
    new-instance v2, Le/a/c/a/c/h/l/k/a;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v1, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/c/a/c/h/l/k/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 27
    :cond_6
    iget-object p1, p1, Le/a/c/a/c/h/l/j;->f:Le/a/c/a/c/h/l/d;

    .line 28
    iget-object p2, p2, Le/a/c/a/l/b$i;->b:Ljava/util/List;

    .line 29
    invoke-virtual {p1, p2}, Ln3/b0/a/p;->submitList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not implemented for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_8
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    move-object v5, p1

    check-cast v5, Le/a/c/a/a/a/a/c;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    .line 32
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p1, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.truecaller.common.ui.banner.DismissableBannerViewX"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;

    .line 34
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    iget v2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->e:I

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setPrimaryButtonText(Ljava/lang/String;)V

    .line 37
    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v2, Lcom/truecaller/insights/ui/R$id;->buttonSecondary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 38
    iget-object v6, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    const-string v7, "secondaryButton"

    if-eqz v6, :cond_9

    .line 39
    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 40
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    iget-object v6, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->f:Ljava/lang/Integer;

    .line 42
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setSecondaryButtonText(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_9
    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    iget v6, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->c:I

    .line 46
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "resources.getString(item.title)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setTitle(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    iget v6, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->d:I

    .line 49
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "resources.getString(item.subTitle)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setSubtitle(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    iget v6, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->b:I

    .line 52
    sget-object v8, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 v8, 0x0

    .line 53
    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 55
    new-instance v0, Ld2;

    invoke-direct {v0, v4, v5, p2}, Ld2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    .line 56
    new-instance v0, Ld2;

    invoke-direct {v0, v3, v5, p2}, Ld2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setSecondaryButtonCLickListener(Ls1/z/b/l;)V

    .line 57
    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 59
    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lcom/truecaller/insights/ui/R$attr;->tcx_textTertiary:I

    invoke-static {v6, v9}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 60
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 61
    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;

    .line 62
    iget v1, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->h:I

    .line 63
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->k:Ls1/z/b/a;

    if-eqz v0, :cond_a

    move v4, v3

    .line 66
    :cond_a
    invoke-virtual {p1, v4}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->a(Z)V

    .line 67
    new-instance v0, Ld2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v5, p2}, Ld2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/DismissableBannerViewX;->setDismissButtonClickListener(Ls1/z/b/l;)V

    .line 68
    iget-object p1, v5, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 69
    iget-wide v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->a:J

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 71
    iget-object p1, p2, Lcom/truecaller/insights/ui/models/AdapterItem$a;->g:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    .line 72
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v3, :cond_b

    goto/16 :goto_2

    :cond_b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "default_sms_banner"

    const-string v7, "default_sms"

    const-string v10, "important_tab"

    .line 73
    invoke-virtual/range {v5 .. v10}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "onboarding"

    const-string v7, "model_download_translation"

    const-string v10, "important_tab_banner"

    .line 74
    invoke-virtual/range {v5 .. v10}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 75
    :cond_d
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$h;

    if-eqz v0, :cond_e

    check-cast p1, Le/a/c/a/a/a/a/l;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$h;

    .line 76
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p1, Le/a/c/a/a/a/a/l;->e:Le/a/c/a/g/g1;

    .line 78
    iget-object p2, p1, Le/a/c/a/g/g1;->c:Lcom/truecaller/ui/view/TintedImageView;

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 79
    iget-object p2, p1, Le/a/c/a/g/g1;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object p1, p1, Le/a/c/a/g/g1;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 81
    :cond_e
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$g;

    if-eqz v0, :cond_13

    check-cast p1, Le/a/c/a/a/a/a/p;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$g;

    .line 82
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p2, p1, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    iget-object p2, p2, Le/a/c/a/g/r0;->e:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    iget-object v0, p1, Le/a/c/a/a/a/a/p;->e:Ls1/z/b/l;

    if-eqz v0, :cond_f

    new-instance v1, Le/a/c/a/a/a/a/q;

    invoke-direct {v1, v0}, Le/a/c/a/a/a/a/q;-><init>(Ls1/z/b/l;)V

    move-object v0, v1

    :cond_f
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p2, p1, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    iget-object p2, p2, Le/a/c/a/g/r0;->b:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    iget-object v0, p1, Le/a/c/a/a/a/a/p;->e:Ls1/z/b/l;

    if-eqz v0, :cond_10

    new-instance v1, Le/a/c/a/a/a/a/q;

    invoke-direct {v1, v0}, Le/a/c/a/a/a/a/q;-><init>(Ls1/z/b/l;)V

    move-object v0, v1

    :cond_10
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p1, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    iget-object p2, p2, Le/a/c/a/g/r0;->d:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    iget-object v0, p1, Le/a/c/a/a/a/a/p;->e:Ls1/z/b/l;

    if-eqz v0, :cond_11

    new-instance v1, Le/a/c/a/a/a/a/q;

    invoke-direct {v1, v0}, Le/a/c/a/a/a/a/q;-><init>(Ls1/z/b/l;)V

    move-object v0, v1

    :cond_11
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p2, p1, Le/a/c/a/a/a/a/p;->f:Le/a/c/a/g/r0;

    iget-object p2, p2, Le/a/c/a/g/r0;->c:Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    iget-object p1, p1, Le/a/c/a/a/a/a/p;->e:Ls1/z/b/l;

    if-eqz p1, :cond_12

    new-instance v0, Le/a/c/a/a/a/a/q;

    invoke-direct {v0, p1}, Le/a/c/a/a/a/a/q;-><init>(Ls1/z/b/l;)V

    move-object p1, v0

    :cond_12
    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 87
    :cond_13
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$c;

    if-eqz v0, :cond_15

    check-cast p1, Le/a/c/a/a/a/a/f;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$c;

    .line 88
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-boolean p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$c;->a:Z

    if-eqz p2, :cond_14

    .line 90
    iget-object p2, p1, Le/a/c/a/a/a/a/f;->e:Le/a/c/a/g/o0;

    iget-object p2, p2, Le/a/c/a/g/o0;->b:Landroid/widget/TextView;

    sget v0, Lcom/truecaller/insights/ui/R$string;->auto_hide_is_enabled:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 91
    :cond_14
    iget-object p2, p1, Le/a/c/a/a/a/a/f;->e:Le/a/c/a/g/o0;

    iget-object p2, p2, Le/a/c/a/g/o0;->b:Landroid/widget/TextView;

    sget v0, Lcom/truecaller/insights/ui/R$string;->auto_hide_is_disabled:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :goto_1
    iget-object p1, p1, Le/a/c/a/a/a/a/f;->f:Le/a/c/a/i/h;

    sget-object p2, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 93
    sget-object p2, Le/a/c/a/c/i/a;->h:Le/a/c/r/d/b;

    .line 94
    invoke-interface {p1, p2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 95
    :cond_15
    :goto_2
    iget-object p1, p0, Le/a/c/a/a/a/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_16

    new-instance p2, Le/a/c/a/a/a/b;

    invoke-direct {p2, p0}, Le/a/c/a/a/a/b;-><init>(Le/a/c/a/a/a/c;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 13

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->upcoming_reminder_item:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    new-instance p2, Le/a/c/a/c/h/l/g;

    .line 2
    invoke-static {p1}, Le/a/c/a/c/h/l/g;->V4(Landroid/view/ViewGroup;)Le/a/c/a/g/c2;

    move-result-object v4

    .line 3
    iget-object v5, p0, Le/a/c/a/a/a/c;->c:Le/a/c/h/h;

    .line 4
    iget-object v6, p0, Le/a/c/a/a/a/c;->d:Le/a/b0/m/c/a;

    .line 5
    iget-object v7, p0, Le/a/c/a/a/a/c;->e:Le/a/c/x/a;

    .line 6
    iget-object v8, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 7
    new-instance v9, Le/a/c/a/a/a/a/b;

    const/4 p1, 0x1

    const-string v0, "upcoming_smart_card"

    const-string v1, "insights_tab"

    invoke-direct {v9, v0, v1, p1}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    iget-object v10, p0, Le/a/c/a/a/a/c;->h:Le/a/c/b/j;

    .line 9
    iget-object v11, p0, Le/a/c/a/a/a/c;->l:Le/a/c/j/b;

    .line 10
    new-instance v12, Le/a/c/a/n/c/d/a;

    invoke-direct {v12, v2, v2, p1}, Le/a/c/a/n/c/d/a;-><init>(ZZI)V

    move-object v3, p2

    invoke-direct/range {v3 .. v12}, Le/a/c/a/c/h/l/g;-><init>(Le/a/c/a/g/c2;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;Le/a/c/j/b;Le/a/c/a/n/c/d/a;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    sget v1, Lcom/truecaller/insights/ui/R$layout;->empty_business_item:I

    if-ne p2, v1, :cond_1

    new-instance p2, Le/a/c/a/a/a/a/i;

    .line 12
    invoke-static {p1}, Le/a/c/a/a/a/a/i;->N4(Landroid/view/ViewGroup;)Le/a/c/a/g/y;

    move-result-object p1

    .line 13
    invoke-direct {p2, p1}, Le/a/c/a/a/a/a/i;-><init>(Le/a/c/a/g/y;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->empty_business_page_item:I

    const-string v3, "Missing required view with ID: "

    if-ne p2, v1, :cond_3

    new-instance p2, Le/a/c/a/a/a/a/h;

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    sget v0, Lcom/truecaller/insights/ui/R$id;->emptyStateDesc:I

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 20
    sget v0, Lcom/truecaller/insights/ui/R$id;->emptyStateImg:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 22
    sget v0, Lcom/truecaller/insights/ui/R$id;->emptyStateTitle:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 24
    new-instance v0, Le/a/c/a/g/z;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v1, v2, v4}, Le/a/c/a/g/z;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-string p1, "EmptyBusinessPageItemBin\u2026.context), parent, false)"

    .line 25
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p2, v0}, Le/a/c/a/a/a/a/h;-><init>(Le/a/c/a/g/z;)V

    goto/16 :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_3
    sget v1, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    if-ne p2, v1, :cond_4

    new-instance p2, Le/a/c/a/a/a/a/a;

    .line 30
    invoke-static {p1}, Le/a/c/a/a/a/a/a;->V4(Landroid/view/ViewGroup;)Le/a/c/a/g/a2;

    move-result-object p1

    .line 31
    iget-object v0, p0, Le/a/c/a/a/a/c;->g:Le/a/c/a/c/h/j;

    .line 32
    iget-object v1, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 33
    invoke-direct {p2, p1, v0, v1}, Le/a/c/a/a/a/a/a;-><init>(Le/a/c/a/g/a2;Le/a/c/a/c/h/j;Le/a/c/a/i/h;)V

    goto/16 :goto_0

    .line 34
    :cond_4
    sget v1, Lcom/truecaller/insights/ui/R$layout;->banner_item:I

    if-ne p2, v1, :cond_5

    new-instance p2, Le/a/c/a/a/a/a/c;

    .line 35
    iget-object v3, p0, Le/a/c/a/a/a/c;->b:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 36
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sput-object v3, Le/a/c/a/a/a/a/c;->e:Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026nner_item, parent, false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 40
    invoke-direct {p2, p1, v0}, Le/a/c/a/a/a/a/c;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    goto/16 :goto_0

    .line 41
    :cond_5
    sget v1, Lcom/truecaller/insights/ui/R$layout;->finance_reminder_container_item:I

    if-ne p2, v1, :cond_7

    new-instance p2, Le/a/c/a/c/h/l/a;

    .line 42
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "parent.context"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v0, Lcom/truecaller/insights/ui/R$id;->recentTransactionRecyclerView:I

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_6

    .line 47
    new-instance v0, Le/a/c/a/g/a0;

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v0, p1, v1}, Le/a/c/a/g/a0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;)V

    const-string p1, "FinanceReminderContainer\u2026rapper()), parent, false)"

    .line 48
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 50
    iget-object v1, p0, Le/a/c/a/a/a/c;->i:Le/a/c/a/c/h/l/c;

    .line 51
    invoke-direct {p2, v0, p1, v1}, Le/a/c/a/c/h/l/a;-><init>(Le/a/c/a/g/a0;Le/a/c/a/i/h;Le/a/c/a/c/h/l/c;)V

    goto/16 :goto_0

    .line 52
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_7
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_mini_banner_item:I

    if-ne p2, v1, :cond_9

    new-instance p2, Le/a/c/a/a/a/a/l;

    .line 55
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    sget v0, Lcom/truecaller/insights/ui/R$id;->caption:I

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 60
    sget v0, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v2, :cond_8

    .line 62
    sget v0, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    .line 64
    new-instance v0, Le/a/c/a/g/g1;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p1, v1, v2, v4}, Le/a/c/a/g/g1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;)V

    const-string p1, "LayoutMiniBannerItemBind\u2026.context), parent, false)"

    .line 65
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p2, v0}, Le/a/c/a/a/a/a/l;-><init>(Le/a/c/a/g/g1;)V

    goto/16 :goto_0

    .line 67
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 69
    :cond_9
    sget v1, Lcom/truecaller/insights/ui/R$layout;->updates_container_item:I

    if-ne p2, v1, :cond_b

    new-instance p2, Le/a/c/a/c/h/l/j;

    .line 70
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget v0, Lcom/truecaller/insights/ui/R$id;->recentUpdatesRecyclerView:I

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    .line 75
    new-instance v0, Le/a/c/a/g/e2;

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v0, p1, v1}, Le/a/c/a/g/e2;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;)V

    const-string p1, "UpdatesContainerItemBind\u2026.context), parent, false)"

    .line 76
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 78
    iget-object v1, p0, Le/a/c/a/a/a/c;->j:Le/a/c/a/c/h/l/d;

    .line 79
    invoke-direct {p2, v0, p1, v1}, Le/a/c/a/c/h/l/j;-><init>(Le/a/c/a/g/e2;Le/a/c/a/i/h;Le/a/c/a/c/h/l/d;)V

    goto/16 :goto_0

    .line 80
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 82
    :cond_b
    sget v1, Lcom/truecaller/insights/ui/R$layout;->item_sections_entry_point:I

    if-ne p2, v1, :cond_d

    .line 83
    new-instance p2, Le/a/c/a/a/a/a/p;

    .line 84
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    sget v0, Lcom/truecaller/insights/ui/R$id;->reminders:I

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    if-eqz v6, :cond_c

    .line 89
    sget v0, Lcom/truecaller/insights/ui/R$id;->starred:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    if-eqz v7, :cond_c

    .line 91
    sget v0, Lcom/truecaller/insights/ui/R$id;->transactions:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    if-eqz v8, :cond_c

    .line 93
    sget v0, Lcom/truecaller/insights/ui/R$id;->updates:I

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;

    if-eqz v9, :cond_c

    .line 95
    new-instance v0, Le/a/c/a/g/r0;

    move-object v5, p1

    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Le/a/c/a/g/r0;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;Lcom/truecaller/insights/ui/widget/SectionsEntryPointView;)V

    const-string p1, "ItemSectionsEntryPointBi\u2026.context), parent, false)"

    .line 96
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 98
    iget-object v1, p0, Le/a/c/a/a/a/c;->h:Le/a/c/b/j;

    .line 99
    invoke-direct {p2, v0, p1, v1}, Le/a/c/a/a/a/a/p;-><init>(Le/a/c/a/g/r0;Le/a/c/a/i/h;Le/a/c/b/j;)V

    goto :goto_0

    .line 100
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 102
    :cond_d
    sget v1, Lcom/truecaller/insights/ui/R$layout;->item_finance_trx_hidden:I

    if-ne p2, v1, :cond_f

    new-instance p2, Le/a/c/a/a/a/a/f;

    .line 103
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    sget v0, Lcom/truecaller/insights/ui/R$id;->desc:I

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 108
    sget v0, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v2, :cond_e

    .line 110
    sget v0, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_e

    .line 112
    new-instance v0, Le/a/c/a/g/o0;

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v0, p1, v1, v2, v4}, Le/a/c/a/g/o0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;)V

    const-string p1, "ItemFinanceTrxHiddenBind\u2026.context), parent, false)"

    .line 113
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Le/a/c/a/a/a/c;->f:Le/a/c/a/i/h;

    .line 115
    invoke-direct {p2, v0, p1}, Le/a/c/a/a/a/a/f;-><init>(Le/a/c/a/g/o0;Le/a/c/a/i/h;)V

    :goto_0
    return-object p2

    .line 116
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 118
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not implemented for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/c/a/a/a/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
