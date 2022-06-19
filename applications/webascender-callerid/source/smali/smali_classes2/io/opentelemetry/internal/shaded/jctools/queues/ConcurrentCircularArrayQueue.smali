.class abstract Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;
.super Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueueL0Pad;
.source "SourceFile"

# interfaces
.implements Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;
.implements Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;
.implements Lio/opentelemetry/internal/shaded/jctools/queues/QueueProgressIndicators;
.implements Lio/opentelemetry/internal/shaded/jctools/queues/SupportsIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueueL0Pad<",
        "TE;>;",
        "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;",
        "Lio/opentelemetry/internal/shaded/jctools/queues/QueueProgressIndicators;",
        "Lio/opentelemetry/internal/shaded/jctools/queues/SupportsIterator;"
    }
.end annotation


# instance fields
.field protected final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected final mask:J


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueueL0Pad;-><init>()V

    .line 2
    invoke-static {p1}, Lio/opentelemetry/internal/shaded/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    .line 3
    iput-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    .line 4
    invoke-static {p1}, Lio/opentelemetry/internal/shaded/jctools/util/UnsafeRefArrayAccess;->allocateRefArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public clear()V
    .locals 1

    .line 1
    :goto_0
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public currentConsumerIndex()J
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvConsumerIndex()J

    move-result-wide v1

    .line 2
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;->lvProducerIndex()J

    move-result-wide v3

    .line 3
    new-instance v8, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;

    iget-wide v5, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;->mask:J

    iget-object v7, p0, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue;->buffer:[Ljava/lang/Object;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/opentelemetry/internal/shaded/jctools/queues/ConcurrentCircularArrayQueue$WeakIterator;-><init>(JJJ[Ljava/lang/Object;)V

    return-object v8
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-static {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil;->size(Lio/opentelemetry/internal/shaded/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
