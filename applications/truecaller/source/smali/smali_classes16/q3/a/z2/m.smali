.class public final Lq3/a/z2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0000\u0008\u0000\u0018\u00002\u00020*B\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002J!\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\r*\u0004\u0018\u00010\u0003H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020#8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020#8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "fair",
        "add",
        "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "addLast",
        "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalQueue",
        "",
        "offloadAllWorkTo",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V",
        "poll",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "pollBuffer",
        "queue",
        "pollTo",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z",
        "victim",
        "",
        "tryStealBlockingFrom",
        "(Lkotlinx/coroutines/scheduling/WorkQueue;)J",
        "tryStealFrom",
        "blockingOnly",
        "tryStealLastScheduled",
        "(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J",
        "decrementIfBlocking",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "buffer",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "",
        "getBufferSize$kotlinx_coroutines_core",
        "()I",
        "bufferSize",
        "getSize$kotlinx_coroutines_core",
        "size",
        "kotlinx-coroutines-core",
        ""
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lq3/a/z2/i;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic blockingTasksInBuffer:I

.field private volatile synthetic consumerIndex:I

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;

.field private volatile synthetic producerIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lq3/a/z2/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lq3/a/z2/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lq3/a/z2/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lq3/a/z2/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/z2/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lq3/a/z2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lq3/a/z2/m;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lq3/a/z2/m;->producerIndex:I

    .line 5
    iput v0, p0, Lq3/a/z2/m;->consumerIndex:I

    .line 6
    iput v0, p0, Lq3/a/z2/m;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lq3/a/z2/i;Z)Lq3/a/z2/i;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lq3/a/z2/m;->b(Lq3/a/z2/i;)Lq3/a/z2/i;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object p2, Lq3/a/z2/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/a/z2/i;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lq3/a/z2/m;->b(Lq3/a/z2/i;)Lq3/a/z2/i;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lq3/a/z2/i;)Lq3/a/z2/i;
    .locals 2

    .line 1
    iget-object v0, p1, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v0}, Lq3/a/z2/j;->B0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    sget-object v0, Lq3/a/z2/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 3
    :cond_1
    invoke-virtual {p0}, Lq3/a/z2/m;->c()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    return-object p1

    .line 4
    :cond_2
    iget v0, p0, Lq3/a/z2/m;->producerIndex:I

    and-int/2addr v0, v1

    .line 5
    :goto_1
    iget-object v1, p0, Lq3/a/z2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v1, p0, Lq3/a/z2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 8
    sget-object p1, Lq3/a/z2/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lq3/a/z2/m;->producerIndex:I

    iget v1, p0, Lq3/a/z2/m;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/z2/m;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq3/a/z2/m;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq3/a/z2/m;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final e()Lq3/a/z2/i;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/z2/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/z2/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq3/a/z2/m;->f()Lq3/a/z2/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f()Lq3/a/z2/i;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lq3/a/z2/m;->consumerIndex:I

    .line 2
    iget v1, p0, Lq3/a/z2/m;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 3
    sget-object v3, Lq3/a/z2/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lq3/a/z2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/z2/i;

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v1}, Lq3/a/z2/j;->B0()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 6
    sget-object v1, Lq3/a/z2/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_4
    return-object v0
.end method

.method public final g(Lq3/a/z2/m;)J
    .locals 8

    .line 1
    iget v0, p1, Lq3/a/z2/m;->consumerIndex:I

    .line 2
    iget v1, p1, Lq3/a/z2/m;->producerIndex:I

    .line 3
    iget-object v2, p1, Lq3/a/z2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    and-int/lit8 v4, v0, 0x7f

    .line 4
    iget v5, p1, Lq3/a/z2/m;->blockingTasksInBuffer:I

    if-nez v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lq3/a/z2/i;

    if-eqz v5, :cond_2

    .line 6
    iget-object v6, v5, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v6}, Lq3/a/z2/j;->B0()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    sget-object v0, Lq3/a/z2/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 9
    invoke-virtual {p0, v5, v7}, Lq3/a/z2/m;->a(Lq3/a/z2/i;Z)Lq3/a/z2/i;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v3}, Lq3/a/z2/m;->h(Lq3/a/z2/m;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Lq3/a/z2/m;Z)J
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p1, Lq3/a/z2/m;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lq3/a/z2/i;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 2
    iget-object v4, v0, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v4}, Lq3/a/z2/j;->B0()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-nez v5, :cond_3

    return-wide v1

    .line 3
    :cond_3
    sget-object v1, Lq3/a/z2/l;->e:Lq3/a/z2/h;

    invoke-virtual {v1}, Lq3/a/z2/h;->a()J

    move-result-wide v1

    .line 4
    iget-wide v4, v0, Lq3/a/z2/i;->a:J

    sub-long/2addr v1, v4

    .line 5
    sget-wide v4, Lq3/a/z2/l;->a:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_4

    sub-long/2addr v4, v1

    return-wide v4

    .line 6
    :cond_4
    sget-object v1, Lq3/a/z2/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v0, v3}, Lq3/a/z2/m;->a(Lq3/a/z2/i;Z)Lq3/a/z2/i;

    const-wide/16 p1, -0x1

    return-wide p1
.end method
