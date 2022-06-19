.class public final Le/m/a/f/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:I

.field public final b:Landroid/os/Messenger;

.field public c:Le/m/a/f/d/d;

.field public final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/m/a/f/d/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/f/d/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/google/android/gms/cloudmessaging/zzs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzs;Lcom/google/android/gms/cloudmessaging/zzl;)V
    .locals 2

    iput-object p1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Le/m/a/f/d/c;->a:I

    .line 1
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Lcom/google/android/gms/internal/cloudmessaging/zzf;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cloudmessaging/zzf;-><init>(Le/m/a/f/d/c;)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/cloudmessaging/zzf;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Le/m/a/f/d/c;->b:Landroid/os/Messenger;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    new-instance p1, Landroid/util/SparseArray;

    .line 4
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Le/m/a/f/d/c;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Disconnected: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget p1, p0, Le/m/a/f/d/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    iput v1, p0, Le/m/a/f/d/c;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string p1, "MessengerIpcClient"

    .line 6
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    iput v1, p0, Le/m/a/f/d/c;->a:I

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object v0, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/cloudmessaging/zzs;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzq;

    .line 11
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/cloudmessaging/zzq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 12
    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/f/d/f;

    .line 13
    invoke-virtual {p3, p1}, Le/m/a/f/d/f;->c(Lcom/google/android/gms/cloudmessaging/zzq;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 14
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    const/4 p2, 0x0

    :goto_2
    iget-object p3, p0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    iget-object p3, p0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/f/d/f;

    invoke-virtual {p3, p1}, Le/m/a/f/d/f;->c(Lcom/google/android/gms/cloudmessaging/zzq;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/m/a/f/d/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MessengerIpcClient"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Le/m/a/f/d/c;->a:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzs;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Le/m/a/f/d/f;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/f/d/f<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Le/m/a/f/d/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v2

    .line 1
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzh;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/cloudmessaging/zzh;-><init>(Le/m/a/f/d/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 9
    :cond_2
    :try_start_3
    iget-object v0, p0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Le/m/a/f/d/c;->a:I

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v2

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    const-string p1, "MessengerIpcClient"

    .line 12
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    iput v3, p0, Le/m/a/f/d/c;->a:I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    .line 14
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.gms"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 17
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzs;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v0, v1, p1, p0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Unable to bind to service"

    .line 19
    invoke-virtual {p0, v2, p1}, Le/m/a/f/d/c;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object p1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzi;

    .line 22
    invoke-direct {v0, p0}, Lcom/google/android/gms/cloudmessaging/zzi;-><init>(Le/m/a/f/d/c;)V

    const-wide/16 v1, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    invoke-interface {p1, v0, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Unable to bind to service"

    .line 24
    invoke-virtual {p0, v2, v0, p1}, Le/m/a/f/d/c;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 25
    :goto_1
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzj;

    .line 5
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cloudmessaging/zzj;-><init>(Le/m/a/f/d/c;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzg;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/cloudmessaging/zzg;-><init>(Le/m/a/f/d/c;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
