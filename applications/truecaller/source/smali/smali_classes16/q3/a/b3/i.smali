.class public final Lq3/a/b3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/b3/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00020\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\t\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001d\u0010\r\u001a\u00020\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eR\u0016\u0010\u0017\u001a\u00020\u00018V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00060\u00188\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u001c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreImpl;",
        "",
        "permits",
        "acquiredPermits",
        "<init>",
        "(II)V",
        "",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "acquireSlowPath",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "cont",
        "",
        "addAcquireToQueue",
        "(Lkotlinx/coroutines/CancellableContinuation;)Z",
        "release",
        "()V",
        "tryAcquire",
        "()Z",
        "tryResumeNextFromQueue",
        "tryResumeAcquire",
        "getAvailablePermits",
        "()I",
        "availablePermits",
        "Lkotlin/Function1;",
        "",
        "onCancellationRelease",
        "Lkotlin/jvm/functions/Function1;",
        "I",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/sync/Semaphore;"
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
.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile synthetic _availablePermits:I

.field public final a:I

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic deqIdx:J

.field private volatile synthetic enqIdx:J

.field private volatile synthetic head:Ljava/lang/Object;

.field private volatile synthetic tail:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lq3/a/b3/i;

    const-string v2, "head"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lq3/a/b3/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "deqIdx"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lq3/a/b3/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "tail"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/b3/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/b3/i;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/b3/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq3/a/b3/i;->a:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lq3/a/b3/i;->deqIdx:J

    .line 3
    iput-wide v0, p0, Lq3/a/b3/i;->enqIdx:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    if-ltz p2, :cond_1

    if-gt p2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Lq3/a/b3/k;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lq3/a/b3/k;-><init>(JLq3/a/b3/k;I)V

    .line 5
    iput-object v2, p0, Lq3/a/b3/i;->head:Ljava/lang/Object;

    .line 6
    iput-object v2, p0, Lq3/a/b3/i;->tail:Ljava/lang/Object;

    sub-int/2addr p1, p2

    .line 7
    iput p1, p0, Lq3/a/b3/i;->_availablePermits:I

    .line 8
    new-instance p1, Lq3/a/b3/i$a;

    invoke-direct {p1, p0}, Lq3/a/b3/i$a;-><init>(Lq3/a/b3/i;)V

    iput-object p1, p0, Lq3/a/b3/i;->b:Ls1/z/b/l;

    return-void

    .line 9
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "The number of acquired permits should be in 0.."

    invoke-static {p2, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Semaphore should have at least 1 permit, but had "

    invoke-static {p2, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Lq3/a/b3/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->s1(Ls1/w/d;)Lq3/a/o;

    move-result-object v2

    .line 3
    :goto_0
    sget-object v3, Lq3/a/y2/f;->a:Lq3/a/y2/x;

    iget-object v4, v0, Lq3/a/b3/i;->tail:Ljava/lang/Object;

    check-cast v4, Lq3/a/b3/k;

    .line 4
    sget-object v5, Lq3/a/b3/i;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v5

    .line 5
    sget v7, Lq3/a/b3/j;->f:I

    int-to-long v7, v7

    .line 6
    div-long v7, v5, v7

    :goto_1
    move-object v9, v4

    .line 7
    :goto_2
    iget-wide v10, v9, Lq3/a/y2/v;->c:J

    cmp-long v10, v10, v7

    const/4 v12, 0x0

    if-ltz v10, :cond_1

    .line 8
    invoke-virtual {v9}, Lq3/a/y2/v;->c()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 9
    :cond_1
    invoke-static {v9}, Lq3/a/y2/g;->a(Lq3/a/y2/g;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_12

    move-object v9, v3

    :cond_2
    if-ne v9, v3, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    move v13, v12

    :goto_3
    if-nez v13, :cond_a

    .line 10
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->x1(Ljava/lang/Object;)Lq3/a/y2/v;

    move-result-object v13

    .line 11
    :goto_4
    iget-object v14, v0, Lq3/a/b3/i;->tail:Ljava/lang/Object;

    check-cast v14, Lq3/a/y2/v;

    .line 12
    iget-wide v10, v14, Lq3/a/y2/v;->c:J

    move-object v15, v3

    move-object/from16 v16, v4

    iget-wide v3, v13, Lq3/a/y2/v;->c:J

    cmp-long v3, v10, v3

    if-ltz v3, :cond_4

    goto :goto_5

    .line 13
    :cond_4
    invoke-virtual {v13}, Lq3/a/y2/v;->h()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v12

    goto :goto_6

    .line 14
    :cond_5
    sget-object v3, Lq3/a/b3/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 15
    invoke-virtual {v14}, Lq3/a/y2/v;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14}, Lq3/a/y2/g;->e()V

    :cond_6
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    move-object v3, v15

    move-object/from16 v4, v16

    goto :goto_1

    .line 16
    :cond_8
    invoke-virtual {v13}, Lq3/a/y2/v;->f()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v13}, Lq3/a/y2/g;->e()V

    :cond_9
    move-object v3, v15

    move-object/from16 v4, v16

    goto :goto_4

    .line 17
    :cond_a
    :goto_7
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->x1(Ljava/lang/Object;)Lq3/a/y2/v;

    move-result-object v3

    check-cast v3, Lq3/a/b3/k;

    .line 18
    sget v4, Lq3/a/b3/j;->f:I

    int-to-long v7, v4

    .line 19
    rem-long/2addr v5, v7

    long-to-int v4, v5

    .line 20
    iget-object v5, v3, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 21
    new-instance v5, Lq3/a/b3/a;

    invoke-direct {v5, v3, v4}, Lq3/a/b3/a;-><init>(Lq3/a/b3/k;I)V

    invoke-virtual {v2, v5}, Lq3/a/o;->r(Ls1/z/b/l;)V

    goto :goto_8

    .line 22
    :cond_b
    sget-object v5, Lq3/a/b3/j;->b:Lq3/a/y2/x;

    .line 23
    sget-object v6, Lq3/a/b3/j;->c:Lq3/a/y2/x;

    .line 24
    iget-object v3, v3, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 25
    iget-object v3, v0, Lq3/a/b3/i;->b:Ls1/z/b/l;

    .line 26
    iget v4, v2, Lq3/a/r0;->c:I

    invoke-virtual {v2, v1, v4, v3}, Lq3/a/o;->H(Ljava/lang/Object;ILs1/z/b/l;)V

    :goto_8
    const/4 v12, 0x1

    :cond_c
    if-eqz v12, :cond_d

    goto :goto_9

    .line 27
    :cond_d
    sget-object v3, Lq3/a/b3/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_11

    .line 28
    iget-object v3, v0, Lq3/a/b3/i;->b:Ls1/z/b/l;

    .line 29
    iget v4, v2, Lq3/a/r0;->c:I

    invoke-virtual {v2, v1, v4, v3}, Lq3/a/o;->H(Ljava/lang/Object;ILs1/z/b/l;)V

    .line 30
    :goto_9
    invoke-virtual {v2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    .line 31
    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v2, v3, :cond_e

    const-string v4, "frame"

    move-object/from16 v11, p1

    .line 32
    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    if-ne v2, v3, :cond_f

    goto :goto_a

    :cond_f
    move-object v2, v1

    :goto_a
    if-ne v2, v3, :cond_10

    return-object v2

    :cond_10
    return-object v1

    :cond_11
    move-object/from16 v11, p1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v11, p1

    move-object v15, v3

    move-object/from16 v16, v4

    .line 33
    check-cast v10, Lq3/a/y2/g;

    .line 34
    check-cast v10, Lq3/a/y2/v;

    if-eqz v10, :cond_13

    move-object v9, v10

    goto :goto_b

    .line 35
    :cond_13
    iget-wide v3, v9, Lq3/a/y2/v;->c:J

    const-wide/16 v13, 0x1

    add-long/2addr v3, v13

    .line 36
    move-object v10, v9

    check-cast v10, Lq3/a/b3/k;

    .line 37
    new-instance v13, Lq3/a/b3/k;

    invoke-direct {v13, v3, v4, v10, v12}, Lq3/a/b3/k;-><init>(JLq3/a/b3/k;I)V

    .line 38
    sget-object v3, Lq3/a/y2/g;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 39
    invoke-virtual {v9}, Lq3/a/y2/v;->c()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v9}, Lq3/a/y2/g;->e()V

    :cond_14
    move-object v9, v13

    :cond_15
    :goto_b
    move-object v3, v15

    move-object/from16 v4, v16

    goto/16 :goto_2
.end method

.method public release()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    :cond_0
    iget v1, v0, Lq3/a/b3/i;->_availablePermits:I

    .line 2
    iget v2, v0, Lq3/a/b3/i;->a:I

    if-ge v1, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_17

    add-int/lit8 v2, v1, 0x1

    .line 3
    sget-object v5, Lq3/a/b3/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz v1, :cond_2

    return-void

    .line 4
    :cond_2
    sget-object v1, Lq3/a/y2/f;->a:Lq3/a/y2/x;

    iget-object v2, v0, Lq3/a/b3/i;->head:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/k;

    .line 5
    sget-object v5, Lq3/a/b3/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v5

    .line 6
    sget v7, Lq3/a/b3/j;->f:I

    int-to-long v7, v7

    .line 7
    div-long v7, v5, v7

    :cond_3
    move-object v9, v2

    .line 8
    :cond_4
    :goto_1
    iget-wide v10, v9, Lq3/a/y2/v;->c:J

    cmp-long v10, v10, v7

    const/4 v11, 0x0

    if-ltz v10, :cond_5

    .line 9
    invoke-virtual {v9}, Lq3/a/y2/v;->c()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 10
    :cond_5
    invoke-static {v9}, Lq3/a/y2/g;->a(Lq3/a/y2/g;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_14

    move-object v9, v1

    :cond_6
    if-ne v9, v1, :cond_7

    const/4 v10, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_d

    .line 11
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->x1(Ljava/lang/Object;)Lq3/a/y2/v;

    move-result-object v10

    .line 12
    :cond_8
    :goto_3
    iget-object v12, v0, Lq3/a/b3/i;->head:Ljava/lang/Object;

    check-cast v12, Lq3/a/y2/v;

    .line 13
    iget-wide v13, v12, Lq3/a/y2/v;->c:J

    iget-wide v3, v10, Lq3/a/y2/v;->c:J

    cmp-long v3, v13, v3

    if-ltz v3, :cond_9

    goto :goto_4

    .line 14
    :cond_9
    invoke-virtual {v10}, Lq3/a/y2/v;->h()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    .line 15
    :cond_a
    sget-object v3, Lq3/a/b3/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v12, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 16
    invoke-virtual {v12}, Lq3/a/y2/v;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Lq3/a/y2/g;->e()V

    :cond_b
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_3

    goto :goto_6

    .line 17
    :cond_c
    invoke-virtual {v10}, Lq3/a/y2/v;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v10}, Lq3/a/y2/g;->e()V

    goto :goto_3

    .line 18
    :cond_d
    :goto_6
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->x1(Ljava/lang/Object;)Lq3/a/y2/v;

    move-result-object v1

    check-cast v1, Lq3/a/b3/k;

    .line 19
    sget-object v2, Lq3/a/y2/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-wide v2, v1, Lq3/a/y2/v;->c:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_e

    goto :goto_8

    .line 21
    :cond_e
    sget v2, Lq3/a/b3/j;->f:I

    int-to-long v2, v2

    .line 22
    rem-long/2addr v5, v2

    long-to-int v2, v5

    .line 23
    sget-object v3, Lq3/a/b3/j;->b:Lq3/a/y2/x;

    .line 24
    iget-object v4, v1, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 25
    sget v3, Lq3/a/b3/j;->a:I

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v3, :cond_10

    .line 26
    iget-object v4, v1, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 27
    sget-object v5, Lq3/a/b3/j;->c:Lq3/a/y2/x;

    if-ne v4, v5, :cond_f

    const/4 v3, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 28
    :cond_10
    sget-object v3, Lq3/a/b3/j;->b:Lq3/a/y2/x;

    .line 29
    sget-object v4, Lq3/a/b3/j;->d:Lq3/a/y2/x;

    .line 30
    iget-object v1, v1, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/lit8 v3, v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x1

    .line 31
    sget-object v1, Lq3/a/b3/j;->e:Lq3/a/y2/x;

    if-ne v3, v1, :cond_12

    goto :goto_8

    .line 32
    :cond_12
    check-cast v3, Lq3/a/n;

    .line 33
    sget-object v1, Ls1/s;->a:Ls1/s;

    iget-object v2, v0, Lq3/a/b3/i;->b:Ls1/z/b/l;

    invoke-interface {v3, v1, v11, v2}, Lq3/a/n;->w(Ljava/lang/Object;Ljava/lang/Object;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    :goto_8
    const/4 v3, 0x0

    goto :goto_9

    .line 34
    :cond_13
    invoke-interface {v3, v1}, Lq3/a/n;->n(Ljava/lang/Object;)V

    move v3, v4

    :goto_9
    if-eqz v3, :cond_0

    return-void

    :cond_14
    const/4 v4, 0x1

    .line 35
    check-cast v10, Lq3/a/y2/g;

    .line 36
    check-cast v10, Lq3/a/y2/v;

    if-eqz v10, :cond_16

    :cond_15
    :goto_a
    move-object v9, v10

    goto/16 :goto_1

    .line 37
    :cond_16
    iget-wide v12, v9, Lq3/a/y2/v;->c:J

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    .line 38
    move-object v3, v9

    check-cast v3, Lq3/a/b3/k;

    .line 39
    new-instance v10, Lq3/a/b3/k;

    const/4 v14, 0x0

    invoke-direct {v10, v12, v13, v3, v14}, Lq3/a/b3/k;-><init>(JLq3/a/b3/k;I)V

    .line 40
    sget-object v3, Lq3/a/y2/g;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v9, v11, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 41
    invoke-virtual {v9}, Lq3/a/y2/v;->c()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v9}, Lq3/a/y2/g;->e()V

    goto :goto_a

    .line 42
    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The number of released permits cannot be greater than "

    invoke-static {v2, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
