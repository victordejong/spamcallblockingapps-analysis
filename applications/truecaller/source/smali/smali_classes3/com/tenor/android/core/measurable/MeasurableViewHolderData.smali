.class public Lcom/tenor/android/core/measurable/MeasurableViewHolderData;
.super Lcom/tenor/android/core/weakref/WeakRefObject;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH::",
        "Lcom/tenor/android/core/measurable/IMeasurableViewHolder;",
        ">",
        "Lcom/tenor/android/core/weakref/WeakRefObject<",
        "TVH;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x960fa7e5520a9d1L


# instance fields
.field private mAccumulatedVisibleCount:I

.field private mAccumulatedVisibleDuration:I

.field private mAdapterPosition:I

.field private mEnhancedContent:Z

.field private mId:Ljava/lang/String;

.field private mThreshold:F

.field private mTimestampOnVisible:J

.field private mVisibility:I

.field private mVisibleFraction:F

.field private mVisualPosition:Ljava/lang/String;
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tenor/android/core/measurable/IMeasurableViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/weakref/WeakRefObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibility:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    .line 4
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleCount:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibleFraction:F

    const-string v0, "UNKNOWN"

    .line 7
    iput-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisualPosition:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mId:Ljava/lang/String;

    .line 9
    iput-boolean p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mEnhancedContent:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mThreshold:F

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    .line 12
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetTimestamp()V

    .line 13
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetCounts()V

    return-void
.end method

.method private becomesInvisible()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J

    sub-long/2addr v0, v2

    .line 3
    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    .line 4
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetTimestamp()V

    const-string v0, "==> item["

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] becomes Invisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)I

    return-void
.end method

.method private becomesVisible()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->updateTimestamp()V

    .line 2
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleCount:I

    const-string v0, "==> item["

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] becomes Visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized resetCounts()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    .line 2
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetTimestamp()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 1
    :try_start_0
    iput-wide v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    .line 1
    :try_start_0
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibility:I

    .line 2
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetTimestamp()V

    .line 3
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetCounts()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibleFraction:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->setVisibleFraction(F)V

    .line 2
    iget-boolean v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mEnhancedContent:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAccumulatedVisibleDuration()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAccumulatedVisibleCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> flushed\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tenor/android/core/util/AbstractLogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1, p0}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->push(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderData;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->clear()V
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

.method public declared-synchronized getAccumulatedVisibleCount()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedVisibleDuration()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdapterPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->hasRef()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    invoke-interface {v0}, Lcom/tenor/android/core/measurable/IViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    invoke-interface {v0}, Lcom/tenor/android/core/measurable/IViewHolder;->getAdapterPosition()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    .line 6
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    invoke-interface {v1}, Lcom/tenor/android/core/measurable/IViewHolder;->getAdapterPosition()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/tenor/android/core/weakref/WeakRefObject;->getWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    invoke-interface {v0}, Lcom/tenor/android/core/measurable/IViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    .line 8
    :cond_2
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAdapterPosition:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mThreshold:F

    return v0
.end method

.method public getVisibleFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibleFraction:F

    return v0
.end method

.method public getVisualPosition()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisualPosition:Ljava/lang/String;

    return-object v0
.end method

.method public isVisualPositionUnknown()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getVisualPosition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized pause()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J

    sub-long/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mAccumulatedVisibleDuration:I

    .line 5
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->resetTimestamp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->updateTimestamp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnhancedContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mEnhancedContent:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mId:Ljava/lang/String;

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mThreshold:F

    return-void
.end method

.method public declared-synchronized setVisibleFraction(F)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibleFraction:F

    iget v1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mThreshold:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2
    :goto_1
    iput p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisibleFraction:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int p1, v0, v2

    if-nez p1, :cond_2

    .line 3
    monitor-exit p0

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 4
    :try_start_1
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->becomesVisible()V

    goto :goto_2

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->becomesInvisible()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVisualPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/ItemVisualPosition$Value;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisualPosition:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "adapter_pos: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "source_id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mId:Ljava/lang/String;

    const-string v3, "visual_pos: "

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mVisualPosition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "viewed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAccumulatedVisibleDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "counted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->getAccumulatedVisibleCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enhanced_content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mEnhancedContent:Z

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateTimestamp()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tenor/android/core/measurable/MeasurableViewHolderData;->mTimestampOnVisible:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
