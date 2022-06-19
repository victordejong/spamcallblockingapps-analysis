.class public final Lcom/appnext/core/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ef:I

.field private static final eh:Ljava/util/concurrent/TimeUnit;

.field private static volatile ej:Lcom/appnext/core/o;


# instance fields
.field private final eg:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private ei:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/appnext/core/o;->ef:I

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/appnext/core/o;->eh:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/o;->eg:Ljava/util/concurrent/BlockingQueue;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/appnext/core/o;->ei:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static az()Lcom/appnext/core/o;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/o;->ej:Lcom/appnext/core/o;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/o;->ej:Lcom/appnext/core/o;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/o;

    invoke-direct {v1}, Lcom/appnext/core/o;-><init>()V

    sput-object v1, Lcom/appnext/core/o;->ej:Lcom/appnext/core/o;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/core/o;->ej:Lcom/appnext/core/o;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/appnext/core/o;->ei:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
