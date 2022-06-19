.class public Lcom/tenor/android/core/measurable/ViewHolderDataManager;
.super Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/measurable/IViewHolderDataManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue<",
        "Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;",
        ">;",
        "Lcom/tenor/android/core/measurable/IViewHolderDataManager;"
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x5

.field private static final MAX_POOL_SIZE:I = 0x1e

.field private static sManager:Lcom/tenor/android/core/measurable/ViewHolderDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;-><init>()V

    return-void
.end method

.method public static get()Lcom/tenor/android/core/measurable/ViewHolderDataManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->sManager:Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    invoke-direct {v0}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;-><init>()V

    sput-object v0, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->sManager:Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->sManager:Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    return-object v0
.end method

.method public static declared-synchronized push(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderData;)V
    .locals 4

    const-class v0, Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/tenor/android/core/util/AbstractLocaleUtils;->getUtcOffset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->get()Lcom/tenor/android/core/measurable/ViewHolderDataManager;

    move-result-object v2

    new-instance v3, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;

    invoke-direct {v3, p1, v1}, Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;-><init>(Lcom/tenor/android/core/measurable/MeasurableViewHolderData;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->push(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized push(Landroid/content/Context;Lcom/tenor/android/core/measurable/MeasurableViewHolderEvent;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;->add(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;->size()I

    move-result p2

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    const p2, 0x7fffffff

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->send(Landroid/content/Context;I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;->size()I

    move-result p2

    const/4 v0, 0x5

    if-lt p2, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/tenor/android/core/measurable/ViewHolderDataManager;->send(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized send(Landroid/content/Context;I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tenor/android/core/concurrent/ConcurrentFifoQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, v0}, Lcom/tenor/android/core/network/ApiClient;->registerActions(Landroid/content/Context;Ljava/util/List;)Lx3/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
