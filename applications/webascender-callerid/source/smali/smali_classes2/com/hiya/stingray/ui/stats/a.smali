.class public final Lcom/hiya/stingray/ui/stats/a;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/stats/a$c;
    }
.end annotation


# instance fields
.field private final l:Lkotlin/g;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field public o:Lcom/hiya/stingray/manager/e1;

.field public p:Lcom/hiya/stingray/manager/u3;

.field private q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/stats/a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/stats/a$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    const-class v1, Lcom/hiya/stingray/ui/stats/c;

    invoke-static {v1}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/stats/a$b;

    invoke-direct {v2, v0}, Lcom/hiya/stingray/ui/stats/a$b;-><init>(Lkotlin/w/b/a;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/fragment/app/d0;->a(Landroidx/fragment/app/Fragment;Lkotlin/a0/b;Lkotlin/w/b/a;Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->l:Lkotlin/g;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/stats/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/stats/a;->m:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "views"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final h1()Lcom/hiya/stingray/ui/stats/c;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->l:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/c;

    return-object v0
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->q:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/stats/a;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->e0(Lcom/hiya/stingray/ui/stats/a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0075

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/stats/a;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->o:Lcom/hiya/stingray/manager/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    const-string v3, "blocked_call_stats"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/stats/a;->n:Z

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/stats/a;->h1()Lcom/hiya/stingray/ui/stats/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/stats/c;->h()V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "loadingView"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/stats/a;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 9
    :cond_0
    iput-boolean v2, p0, Lcom/hiya/stingray/ui/stats/a;->n:Z

    goto :goto_1

    :cond_1
    const-string v0, "views"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "analyticsManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    new-array p1, p1, [Landroid/view/View;

    .line 2
    sget p2, Lcom/hiya/stingray/o;->U:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 3
    sget v0, Lcom/hiya/stingray/o;->B:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 4
    sget v0, Lcom/hiya/stingray/o;->W:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p1, v2

    .line 5
    sget v1, Lcom/hiya/stingray/o;->J4:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/stats/CallsStatsPie;

    const/4 v2, 0x3

    aput-object v1, p1, v2

    .line 6
    sget v1, Lcom/hiya/stingray/o;->Z3:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    aput-object v1, p1, v2

    .line 7
    sget v1, Lcom/hiya/stingray/o;->n1:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x5

    aput-object v1, p1, v2

    .line 8
    sget v1, Lcom/hiya/stingray/o;->t:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x6

    aput-object v1, p1, v2

    .line 9
    sget v1, Lcom/hiya/stingray/o;->V2:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x7

    aput-object v1, p1, v2

    .line 10
    sget v1, Lcom/hiya/stingray/o;->j3:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, p1, v3

    .line 11
    sget v2, Lcom/hiya/stingray/o;->i3:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/ui/stats/FullHeightListView;

    const/16 v4, 0x9

    aput-object v3, p1, v4

    .line 12
    invoke-static {p1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/a;->m:Ljava/util/List;

    .line 13
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz p1, :cond_6

    check-cast p1, Landroid/widget/TextView;

    const v3, 0x7f11008e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f11008f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f110093

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    sget p1, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/widget/Toolbar;

    const-string p1, "toolBar"

    invoke-static {v3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v4

    const/4 p1, 0x0

    if-eqz v4, :cond_3

    const-string p2, "activity!!"

    invoke-static {v4, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f110095

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p2, "getString(R.string.call_stats_title)"

    invoke-static {v5, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcom/hiya/stingray/ui/stats/a;->h1()Lcom/hiya/stingray/ui/stats/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/stats/c;->g()Landroidx/lifecycle/t;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/n;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/stats/a$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/stats/a$d;-><init>(Lcom/hiya/stingray/ui/stats/a;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/n;Landroidx/lifecycle/u;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/ui/stats/FullHeightListView;

    const-string v0, "recentlyBlockedList"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hiya/stingray/ui/stats/a$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/stats/a;->p:Lcom/hiya/stingray/manager/u3;

    if-eqz v3, :cond_1

    invoke-direct {v0, v1, v3}, Lcom/hiya/stingray/ui/stats/a$c;-><init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    new-instance v4, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    sget p1, Lcom/hiya/stingray/o;->A3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/widget/ScrollView;

    sget p1, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/a;->f1(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    :cond_1
    const-string p2, "premiumManager"

    .line 20
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 21
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
