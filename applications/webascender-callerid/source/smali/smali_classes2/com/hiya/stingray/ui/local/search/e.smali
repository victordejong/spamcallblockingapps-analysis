.class public final Lcom/hiya/stingray/ui/local/search/e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/search/e$d;,
        Lcom/hiya/stingray/ui/local/search/e$e;,
        Lcom/hiya/stingray/ui/local/search/e$c;,
        Lcom/hiya/stingray/ui/local/search/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/hiya/stingray/t/h1/i;

.field private d:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/recyclerview/widget/RecyclerView$i;

.field private f:I

.field private final g:Landroid/content/Context;

.field private final h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

.field private final i:Lcom/hiya/stingray/ui/local/common/c;

.field private final j:Lcom/hiya/stingray/ui/login/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/ui/calllog/SearchListAdapter;Lcom/hiya/stingray/ui/local/common/c;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/ui/login/o;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchListAdapter"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoryAdapter"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    iput-object p5, p0, Lcom/hiya/stingray/ui/local/search/e;->j:Lcom/hiya/stingray/ui/login/o;

    .line 2
    new-instance p1, Lcom/hiya/stingray/ui/local/search/e$f;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/search/e$f;-><init>(Lcom/hiya/stingray/ui/local/search/e;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->e:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 3
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->e:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 5
    new-instance p1, Lcom/hiya/stingray/ui/local/search/e$a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/search/e$a;-><init>(Lcom/hiya/stingray/ui/local/search/e;)V

    invoke-virtual {p3, p1}, Lcom/hiya/stingray/ui/local/common/c;->g(Lkotlin/w/b/l;)V

    const-string p1, "local_search_min_req_length"

    .line 6
    invoke-virtual {p4, p1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/hiya/stingray/ui/local/search/e;->f:I

    return-void
.end method

.method private final g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/hiya/stingray/ui/local/search/e;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/c;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final j()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final o()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final c()Lcom/hiya/stingray/ui/local/common/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final e()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->b:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final f()Lcom/hiya/stingray/ui/calllog/SearchListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/common/c;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->o()Z

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->i()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->j()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    if-nez p1, :cond_4

    const/16 v1, 0x8

    goto/16 :goto_2

    .line 4
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x2

    goto :goto_2

    .line 5
    :cond_5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x3

    goto :goto_2

    .line 7
    :cond_6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_7

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->j:Lcom/hiya/stingray/ui/login/o;

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/search/e;->g:Landroid/content/Context;

    sget-object v4, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v1, 0x7

    goto :goto_2

    .line 10
    :cond_7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_8

    .line 11
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    goto :goto_2

    .line 12
    :cond_8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    if-le p1, v0, :cond_9

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_9

    const/4 v1, 0x5

    goto :goto_2

    .line 14
    :cond_9
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 15
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->p()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x6

    :cond_a
    :goto_2
    return v1
.end method

.method public final k(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->d:Lkotlin/w/b/a;

    return-void
.end method

.method public final l(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->a:Lkotlin/w/b/a;

    return-void
.end method

.method public final m(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->b:Lkotlin/w/b/l;

    return-void
.end method

.method public final n(Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->c:Lcom/hiya/stingray/t/h1/i;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$d0;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 p2, 0x6

    if-eq v0, p2, :cond_2

    const/4 p2, 0x7

    if-eq v0, p2, :cond_1

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/hiya/stingray/ui/local/search/e$b;

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/e;->j:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/search/e$b;->n(Lcom/hiya/stingray/ui/login/o;)V

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/hiya/stingray/ui/local/search/e$c;

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/e;->d:Lkotlin/w/b/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/search/e$c;->n(Lkotlin/w/b/a;)V

    goto :goto_0

    .line 4
    :cond_2
    check-cast p1, Lcom/hiya/stingray/ui/local/search/e$e;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/search/e$e;->n()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    .line 6
    check-cast p1, Lcom/hiya/stingray/ui/local/common/c$a;

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->g()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/search/e;->o()Z

    move-result v1

    sub-int/2addr p2, v1

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/common/c;->e(Lcom/hiya/stingray/ui/local/common/c$a;I)V

    goto :goto_0

    .line 9
    :cond_4
    check-cast p1, Lcom/hiya/stingray/ui/local/search/e$d;

    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/e;->c:Lcom/hiya/stingray/t/h1/i;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->a:Lkotlin/w/b/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/e;->j:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {p1, p2, v0, v1}, Lcom/hiya/stingray/ui/local/search/e$d;->n(Lcom/hiya/stingray/t/h1/i;Lkotlin/w/b/a;Lcom/hiya/stingray/ui/login/o;)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchListAdapter.onCrea\u2026AG)\n                    }"

    const/4 v1, 0x0

    const-string v2, "skip"

    const v3, 0x7f09000b

    packed-switch p2, :pswitch_data_0

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p2

    const-string p1, "searchListAdapter.onCreateViewHolder(parent, 1)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p2, Lcom/hiya/stingray/ui/local/search/e$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0041

    .line 3
    invoke-virtual {v0, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026on_header, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/search/e$b;-><init>(Landroid/view/View;)V

    .line 5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    new-instance p2, Lcom/hiya/stingray/ui/local/search/e$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00b9

    .line 7
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ermission, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/search/e$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/local/common/c;->f(Landroid/view/ViewGroup;I)Lcom/hiya/stingray/ui/local/common/c$a;

    move-result-object p2

    goto :goto_0

    .line 10
    :pswitch_3
    new-instance p2, Lcom/hiya/stingray/ui/local/search/e$e;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0127

    .line 11
    invoke-virtual {v0, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026g_results, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/search/e$e;-><init>(Landroid/view/View;)V

    .line 13
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :pswitch_4
    new-instance p2, Lcom/hiya/stingray/ui/local/search/e$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c00be

    .line 15
    invoke-virtual {v0, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ch_header, parent, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/search/e$d;-><init>(Landroid/view/View;)V

    .line 17
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 18
    :pswitch_5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p2

    const-string p1, "searchListAdapter.onCrea\u2026wHolder(parent, viewType)"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_6
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p2

    .line 20
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 21
    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_7
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/hiya/stingray/ui/calllog/SearchListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p2

    .line 23
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->h:Lcom/hiya/stingray/ui/calllog/SearchListAdapter;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->e:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/search/e;->i:Lcom/hiya/stingray/ui/local/common/c;

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/search/e;->e:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method
