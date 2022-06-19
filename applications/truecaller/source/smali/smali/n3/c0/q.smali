.class public abstract Ln3/c0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c0/q$b;,
        Ln3/c0/q$d;,
        Ln3/c0/q$a;,
        Ln3/c0/q$c;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mAutoCloser:Ln3/c0/a;

.field private final mBackingFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/c0/q$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public volatile mDatabase:Ln3/e0/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mInvalidationTracker:Ln3/c0/o;

.field private mOpenHelper:Ln3/e0/a/c;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private final mSuspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionExecutor:Ljava/util/concurrent/Executor;

.field private final mTypeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ln3/c0/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ln3/c0/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ln3/c0/q;->mBackingFieldMap:Ljava/util/Map;

    .line 6
    invoke-virtual {p0}, Ln3/c0/q;->createInvalidationTracker()Ln3/c0/o;

    move-result-object v0

    iput-object v0, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/c0/q;->mTypeConverters:Ljava/util/Map;

    return-void
.end method

.method private internalBeginTransaction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 2
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    invoke-virtual {v1, v0}, Ln3/c0/o;->i(Ln3/e0/a/b;)V

    .line 4
    invoke-interface {v0}, Ln3/e0/a/b;->e2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ln3/e0/a/b;->M()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ln3/e0/a/b;->w()V

    :goto_0
    return-void
.end method

