.class public final Lq3/a/z2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/a/z2/a$a;,
        Lq3/a/z2/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 X2\u00020\\2\u00020]:\u0003XYZB+\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0086\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001d\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008\u001f\u0010\u0011J\u0015\u0010!\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008$\u0010\u0017J-\u0010&\u001a\u00020\u00132\n\u0010\u001a\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010%\u001a\u00020\u000c\u00a2\u0006\u0004\u0008&\u0010\'J\u001b\u0010)\u001a\u00020\u00132\n\u0010(\u001a\u00060\u0018j\u0002`\u0019H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010-\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0004\u0008-\u0010\u0017J\u001b\u0010/\u001a\u00020\u00012\n\u0010.\u001a\u00060 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0015\u00101\u001a\u0008\u0018\u00010 R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00081\u0010\"J\u0019\u00102\u001a\u00020\u000c2\n\u0010.\u001a\u00060 R\u00020\u0000\u00a2\u0006\u0004\u00082\u00103J)\u00106\u001a\u00020\u00132\n\u0010.\u001a\u00060 R\u00020\u00002\u0006\u00104\u001a\u00020\u00012\u0006\u00105\u001a\u00020\u0001\u00a2\u0006\u0004\u00086\u00107J\u0010\u00108\u001a\u00020\u0004H\u0082\u0008\u00a2\u0006\u0004\u00088\u0010,J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u00132\u0006\u0010;\u001a\u00020\u0004\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020\u0013\u00a2\u0006\u0004\u0008A\u0010\u0015J\u000f\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020\u000cH\u0082\u0008\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008H\u0010EJ+\u0010I\u001a\u0004\u0018\u00010\n*\u0008\u0018\u00010 R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008I\u0010JR\u0017\u0010\u0010\u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010\u0017R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010LR\u0017\u0010\u001f\u001a\u00020\u00018\u00c2\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u0017R\u0016\u0010O\u001a\u00020N8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010Q\u001a\u00020N8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010PR\u0016\u0010\u0005\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010RR\u0013\u0010S\u001a\u00020\u000c8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010ER\u0016\u0010\u0003\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010LR\u0016\u0010\u0007\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010TR\"\u0010V\u001a\u000e\u0012\n\u0012\u0008\u0018\u00010 R\u00020\u00000U8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010W\u00a8\u0006["
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "",
        "corePoolSize",
        "maxPoolSize",
        "",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "<init>",
        "(IIJLjava/lang/String;)V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "",
        "addToGlobalQueue",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "state",
        "availableCpuPermits",
        "(J)I",
        "blockingTasks",
        "",
        "close",
        "()V",
        "createNewWorker",
        "()I",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "taskContext",
        "createTask",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;",
        "createdWorkers",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "currentWorker",
        "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "tailDispatch",
        "dispatch",
        "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V",
        "command",
        "execute",
        "(Ljava/lang/Runnable;)V",
        "incrementBlockingTasks",
        "()J",
        "incrementCreatedWorkers",
        "worker",
        "parkedWorkersStackNextIndex",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z",
        "oldIndex",
        "newIndex",
        "parkedWorkersStackTopUpdate",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V",
        "releaseCpuPermit",
        "runSafely",
        "(Lkotlinx/coroutines/scheduling/Task;)V",
        "timeout",
        "shutdown",
        "(J)V",
        "skipUnpark",
        "signalBlockingWork",
        "(Z)V",
        "signalCpuWork",
        "toString",
        "()Ljava/lang/String;",
        "tryAcquireCpuPermit",
        "()Z",
        "tryCreateWorker",
        "(J)Z",
        "tryUnpark",
        "submitToLocalQueue",
        "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;",
        "getAvailableCpuPermits",
        "I",
        "getCreatedWorkers",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "J",
        "isTerminated",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "workers",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "Companion",
        "Worker",
        "WorkerState",
        "kotlinx-coroutines-core",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;"
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
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lq3/a/y2/x;


