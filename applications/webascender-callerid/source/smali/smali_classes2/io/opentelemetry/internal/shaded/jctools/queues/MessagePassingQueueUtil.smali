.class public final Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueueUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-interface {p1, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return v0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "c is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static drain(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "limit is negative: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "c is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static drain(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-interface {p3}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {p2, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v1

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p1, v2}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exit condition is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wait is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "c is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fill(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p3}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    sget v2, Lio/opentelemetry/internal/shaded/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-interface {p0, p1, v2}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->fill(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-interface {p2, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exit condition is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "waiter is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillBounded(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    sget v0, Lio/opentelemetry/internal/shaded/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-interface {p0}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->capacity()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueueUtil;->fillInBatchesToLimit(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;II)I

    move-result p0

    return p0
.end method

.method public static fillInBatchesToLimit(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;II)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;->fill(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v2

    if-nez v2, :cond_1

    long-to-int p0, v0

    return p0

    :cond_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-int p0, v0

    return p0
.end method

.method public static fillUnbounded(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue<",
            "TE;>;",
            "Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    sget v0, Lio/opentelemetry/internal/shaded/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    const/16 v1, 0x1000

    invoke-static {p0, p1, v0, v1}, Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueueUtil;->fillInBatchesToLimit(Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue;Lio/opentelemetry/internal/shaded/jctools/queues/MessagePassingQueue$Supplier;II)I

    move-result p0

    return p0
.end method
