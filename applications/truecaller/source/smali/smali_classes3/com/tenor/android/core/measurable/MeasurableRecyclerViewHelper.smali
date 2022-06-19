.class public Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flushMeasurableViewHolderDataSet(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    const-class v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 2
    invoke-static {p0, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 4
    invoke-interface {v0}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->flush()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tenor/android/core/measurable/IViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v1, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tenor/android/core/measurable/IViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    if-ltz p2, :cond_3

    if-lt p3, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-gt p2, p3, :cond_3

    .line 8
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    check-cast v0, Lcom/tenor/android/core/measurable/IViewHolder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static notifyMeasurableViewHolderDataRangeChanged(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    const-class v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    invoke-static {p0, v0, p1, p2}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;II)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 3
    invoke-interface {p2, p0}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->measure(Landroidx/recyclerview/widget/RecyclerView;)F

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static notifyMeasurableViewHolderDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyMeasurableViewHolderDataRangeChanged(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public static notifyMeasurableViewHoldersOnRefresh(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->flushMeasurableViewHolderDataSet(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static notifyViewHoldersOnPause(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 2
    invoke-static {p0, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 4
    invoke-interface {v1, p0}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->pauseMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyViewHoldersOnResume(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 2
    invoke-static {p0, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 4
    invoke-interface {v1, p0}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->resumeMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static onConstruct(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;

    invoke-direct {v0}, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 2
    new-instance v0, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;

    invoke-direct {v0, p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$q;)V

    return-void
.end method
