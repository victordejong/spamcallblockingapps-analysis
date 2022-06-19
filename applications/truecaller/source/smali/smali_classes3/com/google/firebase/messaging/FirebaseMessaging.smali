.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field public static final n:J

.field public static o:Le/m/d/y/q0;

.field public static p:Le/m/a/b/g;

.field public static q:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Le/m/d/g;

.field public final b:Le/m/d/u/a/a;

.field public final c:Le/m/d/w/i;

.field public final d:Landroid/content/Context;

.field public final e:Le/m/d/y/c0;

.field public final f:Le/m/d/y/l0;

.field public final g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/y/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/m/d/y/g0;

.field public l:Z

.field public final m:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:J

    return-void
.end method

.method public constructor <init>(Le/m/d/g;Le/m/d/u/a/a;Le/m/d/v/b;Le/m/d/v/b;Le/m/d/w/i;Le/m/a/b/g;Le/m/d/s/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/g;",
            "Le/m/d/u/a/a;",
            "Le/m/d/v/b<",
            "Le/m/d/a0/h;",
            ">;",
            "Le/m/d/v/b<",
            "Le/m/d/t/f;",
            ">;",
            "Le/m/d/w/i;",
            "Le/m/a/b/g;",
            "Le/m/d/s/d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Le/m/d/y/g0;

    .line 2
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v6, v0}, Le/m/d/y/g0;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v7, Le/m/d/y/c0;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Le/m/d/y/c0;-><init>(Le/m/d/g;Le/m/d/y/g0;Le/m/d/v/b;Le/m/d/v/b;Le/m/d/w/i;)V

    .line 6
    new-instance p3, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string p4, "Firebase-Messaging-Task"

    invoke-direct {p3, p4}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 7
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p4, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v1, "Firebase-Messaging-Init"

    invoke-direct {p4, v1}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Z

    sput-object p6, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Le/m/a/b/g;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Le/m/d/u/a/a;

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Le/m/d/w/i;

    new-instance p4, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p4, p0, p7}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Le/m/d/s/d;)V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 9
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 10
    iget-object p4, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 11
    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 12
    new-instance p5, Le/m/d/y/o;

    invoke-direct {p5}, Le/m/d/y/o;-><init>()V

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object v6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Le/m/d/y/g0;

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Ljava/util/concurrent/Executor;

    iput-object v7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Le/m/d/y/c0;

    new-instance p6, Le/m/d/y/l0;

    .line 13
    invoke-direct {p6, p3}, Le/m/d/y/l0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/m/d/y/l0;

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 15
    iget-object p1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 16
    instance-of p3, p1, Landroid/app/Application;

    if-eqz p3, :cond_0

    .line 17
    check-cast p1, Landroid/app/Application;

    .line 18
    invoke-virtual {p1, p5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    :goto_0
    if-eqz p2, :cond_1

    .line 20
    new-instance p1, Le/m/d/y/t;

    invoke-direct {p1, p0}, Le/m/d/y/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Le/m/d/u/a/a;->c(Le/m/d/u/a/a$a;)V

    :cond_1
    new-instance p1, Le/m/d/y/u;

    invoke-direct {p1, p0}, Le/m/d/y/u;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    new-instance p7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string p2, "Firebase-Messaging-Topics-Io"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p7, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 23
    sget p1, Le/m/d/y/v0;->j:I

    .line 24
    new-instance v1, Le/m/d/y/u0;

    move-object p1, v1

    move-object p2, p4

    move-object p3, p7

    move-object p4, p0

    move-object p5, v6

    move-object p6, v7

    invoke-direct/range {p1 .. p6}, Le/m/d/y/u0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Le/m/d/y/g0;Le/m/d/y/c0;)V

    invoke-static {p7, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/android/gms/tasks/Task;

    .line 26
    new-instance p2, Le/m/d/y/p;

    invoke-direct {p2, p0}, Le/m/d/y/p;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/tasks/Task;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Le/m/d/y/v;

    invoke-direct {p1, p0}, Le/m/d/y/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Le/m/d/g;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Le/m/d/y/q0;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Le/m/d/y/q0;

    if-nez v1, :cond_0

    new-instance v1, Le/m/d/y/q0;

    invoke-direct {v1, p0}, Le/m/d/y/q0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Le/m/d/y/q0;

    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Le/m/d/y/q0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Le/m/d/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/d/g;->a()V

    .line 2
    iget-object p0, p0, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {p0, v0}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 4
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Le/m/d/u/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Le/m/d/u/a/a;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 3
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Le/m/d/y/q0$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->k(Le/m/d/y/q0$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Le/m/d/y/q0$a;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    .line 7
    invoke-static {v1}, Le/m/d/y/g0;->b(Le/m/d/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Le/m/d/y/l0;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_1
    iget-object v3, v2, Le/m/d/y/l0;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/tasks/Task;

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    const-string v0, "FirebaseMessaging"

    .line 10
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Joining ongoing request for: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_3

    :cond_4
    :try_start_2
    const-string v3, "FirebaseMessaging"

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Making new request for: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 14
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 15
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Le/m/d/y/c0;

    .line 17
    iget-object v4, v3, Le/m/d/y/c0;->a:Le/m/d/g;

    invoke-static {v4}, Le/m/d/y/g0;->b(Le/m/d/g;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "*"

    invoke-virtual {v3, v4, v6, v5}, Le/m/d/y/c0;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Le/m/d/y/c0;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 19
    sget-object v4, Le/m/d/y/r;->a:Le/m/d/y/r;

    new-instance v5, Le/m/d/y/s;

    invoke-direct {v5, p0, v1, v0}, Le/m/d/y/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Le/m/d/y/q0$a;)V

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tasks/Task;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 21
    iget-object v3, v2, Le/m/d/y/l0;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Le/m/d/y/k0;

    invoke-direct {v4, v2, v1}, Le/m/d/y/k0;-><init>(Le/m/d/y/l0;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    iget-object v0, v2, Le/m/d/y/l0;->b:Ljava/util/Map;

    .line 23
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 24
    :goto_3
    :try_start_3
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    new-instance v1, Ljava/io/IOException;

    .line 25
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit v2

    throw v0
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->q:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->q:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->q:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    .line 5
    invoke-virtual {v0}, Le/m/d/g;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Le/m/d/u/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/m/d/u/a/a;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/d/y/q;

    invoke-direct {v2, p0, v0}, Le/m/d/y/q;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object v0
.end method

.method public g()Le/m/d/y/q0$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)Le/m/d/y/q0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Le/m/d/g;

    invoke-static {v2}, Le/m/d/y/g0;->b(Le/m/d/g;)Ljava/lang/String;

    move-result-object v2

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v3, v0, Le/m/d/y/q0;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2}, Le/m/d/y/q0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/m/d/y/q0$a;->a(Ljava/lang/String;)Le/m/d/y/q0$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public declared-synchronized h(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Le/m/d/u/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/m/d/u/a/a;->getToken()Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Le/m/d/y/q0$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->k(Le/m/d/y/q0$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method

.method public declared-synchronized j(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    .line 1
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Le/m/d/y/r0;

    .line 2
    invoke-direct {v2, p0, v0, v1}, Le/m/d/y/r0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(Le/m/d/y/q0$a;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Le/m/d/y/g0;

    invoke-virtual {v1}, Le/m/d/y/g0;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Le/m/d/y/q0$a;->c:J

    sget-wide v6, Le/m/d/y/q0$a;->d:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    iget-object p1, p1, Le/m/d/y/q0$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    :goto_2
    return v0
.end method
