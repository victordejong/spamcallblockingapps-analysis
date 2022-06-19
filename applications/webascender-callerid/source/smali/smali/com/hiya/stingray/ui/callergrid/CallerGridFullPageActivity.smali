.class public final Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/callergrid/i;


# instance fields
.field public r:Lcom/hiya/stingray/ui/callergrid/h;

.field public s:Lcom/hiya/stingray/ui/callergrid/a;

.field public t:Lcom/hiya/stingray/ui/callergrid/b;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    return-void
.end method

.method public static final synthetic P(Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->Q(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private final Q(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/t;->f(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "callerGridAnalytics"

    if-le v0, v1, :cond_3

    .line 3
    invoke-static {}, Lcom/hiya/stingray/t/n0;->b()Lcom/hiya/stingray/t/n0$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    const-string p1, "CONTACT"

    .line 5
    invoke-static {p2, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hiya/stingray/t/o0;->UNAVAILABLE:Lcom/hiya/stingray/t/o0;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/hiya/stingray/ui/CallPickerDialog;->C:Lcom/hiya/stingray/ui/CallPickerDialog$a;

    const-string v1, "identityData"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->t:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/ui/callergrid/b;->b(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/hiya/stingray/ui/CallPickerDialog$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->t:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/callergrid/b;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->u:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public o(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callersList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->s:Lcom/hiya/stingray/ui/callergrid/a;

    const/4 v1, 0x0

    const-string v2, "mAdapter"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/callergrid/a;->f(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->s:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/callergrid/a;->d(Z)V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->r1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "gridView"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v0, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->s:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->Y2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->n(Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->r:Lcom/hiya/stingray/ui/callergrid/h;

    const-string v0, "mPresenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "callergrid_data_type"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_5

    const/16 v2, 0x62

    const-string v3, "toolBar"

    if-eq p1, v2, :cond_2

    const/16 v2, 0x63

    if-ne p1, v2, :cond_1

    .line 6
    sget p1, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f110098

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(R.string.callergrid_businesses)"

    invoke-static {v6, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->r:Lcom/hiya/stingray/ui/callergrid/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/h;->u()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CallerGridFullPageActivity did not get a proper data type intent (people or places)."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    sget p1, Lcom/hiya/stingray/o;->z4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->O(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f11009c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(R.string.callergrid_people)"

    invoke-static {v6, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/hiya/stingray/util/e0;->s(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->r:Lcom/hiya/stingray/ui/callergrid/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/h;->t()V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;->s:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity$a;-><init>(Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/callergrid/a;->e(Lkotlin/w/b/p;)V

    return-void

    :cond_3
    const-string p1, "mAdapter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "CallerGridFullPageActivity got no type intent (people or places)."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
