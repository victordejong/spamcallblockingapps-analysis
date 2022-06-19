.class public final Lcom/hiya/stingray/ui/w/h;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/w/o;


# instance fields
.field public l:Lcom/hiya/stingray/ui/w/l;

.field public m:Lcom/hiya/stingray/ui/w/c;

.field public n:Lcom/hiya/stingray/ui/login/o;

.field public o:Lcom/hiya/stingray/manager/x3;

.field private p:Lcom/hiya/stingray/ui/common/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hiya/stingray/ui/common/n<",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Li/c/b0/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/a;->c()Li/c/b0/k/a;

    move-result-object v0

    const-string v1, "BehaviorSubject.create()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/w/h;->q:Li/c/b0/k/a;

    return-void
.end method

.method private final i1()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f080106

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2
    sget v1, Lcom/hiya/stingray/o;->S1:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v2, Lcom/hiya/stingray/ui/w/h$j;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/h$j;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "searchBar"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hiya/stingray/ui/w/h$k;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/w/h$k;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-static {v1, v2}, Lcom/hiya/stingray/util/e0;->a(Landroid/widget/EditText;Lkotlin/w/b/l;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private final k1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->p:Lcom/hiya/stingray/ui/common/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/w/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    return-void

    :cond_0
    const-string v0, "searcherAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "sectionedRecyclerViewAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final setupRecyclerView()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    const/4 v1, 0x0

    const-string v2, "searcherAdapter"

    if-eqz v0, :cond_c

    new-instance v3, Lcom/hiya/stingray/ui/w/h$a;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$a;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->o(Lkotlin/w/b/l;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_b

    new-instance v3, Lcom/hiya/stingray/ui/w/h$b;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$b;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->p(Lkotlin/w/b/l;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_a

    new-instance v3, Lcom/hiya/stingray/ui/w/h$c;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$c;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->h(Lkotlin/w/b/l;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_9

    new-instance v3, Lcom/hiya/stingray/ui/w/h$d;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$d;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->i(Lkotlin/w/b/l;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/hiya/stingray/ui/w/h$e;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$e;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->l(Lkotlin/w/b/a;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_7

    new-instance v3, Lcom/hiya/stingray/ui/w/h$f;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$f;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->q(Lkotlin/w/b/a;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/hiya/stingray/ui/w/h$g;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$g;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->r(Lkotlin/w/b/a;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_5

    new-instance v3, Lcom/hiya/stingray/ui/w/h$h;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$h;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->t(Lkotlin/w/b/a;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "recyclerView"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 10
    new-instance v3, Lcom/hiya/stingray/ui/common/n;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v5, "context!!"

    invoke-static {v8, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f06019a

    const v10, 0x7f0c0068

    const v11, 0x7f0903bb

    .line 12
    iget-object v12, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v12, :cond_3

    move-object v7, v3

    .line 13
    invoke-direct/range {v7 .. v12}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object v3, p0, Lcom/hiya/stingray/ui/w/h;->p:Lcom/hiya/stingray/ui/common/n;

    .line 14
    iget-object v6, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v6, :cond_2

    invoke-virtual {v3, v6}, Lcom/hiya/stingray/ui/common/n;->g(Lcom/hiya/stingray/ui/common/n$b;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/w/h;->p:Lcom/hiya/stingray/ui/common/n;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/hiya/stingray/ui/w/h$i;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/w/h$i;-><init>(Lcom/hiya/stingray/ui/w/h;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 17
    new-instance v6, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    sget v0, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    const-string v0, "sectionedRecyclerViewAdapter"

    .line 18
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 22
    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_6
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_7
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_8
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_9
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_a
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_b
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_c
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public E0(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "businesses"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    const/4 v1, 0x0

    const-string v2, "searcherAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/w/c;->k(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/w/c;->j(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->k1()V

    return-void

    .line 4
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public H()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "searchBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/w/c;->j(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->k1()V

    return-void

    :cond_0
    const-string p1, "searcherAdapter"

    .line 3
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/w/h;->r:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->r:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/h;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final g1()Lcom/hiya/stingray/ui/w/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searcherAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/w/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searcherPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j()Landroidx/fragment/app/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public j1()V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/w/h;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "searchBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/h;->n:Lcom/hiya/stingray/ui/login/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/h;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_0

    const-string v2, "search_bar_hint_in_search"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v1, 0x7f11031c

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_3
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public n()Li/c/b0/k/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->q:Li/c/b0/k/a;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->I(Lcom/hiya/stingray/ui/w/h;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0087

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/w/h;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/w/l;->o()V

    return-void

    :cond_0
    const-string v0, "searcherPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hiya/stingray/ui/w/l;->V(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    const-string p1, "searcherPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/w/l;->p()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    const-string v2, "searcherAdapter"

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/hiya/stingray/ui/w/h;->n:Lcom/hiya/stingray/ui/login/o;

    const-string v4, "permissionHandler"

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/w/c;->v(Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/h;->n:Lcom/hiya/stingray/ui/login/o;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/w/c;->w(Z)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->k1()V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "searcherPresenter"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/w/l;->q()V

    return-void

    :cond_0
    const-string v0, "searcherPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    const/4 p2, 0x0

    const-string v0, "searcherPresenter"

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->setupRecyclerView()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->i1()V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/w/h;->j1()V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->l:Lcom/hiya/stingray/ui/w/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->r()V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public v0(Lcom/hiya/stingray/t/h1/i;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    const/4 v1, 0x0

    const-string v2, "searcherAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/w/c;->s(Lcom/hiya/stingray/t/h1/i;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/w/c;->y(Z)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public z0(Ljava/util/List;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "identities"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    const/4 v1, 0x0

    const-string v2, "searcherAdapter"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/w/c;->m(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/w/c;->x(Z)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/w/h;->m:Lcom/hiya/stingray/ui/w/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/ui/w/c;->n(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/h;->k1()V

    return-void

    .line 5
    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
