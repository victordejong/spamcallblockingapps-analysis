.class public final Lcom/hiya/stingray/ui/common/n;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/common/n$b;,
        Lcom/hiya/stingray/ui/common/n$d;,
        Lcom/hiya/stingray/ui/common/n$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hiya/stingray/ui/common/n$b;

.field private final e:Landroid/content/Context;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Landroidx/recyclerview/widget/RecyclerView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultAdapter"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n;->e:Landroid/content/Context;

    iput p2, p0, Lcom/hiya/stingray/ui/common/n;->f:I

    iput p3, p0, Lcom/hiya/stingray/ui/common/n;->g:I

    iput p4, p0, Lcom/hiya/stingray/ui/common/n;->h:I

    iput-object p5, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/n;->a:Z

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    .line 4
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n;->c:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/hiya/stingray/ui/common/n$a;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/common/n$a;-><init>(Lcom/hiya/stingray/ui/common/n;)V

    invoke-virtual {p5, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/common/n;)Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/ui/common/n;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/n;->a:Z

    return-void
.end method

.method private final i(Lcom/hiya/stingray/ui/common/n$d;ILandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/n$d;->n()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/hiya/stingray/ui/common/n;->f:I

    invoke-static {p3, v1}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/n$d;->n()Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/n$d;->n()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/ui/common/n$c;

    invoke-virtual {p2}, Lcom/hiya/stingray/ui/common/n$c;->c()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/ui/common/n$c;

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/common/n$c;->b()I

    move-result v3

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p1, v2

    return p1
.end method

.method public final g(Lcom/hiya/stingray/ui/common/n$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n;->d:Lcom/hiya/stingray/ui/common/n$b;

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/n;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    int-to-long v0, v0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/n;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/n$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/n$c;->d()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/n;->d:Lcom/hiya/stingray/ui/common/n$b;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, -0x80000000

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/n;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemViewType(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public final h(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newSections"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    sget-object p1, Lcom/hiya/stingray/ui/common/n$e;->f:Lcom/hiya/stingray/ui/common/n$e;

    invoke-static {v0, p1}, Lkotlin/s/k;->v(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/common/n$c;

    .line 5
    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/n$c;->a()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/ui/common/n$c;->e(I)V

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/n$c;->b()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Lcom/hiya/stingray/ui/common/n$c;

    .line 10
    invoke-virtual {v1}, Lcom/hiya/stingray/ui/common/n$c;->d()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n;->c:Ljava/util/List;

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/common/n;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->d:Lcom/hiya/stingray/ui/common/n$b;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "sections.get(position)"

    invoke-static {p2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/hiya/stingray/ui/common/n$c;

    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/common/n$b;->b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/common/n$c;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    check-cast p1, Lcom/hiya/stingray/ui/common/n$d;

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->e:Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0}, Lcom/hiya/stingray/ui/common/n;->i(Lcom/hiya/stingray/ui/common/n$d;ILandroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/common/n;->f(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->i:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    const-string p2, "defaultAdapter.onCreateV\u2026wHolder(parent, viewType)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n;->d:Lcom/hiya/stingray/ui/common/n$b;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/hiya/stingray/ui/common/n$b;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 5
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/n;->e:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/hiya/stingray/ui/common/n;->g:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/hiya/stingray/ui/common/n$d;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/hiya/stingray/ui/common/n;->h:I

    invoke-direct {p2, p1, v0}, Lcom/hiya/stingray/ui/common/n$d;-><init>(Landroid/view/View;I)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method
