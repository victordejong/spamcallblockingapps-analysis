.class Lzendesk/support/request/AsyncMiddleware$Queue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AsyncMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;
    }
.end annotation


# instance fields
.field private final dispatchCallback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final items:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lzendesk/support/request/AsyncMiddleware$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;-><init>(Lzendesk/support/request/AsyncMiddleware$Queue;Lzendesk/support/request/AsyncMiddleware$1;)V

    iput-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatchCallback:Lzendesk/support/request/AsyncMiddleware$Callback;

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/request/AsyncMiddleware$Queue;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/AsyncMiddleware$Queue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatchInternal()V

    return-void
.end method

.method private dispatchInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/AsyncMiddleware$Item;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatchCallback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {v1, v0}, Lzendesk/support/request/AsyncMiddleware$Item;->execute(Lzendesk/support/request/AsyncMiddleware$Callback;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method dispatch(Lzendesk/support/request/AsyncMiddleware$Item;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->items:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatchInternal()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