.method private internalEndTransaction()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/b;->f1()V

    .line 2
    invoke-virtual {p0}, Ln3/c0/q;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    .line 4
    iget-object v1, v0, Ln3/c0/o;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Ln3/c0/o;->d:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Ln3/c0/o;->l:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unwrapOpenHelper(Ljava/lang/Class;Ln3/e0/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ln3/e0/a/c;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    instance-of v0, p2, Ln3/c0/i;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ln3/c0/i;

    invoke-interface {p2}, Ln3/c0/i;->b()Ln3/e0/a/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ln3/c0/q;->unwrapOpenHelper(Ljava/lang/Class;Ln3/e0/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/c0/q;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ln3/c0/q;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln3/c0/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 2
    iget-object v0, p0, Ln3/c0/q;->mAutoCloser:Ln3/c0/a;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Ln3/c0/q;->internalBeginTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/c0/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    .line 5
    iget-object v2, v1, Ln3/c0/o;->k:Ln3/c0/p;

    if-eqz v2, :cond_2

    .line 6
    iget-object v3, v2, Ln3/c0/p;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v2, Ln3/c0/p;->c:Ln3/c0/o;

    iget-object v4, v2, Ln3/c0/p;->d:Ln3/c0/o$c;

    invoke-virtual {v3, v4}, Ln3/c0/o;->d(Ln3/c0/o$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v3, v2, Ln3/c0/p;->e:Ln3/c0/m;

    if-eqz v3, :cond_0

    .line 9
    iget-object v4, v2, Ln3/c0/p;->f:Ln3/c0/l;

    iget v5, v2, Ln3/c0/p;->b:I

    invoke-interface {v3, v4, v5}, Ln3/c0/m;->z1(Ln3/c0/l;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catch_0
    :cond_0
    :try_start_2
    iget-object v3, v2, Ln3/c0/p;->a:Landroid/content/Context;

    iget-object v2, v2, Ln3/c0/p;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Ln3/c0/o;->k:Ln3/c0/p;

    .line 12
    :cond_2
    iget-object v1, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v1}, Ln3/e0/a/c;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Ln3/e0/a/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 2
    invoke-virtual {p0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ln3/e0/a/b;->J1(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object p1

    return-object p1
.end method

.method public abstract createInvalidationTracker()Ln3/c0/o;
.end method

.method public abstract createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end method

.method public endTransaction()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mAutoCloser:Ln3/c0/a;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Ln3/c0/q;->internalEndTransaction()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public getBackingFieldMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mBackingFieldMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mCloseLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidationTracker()Ln3/c0/o;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    return-object v0
.end method

.method public getOpenHelper()Ln3/e0/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mQueryExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mSuspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getTypeConverter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mTypeConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inTransaction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/b;->X1()Z

    move-result v0

    return v0
.end method

.method public init(Ln3/c0/h;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Ln3/c0/q;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;

    move-result-object v0

    iput-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    .line 2
    const-class v1, Ln3/c0/a0;

    invoke-direct {p0, v1, v0}, Ln3/c0/q;->unwrapOpenHelper(Ljava/lang/Class;Ln3/e0/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/c0/a0;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, v0, Ln3/c0/a0;->g:Ln3/c0/h;

    .line 4
    :cond_0
    const-class v0, Ln3/c0/b;

    iget-object v1, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    .line 5
    invoke-direct {p0, v0, v1}, Ln3/c0/q;->unwrapOpenHelper(Ljava/lang/Class;Ln3/e0/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/c0/b;

    if-nez v0, :cond_9

    .line 6
    iget-object v0, p1, Ln3/c0/h;->h:Ln3/c0/q$c;

    sget-object v1, Ln3/c0/q$c;->c:Ln3/c0/q$c;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v1, v0}, Ln3/e0/a/c;->setWriteAheadLoggingEnabled(Z)V

    .line 8
    iget-object v1, p1, Ln3/c0/h;->e:Ljava/util/List;

    iput-object v1, p0, Ln3/c0/q;->mCallbacks:Ljava/util/List;

    .line 9
    iget-object v1, p1, Ln3/c0/h;->i:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Ln3/c0/q;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 10
    new-instance v1, Ln3/c0/e0;

    iget-object v3, p1, Ln3/c0/h;->j:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v3}, Ln3/c0/e0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Ln3/c0/q;->mTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iget-boolean v1, p1, Ln3/c0/h;->g:Z

    iput-boolean v1, p0, Ln3/c0/q;->mAllowMainThreadQueries:Z

    .line 12
    iput-boolean v0, p0, Ln3/c0/q;->mWriteAheadLoggingEnabled:Z

    .line 13
    invoke-virtual {p0}, Ln3/c0/q;->getRequiredTypeConverters()Ljava/util/Map;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 17
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 18
    iget-object v6, p1, Ln3/c0/h;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_4

    .line 19
    iget-object v7, p1, Ln3/c0/h;->f:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 20
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 21
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    :goto_3
    if-ltz v6, :cond_5

    .line 22
    iget-object v7, p0, Ln3/c0/q;->mTypeConverters:Ljava/util/Map;

    iget-object v8, p1, Ln3/c0/h;->f:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A required type converter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    iget-object v0, p1, Ln3/c0/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_4
    if-ltz v0, :cond_8

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 27
    :cond_7
    iget-object p1, p1, Ln3/c0/h;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected type converter "

    const-string v2, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void

    .line 29
    :cond_9
    iget-object p1, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 31
    throw p1
.end method

.method public internalInitInvalidationTracker(Ln3/e0/a/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mInvalidationTracker:Ln3/c0/o;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Ln3/c0/o;->f:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 7
    invoke-interface {p1, v1}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ln3/c0/o;->i(Ln3/e0/a/b;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 9
    invoke-interface {p1, v1}, Ln3/e0/a/b;->J1(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object p1

    iput-object p1, v0, Ln3/c0/o;->g:Ln3/e0/a/f;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v0, Ln3/c0/o;->f:Z

    .line 11
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mAutoCloser:Ln3/c0/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Ln3/c0/a;->a:Z

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/c0/q;->mDatabase:Ln3/e0/a/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ln3/e0/a/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    new-instance v1, Ln3/e0/a/a;

    invoke-direct {v1, p1, p2}, Ln3/e0/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ln3/e0/a/b;->X(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ln3/e0/a/e;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ln3/e0/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    .line 3
    invoke-virtual {p0}, Ln3/c0/q;->assertNotMainThread()V

    .line 4
    invoke-virtual {p0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/e0/a/b;->H(Ln3/e0/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object p2, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {p2}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object p2

    invoke-interface {p2, p1}, Ln3/e0/a/b;->X(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ln3/c0/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Ln3/c0/q;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1

    :catch_1
    move-exception p1

    .line 11
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ln3/c0/q;->endTransaction()V

    .line 13
    throw p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/c0/q;->beginTransaction()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ln3/c0/q;->endTransaction()V

    .line 5
    throw p1
.end method

.method public setTransactionSuccessful()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/q;->mOpenHelper:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0

    invoke-interface {v0}, Ln3/e0/a/b;->b1()V

    return-void
.end method
