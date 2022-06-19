.class public abstract Le/m/d/z/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/z/f/a$b;


# instance fields
.field private final appStateCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/m/d/z/f/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final appStateMonitor:Le/m/d/z/f/a;

.field private currentAppState:Le/m/d/z/o/b;

.field private isRegisteredForAppState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/f/a;->a()Le/m/d/z/f/a;

    move-result-object v0

    invoke-direct {p0, v0}, Le/m/d/z/f/b;-><init>(Le/m/d/z/f/a;)V

    return-void
.end method

.method public constructor <init>(Le/m/d/z/f/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/m/d/z/f/b;->isRegisteredForAppState:Z

    .line 4
    sget-object v0, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    iput-object v0, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    .line 5
    iput-object p1, p0, Le/m/d/z/f/b;->appStateMonitor:Le/m/d/z/f/a;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/m/d/z/f/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Le/m/d/z/o/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    return-object v0
.end method

.method public incrementTsnsCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/f/b;->appStateMonitor:Le/m/d/z/f/a;

    .line 2
    iget-object v0, v0, Le/m/d/z/f/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public onUpdateAppState(Le/m/d/z/o/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    sget-object v1, Le/m/d/z/o/b;->b:Le/m/d/z/o/b;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    if-eq p1, v1, :cond_1

    .line 3
    sget-object p1, Le/m/d/z/o/b;->e:Le/m/d/z/o/b;

    iput-object p1, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerForAppState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/m/d/z/f/b;->isRegisteredForAppState:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/z/f/b;->appStateMonitor:Le/m/d/z/f/a;

    .line 3
    iget-object v1, v0, Le/m/d/z/f/a;->m:Le/m/d/z/o/b;

    .line 4
    iput-object v1, p0, Le/m/d/z/f/b;->currentAppState:Le/m/d/z/o/b;

    .line 5
    iget-object v1, p0, Le/m/d/z/f/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object v2, v0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v0, v0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Le/m/d/z/f/b;->isRegisteredForAppState:Z

    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterForAppState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/m/d/z/f/b;->isRegisteredForAppState:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/z/f/b;->appStateMonitor:Le/m/d/z/f/a;

    iget-object v1, p0, Le/m/d/z/f/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object v2, v0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v0, Le/m/d/z/f/a;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/m/d/z/f/b;->isRegisteredForAppState:Z

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
