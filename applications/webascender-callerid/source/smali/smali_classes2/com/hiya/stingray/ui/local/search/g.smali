.class public final Lcom/hiya/stingray/ui/local/search/g;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/search/d;
.implements Lcom/hiya/stingray/ui/local/search/b;


# instance fields
.field public l:Lcom/hiya/stingray/ui/local/search/e;

.field public m:Lcom/hiya/stingray/ui/local/search/a;

.field public n:Lcom/hiya/stingray/ui/local/search/c;

.field public o:Lcom/hiya/stingray/ui/login/o;

.field public p:Lcom/hiya/stingray/ui/local/search/f;

.field public q:Lcom/hiya/stingray/manager/x3;

.field private r:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Li/c/b0/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/b<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->r:Li/c/b0/k/b;

    .line 3
    invoke-static {}, Li/c/b0/k/b;->c()Li/c/b0/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->s:Li/c/b0/k/b;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/search/g;)Li/c/b0/k/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/search/g;->r:Li/c/b0/k/b;

    return-object p0
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->o1()V

    return-void
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/local/search/g;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->p1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic j1(Lcom/hiya/stingray/ui/local/search/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/search/g;->t1(Z)V

    return-void
.end method

.method public static final synthetic k1(Lcom/hiya/stingray/ui/local/search/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->u1()V

    return-void
.end method

.method private final o1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->o:Lcom/hiya/stingray/ui/login/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3
    sget-object v3, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    const/16 v4, 0x1774

    .line 4
    invoke-virtual {v0, v2, p0, v3, v4}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "searchAnalytics"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->p:Lcom/hiya/stingray/ui/local/search/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->l()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->p:Lcom/hiya/stingray/ui/local/search/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->c()V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_4
    const-string v0, "permissionHandler"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final p1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->o:Lcom/hiya/stingray/ui/login/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final q1()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->u1()V

    return-void
.end method

.method private final r1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->m:Lcom/hiya/stingray/ui/local/search/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/a;->x()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->n:Lcom/hiya/stingray/ui/local/search/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/c;->x()V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->j2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "mainSearchRecyclerView"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const-string v4, "mergedSearchHeaderAdapter"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/local/search/e;->c()Lcom/hiya/stingray/ui/local/common/c;

    move-result-object v2

    .line 6
    new-instance v5, Lcom/hiya/stingray/ui/local/search/g$j;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/local/search/g$j;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/ui/local/common/c;->j(Lkotlin/w/b/l;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "directorySearchPresenter"

    .line 9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "callLogContactSearchPresenter"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final s1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->p1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->t1(Z)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->Q0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/local/search/g$k;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/g$k;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final t1(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->R0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "enableLocalTextView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->Q0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "enableLocalButton"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private final u1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "searchBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->p1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/g;->q:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_0

    const-string v2, "search_bar_hint_in_search"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const v1, 0x7f11031c

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public N(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "directories"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const/4 v1, 0x0

    const-string v2, "mergedSearchHeaderAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->c()Lcom/hiya/stingray/ui/local/common/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/common/c;->h(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public O0()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->r:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "userInputSubject.hide()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public Y0(Lcom/hiya/stingray/t/h1/i;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->s:Li/c/b0/k/b;

    invoke-virtual {v0, p1}, Li/c/b0/k/b;->onNext(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const/4 v1, 0x0

    const-string v2, "mergedSearchHeaderAdapter"

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/search/e;->n(Lcom/hiya/stingray/t/h1/i;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/e;->d()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/e;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    .line 5
    :cond_4
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_5
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callLogs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogAndContacts"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const/4 v1, 0x0

    const-string v2, "mergedSearchHeaderAdapter"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/e;->f()Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->l(Ljava/util/List;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->t:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/g;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final l1()Lcom/hiya/stingray/ui/local/search/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->m:Lcom/hiya/stingray/ui/local/search/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callLogContactSearchPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public m(Lcom/hiya/stingray/t/d0;)V
    .locals 1

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final m1()Lcom/hiya/stingray/ui/local/search/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mergedSearchHeaderAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n1()Lcom/hiya/stingray/ui/local/search/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->p:Lcom/hiya/stingray/ui/local/search/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searchAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const/4 v0, 0x0

    const-string v1, "mergedSearchHeaderAdapter"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/e;->f()Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->g()Li/c/b0/b/v;

    move-result-object p1

    new-instance v2, Lcom/hiya/stingray/ui/local/search/g$a;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/search/g$a;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/e;->f()Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->h()Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/local/search/g$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/g$b;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    .line 6
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->u0(Lcom/hiya/stingray/ui/local/search/g;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0086

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/g;->m:Lcom/hiya/stingray/ui/local/search/a;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/g;->n:Lcom/hiya/stingray/ui/local/search/c;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "directorySearchPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-string p1, "callLogContactSearchPresenter"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->j2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->t()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/search/g;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/g;->o:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/local/search/g$c;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/local/search/g$c;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void

    :cond_0
    const-string p1, "permissionHandler"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->n:Lcom/hiya/stingray/ui/local/search/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/c;->y()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->p:Lcom/hiya/stingray/ui/local/search/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/search/f;->m()V

    return-void

    :cond_0
    const-string v0, "searchAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "directorySearchPresenter"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->q1()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->r1()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/g;->s1()V

    .line 5
    sget p1, Lcom/hiya/stingray/o;->j2:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/hiya/stingray/ui/local/search/g$d;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/search/g$d;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    const/4 p2, 0x0

    const-string v0, "mergedSearchHeaderAdapter"

    if-eqz p1, :cond_2

    new-instance v1, Lcom/hiya/stingray/ui/local/search/g$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/g$e;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/local/search/e;->l(Lkotlin/w/b/a;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/hiya/stingray/ui/local/search/g$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/search/g$f;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/local/search/e;->m(Lkotlin/w/b/l;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/g;->l:Lcom/hiya/stingray/ui/local/search/e;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/hiya/stingray/ui/local/search/g$g;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/search/g$g;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/search/e;->k(Lkotlin/w/b/a;)V

    .line 9
    sget p1, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const v0, 0x7f080106

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10
    sget p2, Lcom/hiya/stingray/o;->S1:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/hiya/stingray/ui/local/search/g$h;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/search/g$h;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/search/g;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lcom/hiya/stingray/ui/local/search/g$i;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/search/g$i;-><init>(Lcom/hiya/stingray/ui/local/search/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 13
    :cond_1
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_2
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public v()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/g;->s:Li/c/b0/k/b;

    invoke-virtual {v0}, Li/c/b0/b/v;->hide()Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "selectableSubject.hide()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
