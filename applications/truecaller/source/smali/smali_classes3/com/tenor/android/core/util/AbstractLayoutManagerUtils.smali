.class public abstract Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFirstCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    invoke-static {p0, v2}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findFirstCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v4

    if-eq v3, v1, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static findFirstCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;I)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v3, v3, v2

    .line 6
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    .line 9
    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget p0, v0, p1

    return p0

    .line 11
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public static findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 13
    invoke-static {p0, v2}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v4

    if-eq v3, v1, :cond_0

    if-le v3, v4, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;I)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v3, v3, v2

    .line 6
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    .line 9
    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget p0, v0, p1

    return p0

    .line 11
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public static findLastCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 13
    invoke-static {p0, v0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findLastCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v3

    if-eq v2, v1, :cond_0

    if-ge v2, v3, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static findLastCompletelyVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;I)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v3, v3, v2

    .line 6
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    .line 9
    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget p0, v0, p1

    return p0

    .line 11
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public static findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 13
    invoke-static {p0, v0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v3

    if-eq v2, v1, :cond_0

    if-ge v2, v3, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;I)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    aget-object v3, v3, v2

    .line 6
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i(IIZ)I

    move-result v3

    .line 9
    :goto_1
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    aget p0, v0, p1

    return p0

    .line 11
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public static getOrientation(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e:I

    return p0

    .line 4
    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method public static getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    return p0

    .line 4
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getSpanIndex(Landroid/view/ViewGroup$LayoutParams;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup$LayoutParams;",
            ">(TT;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    :goto_0
    return v1

    .line 5
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 7
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager$b;->e:I

    return p0

    :cond_2
    return v1
.end method

.method public static getVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)[I
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->isRightToLeft(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v2

    invoke-static {v2}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v5

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v6

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$o;I)I

    move-result v6

    .line 8
    :goto_1
    aget v7, v1, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    aput v5, v1, v3

    :cond_1
    if-le v5, v8, :cond_2

    .line 9
    aget v7, v1, v3

    if-ge v5, v7, :cond_2

    aput v5, v1, v3

    :cond_2
    const/4 v5, 0x1

    .line 10
    aget v7, v1, v5

    if-ne v7, v8, :cond_3

    aput v6, v1, v5

    :cond_3
    if-le v6, v8, :cond_4

    .line 11
    aget v7, v1, v5

    if-le v6, v7, :cond_4

    aput v6, v1, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static getVisualPosition(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getSpanIndex(Landroid/view/ViewGroup$LayoutParams;)I

    move-result p1

    .line 2
    invoke-static {p0, p1}, Lcom/tenor/android/core/constant/ItemVisualPosition;->parse(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isRightToLeft(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractUIUtils;->isRightToLeft(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p0

    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setReverseLayout(Landroidx/recyclerview/widget/RecyclerView$o;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/recyclerview/widget/RecyclerView$o;",
            ">(TT;Z)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_1
    :goto_0
    return-void
.end method
