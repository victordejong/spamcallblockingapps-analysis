.class public abstract Lcom/tenor/android/core/measurable/MeasurableViewHolder;
.super Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/measurable/IMeasurableViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CTX::",
        "Lcom/tenor/android/core/view/IBaseView;",
        ">",
        "Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder<",
        "TCTX;>;",
        "Lcom/tenor/android/core/measurable/IMeasurableViewHolder;"
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mDetached:Z

.field private mInitialized:Z

.field private final mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tenor/android/core/measurable/MeasurableViewHolderData<",
            "Lcom/tenor/android/core/measurable/MeasurableViewHolder<",
            "TCTX;>;>;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/tenor/android/core/measurable/MeasurableRecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tenor/android/core/view/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TCTX;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-direct {p1, p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;-><init>(Lcom/tenor/android/core/measurable/IMeasurableViewHolder;)V

    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    return-void
.end method

.method private static getThreshold(Lcom/tenor/android/core/model/impl/Result;)F
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/Result;->getBadgeInfo()Lcom/tenor/android/core/model/impl/BadgeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/Result;->getBadgeInfo()Lcom/tenor/android/core/model/impl/BadgeInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tenor/android/core/model/impl/BadgeInfo;->getThreshold()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method


# virtual methods
.method public declared-synchronized attachMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/tenor/android/core/measurable/MeasurableRecyclerView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/tenor/android/core/measurable/MeasurableRecyclerView;

    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mRecyclerView:Lcom/tenor/android/core/measurable/MeasurableRecyclerView;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mAttached:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mDetached:Z

    .line 5
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurer can only be attached to a MeasurableRecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detachMeasurer()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mAttached:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mDetached:Z

    .line 3
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->flush(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->flush(Landroid/content/Context;)V

    return-void
.end method

.method public getMeasurableData()Lcom/tenor/android/core/measurable/MeasurableViewHolderData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mRecyclerView:Lcom/tenor/android/core/measurable/MeasurableRecyclerView;

    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mAttached:Z

    return v0
.end method

.method public isDetached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mDetached:Z

    return v0
.end method

.method public declared-synchronized measure()F
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->measure(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized measure(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mInitialized:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getThreshold()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderHelper;->calculateVisibleFraction(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;F)F

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {v0, p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setVisibleFraction(F)V

    .line 5
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {v0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->isVisualPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/tenor/android/core/widget/viewholder/WeakRefViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/tenor/android/core/util/AbstractLayoutManagerUtils;->getVisualPosition(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {v1, v0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setVisualPosition(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return p1

    .line 9
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setVisibleFraction(F)V

    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewHolder must be attached to a non-null RecyclerView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setVisibleFraction(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onBindMeasurableViewHolderData(Lcom/tenor/android/core/model/impl/Result;Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/model/impl/Result;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-static {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->getThreshold(Lcom/tenor/android/core/model/impl/Result;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setThreshold(F)V

    .line 3
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1, p2}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setEnhancedContent(Z)V

    .line 4
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->updateTimestamp()V

    .line 5
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAdapterPosition()I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pauseMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resumeMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolder;->mMeasurableViewHolderData:Lcom/tenor/android/core/measurable/MeasurableViewHolderData;

    invoke-virtual {p1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
