.class public final Lcom/hiya/stingray/ui/callergrid/e;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/callergrid/l;


# instance fields
.field public l:Lcom/hiya/stingray/ui/callergrid/k;

.field public m:Lcom/hiya/stingray/ui/callergrid/a;

.field public n:Lcom/hiya/stingray/ui/callergrid/a;

.field public o:Lcom/hiya/stingray/ui/login/o;

.field public p:Lcom/hiya/stingray/ui/callergrid/b;

.field private final q:J

.field private r:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 2
    iput-wide v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->q:J

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/callergrid/e;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/callergrid/e;->m1(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->n1()V

    return-void
.end method

.method public static final synthetic i1(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->o1()V

    return-void
.end method

.method public static final synthetic j1(Lcom/hiya/stingray/ui/callergrid/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->p1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic k1(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->q1()V

    return-void
.end method

.method private final m1(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "identityData"

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/callergrid/e;->p:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p2}, Lcom/hiya/stingray/ui/callergrid/b;->b(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/hiya/stingray/ui/CallPickerDialog$a;->a(Landroid/content/Context;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/util/g0/c;)Lcom/hiya/stingray/ui/CallPickerDialog;

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e;->p:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/callergrid/b;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final n1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->p:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz v0, :cond_0

    const-string v1, "view_more_people"

    const-string v2, "callers_grid"

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/callergrid/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x62

    const-string v2, "callergrid_data_type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "callerGridAnalytics"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final o1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->p:Lcom/hiya/stingray/ui/callergrid/b;

    if-eqz v0, :cond_0

    const-string v1, "view_more_businesses"

    const-string v2, "callers_grid"

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/callergrid/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/ui/callergrid/CallerGridFullPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x63

    const-string v2, "callergrid_data_type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "callerGridAnalytics"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final p1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->o:Lcom/hiya/stingray/ui/login/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

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
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->e0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "contact_permission_view"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->T:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    const-string v2, "callergrid"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->P0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v2, "empty_view"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->Y2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->l:Lcom/hiya/stingray/ui/callergrid/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/callergrid/k;->A()V

    return-void

    :cond_0
    const-string v0, "callerGridPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final r1()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->e0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$b;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "contact_permission_view"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->M0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/hiya/stingray/ui/callergrid/e$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/e$c;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final s1()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->l4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$d;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$d;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x7f06002a

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method private final t1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->l:Lcom/hiya/stingray/ui/callergrid/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->I2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    if-eqz v2, :cond_d

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/e;->m:Lcom/hiya/stingray/ui/callergrid/a;

    const-string v4, "peopleAdapter"

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->Q2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9, v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/callergrid/e;->n:Lcom/hiya/stingray/ui/callergrid/a;

    const-string v3, "placesAdapter"

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->n:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$e;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/callergrid/a;->e(Lkotlin/w/b/p;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->m:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz v0, :cond_6

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$f;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$f;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/callergrid/a;->e(Lkotlin/w/b/p;)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->n:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz v0, :cond_5

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$g;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$g;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/callergrid/a;->g(Lkotlin/w/b/a;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->m:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/hiya/stingray/ui/callergrid/e$h;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/callergrid/e$h;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/callergrid/a;->g(Lkotlin/w/b/a;)V

    .line 10
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->r1()V

    .line 11
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->s1()V

    .line 12
    sget v0, Lcom/hiya/stingray/o;->J2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f11009c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget v0, Lcom/hiya/stingray/o;->R2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const v1, 0x7f110098

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_6
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_7
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_8
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_b
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "callerGridPresenter"

    .line 23
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final u1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->p1()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final v1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/hiya/stingray/ui/callergrid/e$i;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/callergrid/e$i;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

    .line 2
    iget-wide v2, p0, Lcom/hiya/stingray/ui/callergrid/e;->q:J

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->r:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->r:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/e;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public k(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "people"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "places"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/t;->e(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callergrid"

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/hiya/stingray/util/t;->e(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget p1, Lcom/hiya/stingray/o;->P0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "empty_view"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->T:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->T:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->m:Lcom/hiya/stingray/ui/callergrid/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/callergrid/a;->f(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e;->n:Lcom/hiya/stingray/ui/callergrid/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/callergrid/a;->f(Ljava/util/List;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->u1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->v1()V

    goto :goto_0

    .line 9
    :cond_1
    sget p1, Lcom/hiya/stingray/o;->e0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "contact_permission_view"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    sget p1, Lcom/hiya/stingray/o;->Y2:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string p2, "progressBar"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_2
    const-string p1, "placesAdapter"

    .line 11
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "peopleAdapter"

    .line 12
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final l1()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e;->o:Lcom/hiya/stingray/ui/login/o;

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

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->t(Lcom/hiya/stingray/ui/callergrid/e;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c003d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/callergrid/e;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/callergrid/e;->o:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/callergrid/e$a;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/callergrid/e$a;-><init>(Lcom/hiya/stingray/ui/callergrid/e;)V

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/callergrid/e;->t1()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e;->l:Lcom/hiya/stingray/ui/callergrid/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/callergrid/k;->w()V

    return-void

    :cond_0
    const-string p1, "callerGridPresenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