# instance fields
.field private volatile synthetic _isTerminated:I

.field public final a:I

.field public final b:I

.field public final c:J

.field public volatile synthetic controlState:J

.field public final d:Ljava/lang/String;

.field public final e:Lq3/a/z2/d;

.field public final f:Lq3/a/z2/d;

.field public final g:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lq3/a/z2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic parkedWorkersStack:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/z2/a;->k:Lq3/a/y2/x;

    const-class v0, Lq3/a/z2/a;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/z2/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lq3/a/z2/a;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/z2/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lq3/a/z2/a;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/z2/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lq3/a/z2/a;->a:I

    .line 3
    iput p2, p0, Lq3/a/z2/a;->b:I

    .line 4
    iput-wide p3, p0, Lq3/a/z2/a;->c:J

    .line 5
    iput-object p5, p0, Lq3/a/z2/a;->d:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    if-eqz v1, :cond_7

    if-lt p2, p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    const-string v2, "Max pool size "

    if-eqz v1, :cond_6

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, p5

    :goto_2
    if-eqz v1, :cond_5

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    if-eqz v3, :cond_4

    .line 6
    new-instance p3, Lq3/a/z2/d;

    invoke-direct {p3}, Lq3/a/z2/d;-><init>()V

    iput-object p3, p0, Lq3/a/z2/a;->e:Lq3/a/z2/d;

    .line 7
    new-instance p3, Lq3/a/z2/d;

    invoke-direct {p3}, Lq3/a/z2/d;-><init>()V

    iput-object p3, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    .line 8
    iput-wide v1, p0, Lq3/a/z2/a;->parkedWorkersStack:J

    .line 9
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/2addr p2, v0

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p3, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    .line 10
    iput-wide p1, p0, Lq3/a/z2/a;->controlState:J

    .line 11
    iput p5, p0, Lq3/a/z2/a;->_isTerminated:I

    return-void

    :cond_4
    const-string p1, "Idle worker keep alive time "

    const-string p2, " must be positive"

    .line 12
    invoke-static {p1, p3, p4, p2}, Le/d/c/a/a;->r2(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 14
    invoke-static {v2, p2, p1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p3, " should be greater than or equals to core pool size "

    .line 16
    invoke-static {v2, p2, p3, p1}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p2, "Core pool size "

    const-string p3, " should be at least 1"

    .line 18
    invoke-static {p2, p1, p3}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic l(Lq3/a/z2/a;Ljava/lang/Runnable;Lq3/a/z2/j;ZI)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lq3/a/z2/g;->a:Lq3/a/z2/g;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lq3/a/z2/a;->k(Ljava/lang/Runnable;Lq3/a/z2/j;Z)V

    return-void
.end method


# virtual methods
.method public final E(Lq3/a/z2/a$a;II)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lq3/a/z2/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_2

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lq3/a/z2/a;->q(Lq3/a/z2/a$a;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p3

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    sget-object v1, Lq3/a/z2/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final I(Lq3/a/z2/i;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 4
    throw p1
.end method

.method public final J()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/a/z2/a;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lq3/a/z2/a;->controlState:J

    invoke-virtual {p0, v0, v1}, Lq3/a/z2/a;->K(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lq3/a/z2/a;->P()Z

    return-void
.end method

.method public final K(J)Z
    .locals 3

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_0

    move v0, p1

    .line 1
    :cond_0
    iget p2, p0, Lq3/a/z2/a;->a:I

    if-ge v0, p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lq3/a/z2/a;->b()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget v1, p0, Lq3/a/z2/a;->a:I

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lq3/a/z2/a;->b()I

    :cond_1
    if-lez p2, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public final P()Z
    .locals 9

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lq3/a/z2/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 2
    iget-object v1, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lq3/a/z2/a$a;

    if-nez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    .line 3
    invoke-virtual {p0, v6}, Lq3/a/z2/a;->q(Lq3/a/z2/a$a;)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-object v5, Lq3/a/z2/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lq3/a/z2/a;->k:Lq3/a/y2/x;

    invoke-virtual {v6, v0}, Lq3/a/z2/a$a;->g(Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    if-nez v6, :cond_3

    return v0

    .line 6
    :cond_3
    sget-object v1, Lq3/a/z2/a$a;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 10

    .line 1
    iget-object v0, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lq3/a/z2/a;->_isTerminated:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lq3/a/z2/a;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v1, v2

    .line 6
    :cond_1
    iget v6, p0, Lq3/a/z2/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v1, v6, :cond_2

    monitor-exit v0

    return v2

    .line 7
    :cond_2
    :try_start_2
    iget v6, p0, Lq3/a/z2/a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v5, v6, :cond_3

    monitor-exit v0

    return v2

    .line 8
    :cond_3
    :try_start_3
    iget-wide v5, p0, Lq3/a/z2/a;->controlState:J

    and-long/2addr v5, v3

    long-to-int v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-lez v5, :cond_4

    .line 9
    iget-object v7, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    move v7, v6

    goto :goto_0

    :cond_4
    move v7, v2

    :goto_0
    if-eqz v7, :cond_7

    .line 10
    new-instance v7, Lq3/a/z2/a$a;

    invoke-direct {v7, p0, v5}, Lq3/a/z2/a$a;-><init>(Lq3/a/z2/a;I)V

    .line 11
    iget-object v8, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 12
    sget-object v8, Lq3/a/z2/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v3, v3

    if-ne v5, v3, :cond_5

    move v2, v6

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v1, v6

    .line 14
    monitor-exit v0

    return v1

    :cond_6
    :try_start_4
    const-string v1, "Failed requirement."

    .line 15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v1, "Failed requirement."

    .line 16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    throw v1
.end method

.method public close()V
    .locals 10

    .line 1
    sget-object v0, Lq3/a/z2/a;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-virtual {p0}, Lq3/a/z2/a;->j()Lq3/a/z2/a$a;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    monitor-enter v3

    .line 5
    :try_start_0
    iget-wide v4, p0, Lq3/a/z2/a;->controlState:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 6
    monitor-exit v3

    const/4 v5, 0x0

    if-gt v2, v4, :cond_6

    move v3, v2

    :goto_0
    add-int/lit8 v6, v3, 0x1

    .line 7
    iget-object v7, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/a/z2/a$a;

    invoke-static {v7}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-eq v7, v0, :cond_4

    .line 8
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v8, 0x2710

    .line 10
    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v7, v7, Lq3/a/z2/a$a;->a:Lq3/a/z2/m;

    iget-object v8, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    .line 12
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v9, Lq3/a/z2/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq3/a/z2/i;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v9}, Lq3/a/y2/o;->a(Ljava/lang/Object;)Z

    .line 14
    :goto_2
    invoke-virtual {v7}, Lq3/a/z2/m;->f()Lq3/a/z2/i;

    move-result-object v9

    if-nez v9, :cond_3

    move v9, v1

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v8, v9}, Lq3/a/y2/o;->a(Ljava/lang/Object;)Z

    move v9, v2

    :goto_3
    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    move v3, v6

    goto :goto_0

    .line 16
    :cond_6
    :goto_4
    iget-object v1, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    invoke-virtual {v1}, Lq3/a/y2/o;->b()V

    .line 17
    iget-object v1, p0, Lq3/a/z2/a;->e:Lq3/a/z2/d;

    invoke-virtual {v1}, Lq3/a/y2/o;->b()V

    :goto_5
    if-nez v0, :cond_7

    move-object v1, v5

    goto :goto_6

    .line 18
    :cond_7
    invoke-virtual {v0, v2}, Lq3/a/z2/a$a;->a(Z)Lq3/a/z2/i;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_8

    .line 19
    iget-object v1, p0, Lq3/a/z2/a;->e:Lq3/a/z2/d;

    invoke-virtual {v1}, Lq3/a/y2/o;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/z2/i;

    :cond_8
    if-nez v1, :cond_a

    .line 20
    iget-object v1, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    invoke-virtual {v1}, Lq3/a/y2/o;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/z2/i;

    if-nez v1, :cond_a

    if-nez v0, :cond_9

    goto :goto_7

    .line 21
    :cond_9
    sget-object v1, Lq3/a/z2/a$b;->e:Lq3/a/z2/a$b;

    invoke-virtual {v0, v1}, Lq3/a/z2/a$a;->h(Lq3/a/z2/a$b;)Z

    :goto_7
    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lq3/a/z2/a;->parkedWorkersStack:J

    .line 23
    iput-wide v0, p0, Lq3/a/z2/a;->controlState:J

    :goto_8
    return-void

    .line 24
    :cond_a
    invoke-virtual {p0, v1}, Lq3/a/z2/a;->I(Lq3/a/z2/i;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v3

    throw v0
.end method

.method public final d(Ljava/lang/Runnable;Lq3/a/z2/j;)Lq3/a/z2/i;
    .locals 3

    .line 1
    sget-object v0, Lq3/a/z2/l;->e:Lq3/a/z2/h;

    invoke-virtual {v0}, Lq3/a/z2/h;->a()J

    move-result-wide v0

    .line 2
    instance-of v2, p1, Lq3/a/z2/i;

    if-eqz v2, :cond_0

    .line 3
    check-cast p1, Lq3/a/z2/i;

    iput-wide v0, p1, Lq3/a/z2/i;->a:J

    .line 4
    iput-object p2, p1, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    return-object p1

    .line 5
    :cond_0
    new-instance v2, Lq3/a/z2/k;

    invoke-direct {v2, p1, v0, v1, p2}, Lq3/a/z2/k;-><init>(Ljava/lang/Runnable;JLq3/a/z2/j;)V

    return-object v2
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lq3/a/z2/a;->l(Lq3/a/z2/a;Ljava/lang/Runnable;Lq3/a/z2/j;ZI)V

    return-void
.end method

.method public final isTerminated()Z
    .locals 1

    .line 1
    iget v0, p0, Lq3/a/z2/a;->_isTerminated:I

    return v0
.end method

.method public final j()Lq3/a/z2/a$a;
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lq3/a/z2/a$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lq3/a/z2/a$a;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v1, v0, Lq3/a/z2/a$a;->g:Lq3/a/z2/a;

    .line 3
    invoke-static {v1, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final k(Ljava/lang/Runnable;Lq3/a/z2/j;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/a/z2/a;->d(Ljava/lang/Runnable;Lq3/a/z2/j;)Lq3/a/z2/i;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lq3/a/z2/a;->j()Lq3/a/z2/a$a;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p2, Lq3/a/z2/a$a;->b:Lq3/a/z2/a$b;

    sget-object v2, Lq3/a/z2/a$b;->e:Lq3/a/z2/a$b;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p1, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v1}, Lq3/a/z2/j;->B0()I

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p2, Lq3/a/z2/a$a;->b:Lq3/a/z2/a$b;

    sget-object v2, Lq3/a/z2/a$b;->b:Lq3/a/z2/a$b;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v0, p2, Lq3/a/z2/a$a;->f:Z

    .line 7
    iget-object v1, p2, Lq3/a/z2/a$a;->a:Lq3/a/z2/m;

    invoke-virtual {v1, p1, p3}, Lq3/a/z2/m;->a(Lq3/a/z2/i;Z)Lq3/a/z2/i;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    iget-object v3, v1, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {v3}, Lq3/a/z2/j;->B0()I

    move-result v3

    if-ne v3, v0, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 9
    iget-object v3, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    invoke-virtual {v3, v1}, Lq3/a/y2/o;->a(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 10
    :cond_4
    iget-object v3, p0, Lq3/a/z2/a;->e:Lq3/a/z2/d;

    invoke-virtual {v3, v1}, Lq3/a/y2/o;->a(Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p2, p0, Lq3/a/z2/a;->d:Ljava/lang/String;

    const-string p3, " was terminated"

    invoke-static {p2, p3}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move v0, v2

    .line 12
    :goto_5
    iget-object p1, p1, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    invoke-interface {p1}, Lq3/a/z2/j;->B0()I

    move-result p1

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    return-void

    .line 13
    :cond_8
    invoke-virtual {p0}, Lq3/a/z2/a;->J()V

    goto :goto_6

    .line 14
    :cond_9
    sget-object p1, Lq3/a/z2/a;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 p2, 0x200000

    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    if-eqz v0, :cond_a

    goto :goto_6

    .line 15
    :cond_a
    invoke-virtual {p0}, Lq3/a/z2/a;->P()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_6

    .line 16
    :cond_b
    invoke-virtual {p0, p1, p2}, Lq3/a/z2/a;->K(J)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    .line 17
    :cond_c
    invoke-virtual {p0}, Lq3/a/z2/a;->P()Z

    :goto_6
    return-void
.end method

.method public final q(Lq3/a/z2/a$a;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq3/a/z2/a$a;->c()Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    sget-object v0, Lq3/a/z2/a;->k:Lq3/a/y2/x;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    check-cast p1, Lq3/a/z2/a$a;

    .line 4
    invoke-virtual {p1}, Lq3/a/z2/a$a;->b()I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lq3/a/z2/a$a;->c()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public final s(Lq3/a/z2/a$a;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lq3/a/z2/a$a;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lq3/a/z2/a;->k:Lq3/a/y2/x;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-wide v2, p0, Lq3/a/z2/a;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    .line 3
    invoke-virtual {p1}, Lq3/a/z2/a$a;->b()I

    move-result v1

    .line 4
    iget-object v6, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq3/a/z2/a$a;->g(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lq3/a/z2/a;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v1

    or-long/2addr v4, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v3, v1, :cond_8

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_0
    add-int/lit8 v9, v8, 0x1

    .line 3
    iget-object v10, p0, Lq3/a/z2/a;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq3/a/z2/a$a;

    if-nez v8, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v10, v8, Lq3/a/z2/a$a;->a:Lq3/a/z2/m;

    invoke-virtual {v10}, Lq3/a/z2/m;->d()I

    move-result v10

    .line 5
    iget-object v8, v8, Lq3/a/z2/a$a;->b:Lq3/a/z2/a$b;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v3, :cond_4

    const/4 v11, 0x2

    if-eq v8, v11, :cond_3

    const/4 v11, 0x3

    if-eq v8, v11, :cond_2

    const/4 v10, 0x4

    if-eq v8, v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_6

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    if-lt v9, v1, :cond_7

    move v1, v2

    move v2, v5

    goto :goto_2

    :cond_7
    move v8, v9

    goto :goto_0

    :cond_8
    move v1, v2

    move v4, v1

    move v6, v4

    move v7, v6

    .line 9
    :goto_2
    iget-wide v8, p0, Lq3/a/z2/a;->controlState:J

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lq3/a/z2/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[Pool Size {core = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v5, p0, Lq3/a/z2/a;->a:I

    .line 12
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", max = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v5, p0, Lq3/a/z2/a;->b:I

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "}, Worker States {CPU = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dormant = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", terminated = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}, running workers queues = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, Lq3/a/z2/a;->e:Lq3/a/z2/d;

    invoke-virtual {v0}, Lq3/a/y2/o;->c()I

    move-result v0

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v0, p0, Lq3/a/z2/a;->f:Lq3/a/z2/d;

    invoke-virtual {v0}, Lq3/a/y2/o;->c()I

    move-result v0

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v8

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v0, 0x3ffffe00000L

    and-long/2addr v0, v8

    const/16 v2, 0x15

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v0, p0, Lq3/a/z2/a;->a:I

    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, v8

    const/16 v4, 0x2a

    shr-long/2addr v1, v4

    long-to-int v1, v1

    sub-int/2addr v0, v1

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
