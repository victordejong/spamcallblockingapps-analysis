.class public final Lcom/hiya/stingray/ui/local/g/a;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/h/d;
.implements Lcom/hiya/stingray/ui/local/common/e;


# instance fields
.field private final l:Lcom/hiya/stingray/ui/local/h/b;

.field private m:Lcom/hiya/stingray/ui/local/g/c/a;

.field private n:Lcom/hiya/stingray/ui/local/common/c;

.field public o:Lcom/hiya/stingray/manager/o4/a;

.field public p:Lcom/hiya/stingray/ui/local/h/c;

.field public q:Lcom/hiya/stingray/ui/local/common/d;

.field public r:Lcom/hiya/stingray/ui/login/o;

.field private s:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/h/b;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/local/h/b;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->l:Lcom/hiya/stingray/ui/local/h/b;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/g/a;)Lcom/hiya/stingray/ui/local/g/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/g/a;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "categoriesAdapter"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/local/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->k1()V

    return-void
.end method

.method private final k1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->p:Lcom/hiya/stingray/ui/local/h/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/h/c;->p()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->q:Lcom/hiya/stingray/ui/local/common/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/d;->v()V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->S0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "enableLocationScreen"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->Z1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    const-string v1, "localScreen"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "directoryPresenter"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "themeListPresenter"

    .line 6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final l1()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->Q0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/hiya/stingray/ui/local/g/a$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/g/a$c;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final m1()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/common/c;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/local/g/a$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/g/a$d;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/common/c;->j(Lkotlin/w/b/l;)V

    .line 3
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    .line 4
    sget v0, Lcom/hiya/stingray/o;->k3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recommendedDirectoryRecyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final n1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->s4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lcom/hiya/stingray/o;->t4:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "themesViewPager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/hiya/stingray/ui/local/h/b;

    invoke-direct {v1}, Lcom/hiya/stingray/ui/local/h/b;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->l:Lcom/hiya/stingray/ui/local/h/b;

    sget-object v1, Lcom/hiya/stingray/ui/local/g/a$e;->f:Lcom/hiya/stingray/ui/local/g/a$e;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/h/b;->v(Lkotlin/w/b/l;)V

    return-void
.end method

.method private final o1()V
    .locals 8

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/local/g/c/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v3, "context!!"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/g/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    const-string v1, "categoriesAdapter"

    if-eqz v0, :cond_2

    .line 2
    new-instance v3, Lcom/hiya/stingray/ui/local/g/a$f;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/g/a$f;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/local/g/c/a;->g(Lkotlin/w/b/l;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->X:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "categoriesRecyclerView"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/g/a;->m:Lcom/hiya/stingray/ui/local/g/c/a;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->o:Lcom/hiya/stingray/manager/o4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o4/a;->l()Li/c/b0/b/v;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/ui/local/g/a$g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/g/a$g;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_0
    const-string v0, "localManager"

    .line 9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method


# virtual methods
.method public N(Ljava/util/List;)V
    .locals 7
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const v2, 0x7f1101b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context!!.getString(R.st\u2026mmended_directory_header)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/hiya/stingray/ui/common/n$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "context!!"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/g/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    const-string v4, "recommendedDirectoryAdapter"

    if-eqz v3, :cond_2

    sget v5, Lcom/hiya/stingray/o;->k3:I

    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "recommendedDirectoryRecyclerView"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, v3, v5, v2}, Lcom/hiya/stingray/ui/local/common/f;->a(Lcom/hiya/stingray/ui/local/common/e;Landroid/content/Context;Lcom/hiya/stingray/ui/local/common/c;Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/common/n$c;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/common/c;->h(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/a;->n:Lcom/hiya/stingray/ui/local/common/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 8
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->s:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->s:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->s:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/g/a;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public i1()Lcom/hiya/stingray/ui/local/g/a;
    .locals 0

    return-object p0
.end method

.method public final j1()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->r:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "permissionHandler"

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

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->X(Lcom/hiya/stingray/ui/local/g/a;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c007b

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/g/a;->p:Lcom/hiya/stingray/ui/local/h/c;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/g/a;->q:Lcom/hiya/stingray/ui/local/common/d;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p1, "directoryPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-string p1, "themeListPresenter"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/g/a;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/g/a;->r:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/local/g/a$a;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/local/g/a$a;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

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
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a;->r:Lcom/hiya/stingray/ui/login/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->k1()V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_2
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->H3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    new-instance p2, Lcom/hiya/stingray/ui/local/g/a$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/g/a$b;-><init>(Lcom/hiya/stingray/ui/local/g/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->l1()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->o1()V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->n1()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/g/a;->m1()V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/k;",
            ">;)V"
        }
    .end annotation

    const-string v0, "themeList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/stingray/o;->t4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "themesViewPager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/hiya/stingray/ui/local/h/b;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/h/b;->w(Ljava/util/List;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->s4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "themesIndicator"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/z/d;->j(II)Lkotlin/z/c;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lkotlin/s/z;

    invoke-virtual {v2}, Lkotlin/s/z;->b()I

    move-result v2

    .line 5
    sget v3, Lcom/hiya/stingray/o;->s4:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->x(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_4

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v2, :cond_1

    .line 7
    sget-object v1, Lkotlin/w/c/t;->a:Lkotlin/w/c/t;

    invoke-static {v1}, Lcom/hiya/stingray/util/c0;->g(Lkotlin/w/c/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$g;->r(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    :cond_1
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const v4, 0x7f1101b3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$g;->m(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    :cond_3
    :goto_2
    move v1, v3

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/s/k;->p()V

    throw v4

    .line 10
    :cond_5
    sget p1, Lcom/hiya/stingray/o;->B1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "homeScreenProgressBar"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    sget p1, Lcom/hiya/stingray/o;->A1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "homeScreenErrorText"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 12
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.ui.local.theme.ThemeListPagerAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
