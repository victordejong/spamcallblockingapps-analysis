.class public Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# static fields
.field private static final TYPE_MEASURABLE:I = 0x1

.field private static final TYPE_UNKNOWN:I = 0x0

.field private static final TYPE_UNMEASURABLE:I = -0x1


# instance fields
.field private mDragging:Z

.field private mDraggingEnd:I

.field private mDraggingStart:I

.field private mMeasurable:I

.field private mScriptDirectionState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    .line 3
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mMeasurable:I

    .line 5
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mScriptDirectionState:I

    return-void
.end method

.method private initScriptDirection(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mScriptDirectionState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tenor/android/core/checker/ScriptDirectionChecker;->checkSelfScriptDirection(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mScriptDirectionState:I

    :cond_0
    return-void
.end method

.method private onDragged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->updateVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    const-class v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    iget v1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    invoke-static {p1, v0, v1, v2}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;II)Ljava/util/List;

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
    invoke-interface {v1, p1}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->measure(Landroidx/recyclerview/widget/RecyclerView;)F

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    aget v1, p1, v0

    iget v3, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    if-ge v1, v3, :cond_0

    .line 3
    aget v0, p1, v0

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    :cond_0
    const/4 v0, 0x1

    .line 4
    aget v1, p1, v0

    if-le v1, v2, :cond_1

    aget v1, p1, v0

    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    if-le v1, v2, :cond_1

    .line 5
    aget p1, p1, v0

    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    :cond_1
    return-void
.end method

.method private validateMeasurable(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mMeasurable:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 2
    :cond_1
    instance-of p1, p1, Lcom/tenor/android/core/measurable/IMeasurableRecyclerView;

    if-eqz p1, :cond_2

    .line 3
    iput v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mMeasurable:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mMeasurable:I

    .line 5
    :goto_0
    iget p1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mMeasurable:I

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->initScriptDirection(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iput-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDragging:Z

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-boolean v1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDragging:Z

    .line 4
    invoke-static {p1}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)[I

    move-result-object p1

    .line 5
    aget p2, p1, v0

    iput p2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    .line 6
    aget p1, p1, v1

    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    goto :goto_1

    .line 7
    :cond_2
    iput-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDragging:Z

    .line 8
    invoke-direct {p0, p1}, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->updateVisibleRange(Landroidx/recyclerview/widget/RecyclerView;)V

    const-string p2, "==>  visible range: ["

    .line 9
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 10
    iget p2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    invoke-static {p1, p2, v2}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyMeasurableViewHolderDataRangeChanged(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingStart:I

    .line 12
    iput p2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDraggingEnd:I

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tenor/android/core/checker/ScriptDirectionChecker;->checkSelfScriptDirection(Landroid/content/Context;)I

    move-result v2

    .line 14
    iget v3, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mScriptDirectionState:I

    if-eq v3, p2, :cond_6

    if-eq v2, p2, :cond_6

    if-eq v3, v2, :cond_6

    .line 15
    const-class p2, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 16
    invoke-static {p1, p2}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->getViewHolders(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 18
    invoke-interface {v3}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->flush()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    invoke-static {p2}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getOrientation(Landroidx/recyclerview/widget/RecyclerView$o;)I

    move-result p2

    if-nez p2, :cond_5

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    if-ne v2, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-static {p1, v0}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->setReverseLayout(Landroidx/recyclerview/widget/RecyclerView$o;Z)V

    .line 21
    :cond_5
    iput v2, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mScriptDirectionState:I

    :cond_6
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/tenor/android/core/measurable/MeasurableOnScrollListener;->onDragged(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method
