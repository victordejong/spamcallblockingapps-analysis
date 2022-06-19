.class public final Lcom/hiya/stingray/ui/local/e/b;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/calllog/u;
.implements Lcom/hiya/stingray/ui/local/common/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/e/b$a;
    }
.end annotation


# instance fields
.field public l:Lcom/hiya/stingray/ui/calllog/t;

.field public m:Lcom/hiya/stingray/ui/calllog/s;

.field public n:Lcom/hiya/stingray/ui/local/e/a;

.field public o:Lcom/hiya/stingray/manager/o2;

.field public p:Lcom/hiya/stingray/util/a0;

.field public q:Lcom/hiya/stingray/manager/e1;

.field private r:I

.field private final s:Ljava/lang/String;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const-string v0, "callers_list"

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->s:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/e/b;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/ui/local/e/b;->r:I

    return-void
.end method


# virtual methods
.method public I()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SCROLL_TO_TOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->x1(I)V

    :cond_1
    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->s1(I)V

    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/local/common/g$a$a;->a(Lcom/hiya/stingray/ui/local/common/g$a;)Z

    move-result v0

    return v0
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->u:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/hiya/stingray/ui/common/n;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    const-string v0, "activity!!"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f06019a

    const v3, 0x7f0c0068

    const v4, 0x7f0903bb

    .line 3
    iget-object v5, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    if-eqz v5, :cond_5

    move-object v0, v6

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {v6, p1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 6
    new-instance p1, Lcom/hiya/stingray/ui/common/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 8
    invoke-direct {p1, v0, v1, v6}, Lcom/hiya/stingray/ui/common/o;-><init>(Landroid/content/Context;ILcom/hiya/stingray/ui/common/n;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/common/o;->h(Z)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/common/o;->g(Z)V

    .line 11
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    iget p1, p0, Lcom/hiya/stingray/ui/local/e/b;->r:I

    if-gtz p1, :cond_2

    .line 13
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->V1()I

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/ui/local/e/b;->r:I

    goto :goto_1

    .line 15
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/hiya/stingray/ui/local/e/b;->r:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->x1(I)V

    :cond_3
    return-void

    .line 18
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v7

    :cond_5
    const-string p1, "callLogAdapter"

    .line 19
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v7

    .line 20
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v7
.end method

.method public d0(Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/t/d0;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    const-string v1, "callLogAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/s;->k(Ljava/util/Map;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->U1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "listTextView"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/calllog/s;->getItemCount()I

    move-result p2

    if-lez p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/e/b;->p:Lcom/hiya/stingray/util/a0;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/hiya/stingray/ui/local/e/b$a;

    invoke-direct {p2}, Lcom/hiya/stingray/ui/local/e/b$a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/util/a0;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "rxEventBus"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public f0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->t:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->t:Ljava/lang/Boolean;

    .line 3
    sget v0, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/local/e/b$f;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/e/b$f;-><init>(Lcom/hiya/stingray/ui/local/e/b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/ui/local/e/b$g;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/e/b$g;-><init>(Lcom/hiya/stingray/ui/local/e/b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->V1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    const-string v2, "loadingShimmer"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->c()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->d()V

    :goto_1
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->u:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->u:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->u:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/e/b;->u:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public h1(Lcom/hiya/stingray/t/d0;)V
    .locals 2

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p1

    const-string v1, "callLogItem.identityData"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;->u1(Ljava/lang/String;Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/ui/contactdetails/PremiumRateCallDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    const-class v1, Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->p1(Landroidx/fragment/app/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i1()Lcom/hiya/stingray/ui/local/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->n:Lcom/hiya/stingray/ui/local/e/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callLogAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j1()Lcom/hiya/stingray/util/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->p:Lcom/hiya/stingray/util/a0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rxEventBus"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public k1(Lcom/hiya/stingray/t/d0;)V
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/hiya/stingray/ui/local/e/b$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/e/b$b;-><init>(Lcom/hiya/stingray/ui/local/e/b;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->D(Lcom/hiya/stingray/ui/local/e/b;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0076

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/e/b;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->l:Lcom/hiya/stingray/ui/calllog/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/t;->o()V

    return-void

    :cond_0
    const-string v0, "callLogPresenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->l:Lcom/hiya/stingray/ui/calllog/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/t;->p()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->q:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    const-string v1, "fiam_ready"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "callLogPresenter"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/e/b;->l:Lcom/hiya/stingray/ui/calllog/t;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->n3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    const-string v2, "callLogAdapter"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/s;->h()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/ui/local/e/b$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/e/b$c;-><init>(Lcom/hiya/stingray/ui/local/e/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b;->m:Lcom/hiya/stingray/ui/calllog/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/s;->i()Li/c/b0/b/v;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/stingray/ui/local/e/b$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/e/b$d;-><init>(Lcom/hiya/stingray/ui/local/e/b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->b1()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 10
    sget v0, Lcom/hiya/stingray/o;->B3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "searchBar"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f11031a

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/hiya/stingray/ui/local/e/b$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/e/b$e;-><init>(Lcom/hiya/stingray/ui/local/e/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    new-instance v2, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p2, "context!!"

    invoke-static {v3, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    sget p1, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b;->f1(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p2

    .line 14
    :cond_1
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_2
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_3
    invoke-static {v2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "callLogPresenter"

    .line 17
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method
