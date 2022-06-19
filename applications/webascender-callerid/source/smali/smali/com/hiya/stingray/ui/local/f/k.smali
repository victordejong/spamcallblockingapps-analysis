.class public final Lcom/hiya/stingray/ui/local/f/k;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/n/k;
.implements Lcom/hiya/stingray/ui/local/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/f/k$a;
    }
.end annotation


# static fields
.field private static final s:[Lcom/hiya/stingray/ui/local/f/f;

.field public static final t:Lcom/hiya/stingray/ui/local/f/k$a;


# instance fields
.field private l:Lcom/hiya/stingray/ui/local/f/j;

.field private m:Lcom/hiya/stingray/ui/common/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hiya/stingray/ui/common/n<",
            "Landroidx/recyclerview/widget/RecyclerView$d0;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/hiya/stingray/t/h1/d;

.field private final o:Landroid/os/Handler;

.field public p:Lcom/hiya/stingray/ui/local/f/m/d;

.field public q:Lcom/hiya/stingray/manager/e1;

.field private r:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hiya/stingray/ui/local/f/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/f/k$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/local/f/k;->t:Lcom/hiya/stingray/ui/local/f/k$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/stingray/ui/local/f/f;

    .line 1
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->RATING:Lcom/hiya/stingray/ui/local/f/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->DIR_SERVICE:Lcom/hiya/stingray/ui/local/f/f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->COUPONS:Lcom/hiya/stingray/ui/local/f/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->CONTACT_INFO:Lcom/hiya/stingray/ui/local/f/f;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/hiya/stingray/ui/local/f/f;->DETAIL_INFO:Lcom/hiya/stingray/ui/local/f/f;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lcom/hiya/stingray/ui/local/f/k;->s:[Lcom/hiya/stingray/ui/local/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->o:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/local/f/k;)Lcom/hiya/stingray/t/h1/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "item"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/local/f/k;[Lcom/hiya/stingray/ui/local/f/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->k1([Lcom/hiya/stingray/ui/local/f/f;)V

    return-void
.end method

.method private final i1([Lcom/hiya/stingray/ui/local/f/f;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hiya/stingray/ui/local/f/f;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 3
    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/f/f;->getHasSectionHeader()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    new-instance v6, Lcom/hiya/stingray/ui/common/n$c;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/f/f;->getNameId()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "context!!.getString(sec.nameId)"

    invoke-static {v4, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {v6, v3, v4}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final k1([Lcom/hiya/stingray/ui/local/f/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->l:Lcom/hiya/stingray/ui/local/f/j;

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/f/j;->f([Lcom/hiya/stingray/ui/local/f/f;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->l:Lcom/hiya/stingray/ui/local/f/j;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/f/j;->d(Lcom/hiya/stingray/t/h1/d;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->m:Lcom/hiya/stingray/ui/common/n;

    const-string v1, "sectionedAdapter"

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->i1([Lcom/hiya/stingray/ui/local/f/f;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 4
    sget p1, Lcom/hiya/stingray/o;->x0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "detailRecyclerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->m:Lcom/hiya/stingray/ui/common/n;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "item"

    .line 6
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_4
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final l1()V
    .locals 5

    .line 1
    sget v0, Lcom/hiya/stingray/o;->w0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "detailHeaderTitleTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    const/4 v2, 0x0

    const-string v3, "item"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->v0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "detailHeaderSubtitleTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/t/n;->d()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v4, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/hiya/stingray/t/h1/d;->a()Lcom/hiya/stingray/t/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hiya/stingray/t/n;->g()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v1, v4}, Lcom/hiya/stingray/util/p;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->t0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v4, "detailHeaderBgIv"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v4, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/hiya/stingray/t/h1/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/x;->g(Landroid/widget/ImageView;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/h1/d;->k()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hiya/stingray/o;->u0:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f070071

    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/f0;->g(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    sget v0, Lcom/hiya/stingray/o;->u0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_6
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public A0()Landroid/widget/TextView;
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->w0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "detailHeaderTitleTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public P0()Landroid/widget/ImageView;
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->u0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "detailHeaderIv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public X([Lcom/hiya/stingray/ui/local/f/f;)V
    .locals 2

    const-string v0, "sections"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->o:Landroid/os/Handler;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/k$b;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/local/f/k$b;-><init>(Lcom/hiya/stingray/ui/local/f/k;[Lcom/hiya/stingray/ui/local/f/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->r:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->r:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->r:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public h0(Lcom/hiya/stingray/t/h1/c;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->l:Lcom/hiya/stingray/ui/local/f/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/f/j;->c(Lcom/hiya/stingray/t/h1/c;)V

    return-void

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final j1()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->q:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final m1()V
    .locals 6

    .line 1
    sget v0, Lcom/hiya/stingray/o;->y0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const-string v2, "detailToolBar"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "activity!!"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v1, v3, v5, v4}, Lcom/hiya/stingray/util/e0;->r(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0d0001

    invoke-static {v1, v5, v2}, Lcom/hiya/stingray/util/e0;->u(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hiya/stingray/util/e0;->D(Landroid/app/Activity;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/hiya/stingray/ui/local/f/k$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/f/k$d;-><init>(Lcom/hiya/stingray/ui/local/f/k;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->F(Lcom/hiya/stingray/ui/local/f/k;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "directory_item"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/hiya/stingray/t/h1/d;

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.model.local.DirectoryItem"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing DirectoryItem.  Use newInstance()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Lcom/hiya/stingray/ui/local/f/j;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/local/f/j;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->l:Lcom/hiya/stingray/ui/local/f/j;

    const-string v0, "adapter"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 7
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/f/k;->p:Lcom/hiya/stingray/ui/local/f/m/d;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/ui/local/f/j;->e(Lcom/hiya/stingray/ui/local/f/m/e;)V

    .line 8
    new-instance p1, Lcom/hiya/stingray/ui/common/n;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v2, "context!!"

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f06019a

    const v6, 0x7f0c00c0

    const v7, 0x7f0903bb

    .line 10
    iget-object v8, p0, Lcom/hiya/stingray/ui/local/f/k;->l:Lcom/hiya/stingray/ui/local/f/j;

    if-eqz v8, :cond_3

    move-object v3, p1

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->m:Lcom/hiya/stingray/ui/common/n;

    return-void

    .line 12
    :cond_3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_5
    const-string p1, "presenter"

    .line 14
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c00b6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f060188

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->p(Landroid/app/Activity;I)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/k;->Z0()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k;->q:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "caller_profile"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "local_business"

    .line 5
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "view_screen"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->x0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string p2, "detailRecyclerView"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/f/k;->l1()V

    .line 4
    sget-object p1, Lcom/hiya/stingray/ui/local/f/k;->s:[Lcom/hiya/stingray/ui/local/f/f;

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->k1([Lcom/hiya/stingray/ui/local/f/f;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    const-string p2, "item"

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/d;->j()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 8
    :goto_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 9
    :goto_2
    sget p1, Lcom/hiya/stingray/o;->K:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v5, "callFab"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    const/16 v3, 0x8

    :cond_5
    invoke-virtual {v4, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lcom/hiya/stingray/ui/local/f/k$c;

    invoke-direct {v2, p0, v1}, Lcom/hiya/stingray/ui/local/f/k$c;-><init>(Lcom/hiya/stingray/ui/local/f/k;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->p:Lcom/hiya/stingray/ui/local/f/m/d;

    const-string v1, "presenter"

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/k;->p:Lcom/hiya/stingray/ui/local/f/m/d;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/local/f/m/d;->E(Lcom/hiya/stingray/t/h1/d;)V

    .line 13
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/f/k;->m1()V

    .line 14
    new-instance p1, Lcom/hiya/stingray/ui/local/f/e;

    .line 15
    sget v1, Lcom/hiya/stingray/o;->m:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v2, "appBarLayout"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget v2, Lcom/hiya/stingray/o;->A4:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "toolbarTitle"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p1, v1, v3, p0}, Lcom/hiya/stingray/ui/local/f/e;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lcom/hiya/stingray/ui/local/f/d;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k;->n:Lcom/hiya/stingray/t/h1/d;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/app/Activity;

    const p2, 0x106000d

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->p(Landroid/app/Activity;I)V

    return-void

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_7
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_8
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_a
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_b
    invoke-static {p2}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public w()Landroid/widget/TextView;
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->v0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/f/k;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "detailHeaderSubtitleTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
