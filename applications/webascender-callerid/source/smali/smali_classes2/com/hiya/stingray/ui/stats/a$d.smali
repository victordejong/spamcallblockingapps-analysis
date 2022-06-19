.class final Lcom/hiya/stingray/ui/stats/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Lcom/hiya/stingray/ui/stats/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/stats/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/stats/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/stats/c$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/a$d;->b(Lcom/hiya/stingray/ui/stats/c$a;)V

    return-void
.end method

.method public final b(Lcom/hiya/stingray/ui/stats/c$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->B:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->setData(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->J4:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/CallsStatsPie;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/stats/CallsStatsPie;->setData(Lcom/hiya/stingray/ui/stats/c$a;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->Z3:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "spamCallCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f110094

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->n1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "fraudCallCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f110090

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->t:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blockListCallCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f11008d

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->V2:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "privateCallCount"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f110091

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v1, Lcom/hiya/stingray/o;->i3:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/FullHeightListView;

    const-string v1, "recentlyBlockedList"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/hiya/stingray/ui/stats/a$c;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->f()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/stats/a$c;->a(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/stats/a;->g1(Lcom/hiya/stingray/ui/stats/a;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Landroid/view/View;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 12
    new-instance v7, Lcom/hiya/stingray/ui/stats/a$d$a;

    invoke-direct {v7, v1}, Lcom/hiya/stingray/ui/stats/a$d$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v6, v0

    mul-long v6, v6, v2

    .line 13
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    move v0, v4

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lkotlin/s/k;->p()V

    const/4 p1, 0x0

    throw p1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v0, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "loadingView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 17
    iget-object p1, p0, Lcom/hiya/stingray/ui/stats/a$d;->a:Lcom/hiya/stingray/ui/stats/a;

    sget v0, Lcom/hiya/stingray/o;->A3:I

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    new-instance v0, Lcom/hiya/stingray/ui/stats/a$d$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/stats/a$d$b;-><init>(Lcom/hiya/stingray/ui/stats/a$d;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 18
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.ui.stats.CallStatsFragment.BlockedAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
