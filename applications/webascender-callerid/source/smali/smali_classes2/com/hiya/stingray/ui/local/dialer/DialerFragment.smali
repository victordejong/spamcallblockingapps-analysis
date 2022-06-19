.class public final Lcom/hiya/stingray/ui/local/dialer/DialerFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/dialer/e;
.implements Lcom/hiya/stingray/ui/local/dialer/f$a;


# instance fields
.field public l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

.field public m:Lcom/hiya/stingray/ui/local/dialer/d;

.field public n:Lcom/hiya/stingray/ui/local/dialer/b;

.field public o:Lcom/hiya/stingray/util/b0;

.field private final p:Ljava/lang/String;

.field private q:Lcom/hiya/stingray/ui/local/dialer/f;

.field private r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, "dialpad"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->p:Ljava/lang/String;

    return-void
.end method

.method private final h1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->o:Lcom/hiya/stingray/util/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-class v2, Lcom/hiya/stingray/manager/i2$b;

    const/4 v3, 0x1

    sget-object v4, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$a;->f:Lcom/hiya/stingray/ui/local/dialer/DialerFragment$a;

    invoke-virtual {v0, v2, v3, v4}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i2$b;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/hiya/stingray/manager/i2$b$a;->PHONE_NUMBER:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 3
    :goto_1
    sget v2, Lcom/hiya/stingray/o;->L2:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "phoneNumber"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->q:Lcom/hiya/stingray/ui/local/dialer/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/dialer/f;->q()V

    goto :goto_2

    :cond_3
    const-string v0, "dialerViewHelper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v0, "sticky"

    .line 6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final setupRecyclerView()V
    .locals 7

    .line 1
    sget v0, Lcom/hiya/stingray/o;->E3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "searchRecyclerView"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    const/4 v5, 0x0

    const-string v6, "searchListAdapter"

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/hiya/stingray/util/e0;->h(Landroidx/recyclerview/widget/RecyclerView;)Lcom/hiya/stingray/ui/common/p;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->i(Z)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->g()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$c;-><init>(Lcom/hiya/stingray/ui/local/dialer/DialerFragment;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void

    :cond_0
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 8
    :cond_1
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 9
    :cond_2
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public B0(Ljava/lang/String;Lcom/hiya/stingray/ui/local/dialer/e$a;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->n:Lcom/hiya/stingray/ui/local/dialer/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/local/dialer/b;->a(Lcom/hiya/stingray/ui/local/dialer/e$a;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "context!!"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->B(Ljava/lang/String;Landroid/content/Context;)Z

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    const-string p1, "dialerAnalytics"

    .line 3
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public P(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$a$a;->b(Lcom/hiya/stingray/ui/local/dialer/f$a;Z)V

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->p:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    const/4 v1, 0x0

    const-string v2, "searchListAdapter"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->l(Ljava/util/List;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    sget p2, Lcom/hiya/stingray/o;->L2:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->r:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->r:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final g1()Lcom/hiya/stingray/ui/local/dialer/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->m:Lcom/hiya/stingray/ui/local/dialer/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialerPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->L2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "phoneNumber"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v3, "phoneNumber.text"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    sget v0, Lcom/hiya/stingray/o;->E3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "searchRecyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->l:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    new-instance v2, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment$b;-><init>(Lcom/hiya/stingray/ui/local/dialer/DialerFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "searchListAdapter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->h0(Lcom/hiya/stingray/ui/local/dialer/DialerFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c007a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->h1()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->setupRecyclerView()V

    .line 3
    new-instance p1, Lcom/hiya/stingray/ui/local/dialer/f;

    sget p2, Lcom/hiya/stingray/o;->B0:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/FrameLayout;

    const-string p2, "dialpadWrapper"

    invoke-static {v2, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/hiya/stingray/o;->L2:I

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/EditText;

    const-string p2, "phoneNumber"

    invoke-static {v3, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/ui/local/dialer/f;-><init>(Landroid/view/ViewGroup;Landroid/widget/EditText;Ljava/lang/ref/WeakReference;ZZILkotlin/w/c/g;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->q:Lcom/hiya/stingray/ui/local/dialer/f;

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->m:Lcom/hiya/stingray/ui/local/dialer/d;

    const/4 p2, 0x0

    const-string v0, "dialerPresenter"

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->m:Lcom/hiya/stingray/ui/local/dialer/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/dialer/d;->y()V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public q0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->L2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "phoneNumber"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/local/dialer/e$a;->DIAL_PAD:Lcom/hiya/stingray/ui/local/dialer/e$a;

    invoke-virtual {p0, v0, v1}, Lcom/hiya/stingray/ui/local/dialer/DialerFragment;->B0(Ljava/lang/String;Lcom/hiya/stingray/ui/local/dialer/e$a;)V

    return-void
.end method

.method public w0(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hiya/stingray/ui/local/dialer/f$a$a;->a(Lcom/hiya/stingray/ui/local/dialer/f$a;Z)V

    return-void
.end method
