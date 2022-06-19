.class public abstract Le/m/d/y/g;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private binder:Landroid/os/Binder;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public static bridge synthetic -$$Nest$mprocessIntent(Le/m/d/y/g;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    invoke-direct {p0, p1}, Le/m/d/y/g;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_messaging/zzi;->zza()Lcom/google/android/gms/internal/firebase_messaging/zzf;

    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v0, "Firebase-Messaging-Intent-Handle"

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 6
    iput-object v0, p0, Le/m/d/y/g;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/d/y/g;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Le/m/d/y/g;->runningTasks:I

    return-void
.end method

.method private finishTask(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Le/m/d/y/x0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/m/d/y/x0;->c:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    sget-object p1, Le/m/d/y/x0;->c:Lcom/google/android/gms/stats/WakeLock;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/stats/WakeLock;->c()V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Le/m/d/y/g;->lock:Ljava/lang/Object;

    .line 8
    monitor-enter p1

    :try_start_1
    iget v0, p0, Le/m/d/y/g;->runningTasks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/m/d/y/g;->runningTasks:I

    if-nez v0, :cond_2

    iget v0, p0, Le/m/d/y/g;->lastStartId:I

    .line 9
    invoke-virtual {p0, v0}, Le/m/d/y/g;->stopSelfResultHook(I)Z

    .line 10
    :cond_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/d/y/g;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Le/m/d/y/g;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/y/e;

    invoke-direct {v2, p0, p1, v0}, Le/m/d/y/e;-><init>(Le/m/d/y/g;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p1
.end method


# virtual methods
.method public abstract getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/d/y/g;->finishTask(Landroid/content/Intent;)V

    return-void
.end method

.method public lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/m/d/y/g;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {p1, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {p2, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    .line 3
    throw p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Le/m/d/y/g;->binder:Landroid/os/Binder;

    if-nez p1, :cond_0

    new-instance p1, Le/m/d/y/a1;

    new-instance v0, Le/m/d/y/g$a;

    .line 3
    invoke-direct {v0, p0}, Le/m/d/y/g$a;-><init>(Le/m/d/y/g;)V

    invoke-direct {p1, v0}, Le/m/d/y/a1;-><init>(Le/m/d/y/a1$a;)V

    iput-object p1, p0, Le/m/d/y/g;->binder:Landroid/os/Binder;

    :cond_0
    iget-object p1, p0, Le/m/d/y/g;->binder:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/y/g;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object p2, p0, Le/m/d/y/g;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iput p3, p0, Le/m/d/y/g;->lastStartId:I

    iget p3, p0, Le/m/d/y/g;->runningTasks:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Le/m/d/y/g;->runningTasks:I

    .line 2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, p1}, Le/m/d/y/g;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Le/m/d/y/g;->finishTask(Landroid/content/Intent;)V

    return p3

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Le/m/d/y/g;->processIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Le/m/d/y/g;->finishTask(Landroid/content/Intent;)V

    return p3

    :cond_1
    sget-object p3, Le/m/d/y/f;->a:Le/m/d/y/f;

    .line 8
    new-instance v0, Le/m/d/y/d;

    invoke-direct {v0, p0, p1}, Le/m/d/y/d;-><init>(Le/m/d/y/g;Landroid/content/Intent;)V

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopSelfResultHook(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
