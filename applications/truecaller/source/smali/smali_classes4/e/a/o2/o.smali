.class public final Le/a/o2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/a;
.implements Le/a/o2/s;


# instance fields
.field public a:Z

.field public final b:[Le/a/o2/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Le/a/o2/n<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic c:Le/a/o2/e;


# direct methods
.method public varargs constructor <init>([Le/a/o2/n;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/a/o2/n<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "itemTypeConfigs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/o2/e;

    invoke-direct {v0}, Le/a/o2/e;-><init>()V

    iput-object v0, p0, Le/a/o2/o;->c:Le/a/o2/e;

    iput-object p1, p0, Le/a/o2/o;->b:[Le/a/o2/n;

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    .line 4
    aget-object v0, p1, v2

    .line 5
    iget-object v0, v0, Le/a/o2/n;->a:Le/a/o2/p;

    .line 6
    invoke-interface {v0}, Le/a/o2/b;->getItemCount()I

    move-result v0

    .line 7
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 8
    iget-object v5, v5, Le/a/o2/n;->a:Le/a/o2/p;

    .line 9
    invoke-interface {v5}, Le/a/o2/b;->getItemCount()I

    move-result v5

    if-eq v5, v0, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_3
    if-nez v1, :cond_4

    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All item type data sets should have same size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one item type required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Le/a/o2/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/o2/n<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o2/o;->b:[Le/a/o2/n;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Le/a/o2/n;->a:Le/a/o2/p;

    .line 4
    invoke-interface {v4, p1}, Le/a/o2/p;->m(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one delegate should support position "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unwrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o2/o;->c:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->b(Ls1/z/b/l;)V

    return-void
.end method

.method public f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;
    .locals 1

    const-string v0, "outerDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Le/m/d/y/n;->D1(Le/a/o2/a;Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/o2/o;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o2/o;->b:[Le/a/o2/n;

    invoke-static {v0}, Le/q/f/a/d/a;->N1([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o2/n;

    .line 3
    iget-object v0, v0, Le/a/o2/n;->a:Le/a/o2/p;

    .line 4
    invoke-interface {v0}, Le/a/o2/b;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/o2/o;->a(I)Le/a/o2/n;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/o2/n;->a:Le/a/o2/p;

    .line 3
    invoke-interface {v0, p1}, Le/a/o2/b;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/o2/o;->a(I)Le/a/o2/n;

    move-result-object p1

    .line 2
    iget p1, p1, Le/a/o2/n;->b:I

    return p1
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Le/a/o2/o;->c:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Le/a/o2/o;->a(I)Le/a/o2/n;

    move-result-object v0

    const-string v1, "view"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/o2/n;->a:Le/a/o2/p;

    invoke-interface {v0, p1, p2}, Le/a/o2/b;->G(Ljava/lang/Object;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o2/o;->b:[Le/a/o2/n;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Le/a/o2/n;->b:I

    if-ne v5, p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    .line 4
    iget-object v0, v4, Le/a/o2/n;->c:Ls1/z/b/l;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;

    if-eqz p1, :cond_3

    return-object p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported view type requested "

    invoke-static {v0, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public s(I)I
    .locals 0

    return p1
.end method

.method public t(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Le/a/o2/h;->b:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Le/a/o2/o;->a(I)Le/a/o2/n;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/a/o2/n;->a:Le/a/o2/p;

    .line 4
    instance-of v2, v0, Le/a/o2/l;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/o2/l;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/o2/l;->v(Le/a/o2/h;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/o2/o;->a:Z

    return-void
.end method

.method public v(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o2/o;->b:[Le/a/o2/n;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 3
    iget v5, v5, Le/a/o2/n;->b:I

    if-ne v5, p1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method
