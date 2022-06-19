.class public final Le/m/a/h/a/d/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/a/h/a/d/g;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/h/a/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/a/h/a/h/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public final h:Landroid/content/Intent;

.field public final i:Le/m/a/h/a/d/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/m/a/h/a/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/os/IBinder$DeathRecipient;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Landroid/content/ServiceConnection;

.field public n:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/m/a/h/a/d/r;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/d/g;Ljava/lang/String;Landroid/content/Intent;Le/m/a/h/a/d/n;Le/m/a/h/a/d/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/h/a/d/g;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Le/m/a/h/a/d/n<",
            "TT;>;",
            "Le/m/a/h/a/d/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p6, Ljava/util/ArrayList;

    .line 1
    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Le/m/a/h/a/d/r;->d:Ljava/util/List;

    new-instance p6, Ljava/util/HashSet;

    .line 2
    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    new-instance p6, Le/m/a/h/a/d/i;

    .line 3
    invoke-direct {p6, p0}, Le/m/a/h/a/d/i;-><init>(Le/m/a/h/a/d/r;)V

    iput-object p6, p0, Le/m/a/h/a/d/r;->k:Landroid/os/IBinder$DeathRecipient;

    new-instance p6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p6, p0, Le/m/a/h/a/d/r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Le/m/a/h/a/d/r;->a:Landroid/content/Context;

    iput-object p2, p0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    iput-object p3, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/h/a/d/r;->h:Landroid/content/Intent;

    iput-object p5, p0, Le/m/a/h/a/d/r;->i:Le/m/a/h/a/d/n;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/m/a/h/a/d/r;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 4

    sget-object v0, Le/m/a/h/a/d/r;->o:Ljava/util/Map;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    const/16 v3, 0xa

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/d/h;",
            "Le/m/a/h/a/h/n<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    .line 1
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v1, p2, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    .line 3
    new-instance v2, Le/m/a/h/a/d/j;

    .line 4
    invoke-direct {v2, p0, p2}, Le/m/a/h/a/d/j;-><init>(Le/m/a/h/a/d/r;Le/m/a/h/a/h/n;)V

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p2, Le/m/a/h/a/h/e;->a:Ljava/util/concurrent/Executor;

    iget-object v3, v1, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    new-instance v4, Le/m/a/h/a/h/g;

    .line 7
    invoke-direct {v4, p2, v2}, Le/m/a/h/a/h/g;-><init>(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/a;)V

    invoke-virtual {v3, v4}, Le/m/a/h/a/h/m;->a(Le/m/a/h/a/h/l;)V

    .line 8
    invoke-virtual {v1}, Le/m/a/h/a/h/r;->h()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Le/m/a/h/a/d/r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const-string v1, "Already connected to the service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, v1, v2}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 12
    :cond_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p2, Le/m/a/h/a/d/k;

    .line 13
    iget-object v0, p1, Le/m/a/h/a/d/h;->a:Le/m/a/h/a/h/n;

    .line 14
    invoke-direct {p2, p0, v0, p1}, Le/m/a/h/a/d/k;-><init>(Le/m/a/h/a/d/r;Le/m/a/h/a/h/n;Le/m/a/h/a/d/h;)V

    .line 15
    invoke-virtual {p0}, Le/m/a/h/a/d/r;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Le/m/a/h/a/d/r;->b:Le/m/a/h/a/d/g;

    const-string v2, "Leaving the connection open for other ongoing calls."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, v2, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Le/m/a/h/a/d/l;

    .line 5
    invoke-direct {v0, p0}, Le/m/a/h/a/d/l;-><init>(Le/m/a/h/a/d/r;)V

    .line 6
    invoke-virtual {p0}, Le/m/a/h/a/d/r;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

.method public final d()V
    .locals 6

    iget-object v0, p0, Le/m/a/h/a/d/r;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    .line 1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/h/n;

    .line 2
    new-instance v3, Landroid/os/RemoteException;

    iget-object v4, p0, Le/m/a/h/a/d/r;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v3}, Le/m/a/h/a/h/n;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/m/a/h/a/d/r;->e:Ljava/util/Set;

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
