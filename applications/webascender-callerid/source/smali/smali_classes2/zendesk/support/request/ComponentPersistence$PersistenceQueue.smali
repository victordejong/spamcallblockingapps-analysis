.class Lzendesk/support/request/ComponentPersistence$PersistenceQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PersistenceQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/ComponentPersistence$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final workerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->workerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->workerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private startWorker()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->workerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;-><init>(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Lzendesk/support/request/ComponentPersistence$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method dispatch(Lzendesk/support/request/ComponentPersistence$Item;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->actions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    invoke-direct {p0}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->startWorker()V

    .line 6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
