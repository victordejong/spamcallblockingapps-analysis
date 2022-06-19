.class public Lcom/hiya/stingray/ui/contactdetails/section/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/contactdetails/section/n;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/x1;

.field private final c:Lcom/hiya/stingray/util/a0;

.field private final d:Lcom/hiya/stingray/ui/contactdetails/v;

.field private final e:Li/c/b0/c/a;

.field private final f:Lcom/hiya/stingray/manager/u3;

.field private final g:Lcom/hiya/stingray/manager/x3;

.field private h:Landroidx/recyclerview/widget/RecyclerView$n;

.field private i:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/x1;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/ui/contactdetails/v;Li/c/b0/c/a;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->b:Lcom/hiya/stingray/manager/x1;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->c:Lcom/hiya/stingray/util/a0;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->d:Lcom/hiya/stingray/ui/contactdetails/v;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->e:Li/c/b0/c/a;

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/section/m;->f()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->h:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 8
    iput-object p6, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->f:Lcom/hiya/stingray/manager/u3;

    .line 9
    iput-object p7, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->g:Lcom/hiya/stingray/manager/x3;

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/contactdetails/section/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/ui/contactdetails/section/m;)Lcom/hiya/stingray/ui/contactdetails/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->d:Lcom/hiya/stingray/ui/contactdetails/v;

    return-object p0
.end method

.method private e(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/t/j0;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hiya/stingray/t/n0;->i()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hiya/stingray/util/p;->g(Ljava/lang/String;Ljava/util/Map;)Lcom/hiya/stingray/t/v0;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/hiya/stingray/t/j0$a;->b()Lcom/hiya/stingray/t/j0$a;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/j0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/j0$a;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/t/j0$a;->i(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/j0$a;

    .line 6
    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/j0$a;->g(Ljava/util/Map;)Lcom/hiya/stingray/t/j0$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/t/j0$a;->a()Lcom/hiya/stingray/t/j0;

    move-result-object p1

    return-object p1
.end method

.method private f()Landroidx/recyclerview/widget/RecyclerView$n;
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/p;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/ui/common/p;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/common/p;->e(Z)V

    return-object v0
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->i:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DETAILS:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->O(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->d:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/v;->q()V

    :cond_0
    return-void
.end method

.method private synthetic i(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/t/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->p(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private synthetic k(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to fetch contactinfo"

    .line 1
    invoke-static {p3, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->e(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/t/j0;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->p(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private synthetic m(Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->c:Lcom/hiya/stingray/util/a0;

    invoke-static {v0, p1, v1, p2}, Lcom/hiya/stingray/util/u;->a(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/util/a0;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->d:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/ui/contactdetails/v;->f(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private p(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/m;->r(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V

    .line 2
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-static {p3}, Lcom/hiya/stingray/t/f1/b;->a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/m;->q(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Ljava/lang/String;)V

    return-void
.end method

.method private q(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/c0;

    .line 3
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->h:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 4
    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->c()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/c0;->h(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/ui/contactdetails/c0;->i(Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private r(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/contactdetails/b0;

    .line 2
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/b0;->i(Z)V

    .line 3
    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/contactdetails/b0;->n(Ljava/util/Map;)V

    .line 4
    invoke-virtual {p2}, Lcom/hiya/stingray/t/j0;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/contactdetails/b0;->m(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hiya/stingray/t/r0;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/ui/contactdetails/b0;->l(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->h:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->C(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->e:Li/c/b0/c/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/b0;->g()Li/c/b0/b/v;

    move-result-object p2

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/section/c;

    invoke-direct {v1, p0, p3}, Lcom/hiya/stingray/ui/contactdetails/section/c;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p2, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->e:Li/c/b0/c/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/contactdetails/b0;->h()Li/c/b0/b/v;

    move-result-object p2

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/m$a;

    invoke-direct {v0, p0, p3}, Lcom/hiya/stingray/ui/contactdetails/section/m$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/ui/contactdetails/d0;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;

    .line 2
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->sectionText:Landroid/widget/TextView;

    const v0, 0x7f1100c5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->f:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/hiya/stingray/manager/u3;->S(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->f:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p3}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 4
    :goto_0
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->lookupUpsell:Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->g:Lcom/hiya/stingray/manager/x3;

    const-string v3, "premium_details_upsell_title"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellBody:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->g:Lcom/hiya/stingray/manager/x3;

    const-string v3, "premium_details_upsell_body"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellIdentifyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->g:Lcom/hiya/stingray/manager/x3;

    const-string v3, "premium_details_upsell_button"

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->upsellIdentifyButton:Landroid/widget/Button;

    new-instance v2, Lcom/hiya/stingray/ui/contactdetails/section/b;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/contactdetails/section/b;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/m;)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/b0;

    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p3, v2, v3}, Lcom/hiya/stingray/ui/contactdetails/b0;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 10
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 12
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->phonesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 13
    new-instance p3, Lcom/hiya/stingray/ui/contactdetails/c0;

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->d:Lcom/hiya/stingray/ui/contactdetails/v;

    invoke-direct {p3, v2, v4, v5, v3}, Lcom/hiya/stingray/ui/contactdetails/c0;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/hiya/stingray/ui/contactdetails/v;Ljava/lang/String;)V

    .line 14
    iget-object v2, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 15
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    iget-object p3, p1, Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;->addressList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 17
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p3

    sget-object v2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-ne p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 18
    iget-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->b:Lcom/hiya/stingray/manager/x1;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/hiya/stingray/manager/x1;->b(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p3

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 19
    invoke-virtual {p3, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p3

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/section/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/d;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;)V

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/section/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/a;-><init>(Lcom/hiya/stingray/ui/contactdetails/section/m;Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;)V

    .line 20
    invoke-virtual {p3, v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->e:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_3

    .line 22
    :cond_3
    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->e(Lcom/hiya/stingray/t/d0;)Lcom/hiya/stingray/t/j0;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->p(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/j0;Lcom/hiya/stingray/t/d0;)V

    :goto_3
    return-void
.end method

.method public synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/section/m;->g(Landroid/view/View;)V

    return-void
.end method

.method public synthetic j(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/t/j0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/m;->i(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/t/j0;)V

    return-void
.end method

.method public synthetic l(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/section/m;->k(Lcom/hiya/stingray/ui/contactdetails/viewholder/ContactInfoViewHolder;Lcom/hiya/stingray/t/d0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic n(Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/section/m;->m(Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V

    return-void
.end method

.method public o(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/section/m;->i:Landroid/app/Activity;

    return-void
.end method
