.class public Lcom/tenor/android/core/measurable/MeasurableRecyclerView;
.super Lcom/tenor/android/core/widget/WeakRefRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/measurable/IMeasurableRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/tenor/android/core/widget/WeakRefRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->onConstruct(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public flushMeasurableViewHolderDataSet()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->flushMeasurableViewHolderDataSet(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public notifyMeasurableViewHoldersOnPause()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyViewHoldersOnPause(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public notifyMeasurableViewHoldersOnRefresh()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyMeasurableViewHoldersOnRefresh(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public notifyMeasurableViewHoldersOnResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyViewHoldersOnResume(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public notifyViewHolderDataRangeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyMeasurableViewHolderDataRangeChanged(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public notifyViewHolderDataSetChanged()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->notifyMeasurableViewHolderDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
