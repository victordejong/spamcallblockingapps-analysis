.class public Le/m/d/y/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Le/m/d/y/d1;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/m/d/y/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/m;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 2
    sget-object v2, Le/m/d/y/m;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Le/m/d/y/m;->c:Le/m/d/y/d1;

    if-nez v3, :cond_0

    new-instance v3, Le/m/d/y/d1;

    .line 3
    invoke-direct {v3, p0, v0}, Le/m/d/y/d1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Le/m/d/y/m;->c:Le/m/d/y/d1;

    :cond_0
    sget-object p0, Le/m/d/y/m;->c:Le/m/d/y/d1;

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    monitor-enter p0

    :try_start_1
    const-string v0, "FirebaseMessaging"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    new-instance v0, Le/m/d/y/d1$a;

    .line 8
    invoke-direct {v0, p1}, Le/m/d/y/d1$a;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Le/m/d/y/d1;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    new-instance v1, Le/m/d/y/c1;

    invoke-direct {v1, v0}, Le/m/d/y/c1;-><init>(Le/m/d/y/d1$a;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2328

    invoke-interface {p1, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 10
    iget-object v2, v0, Le/m/d/y/d1$a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    iget-object v2, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 12
    new-instance v3, Le/m/d/y/b1;

    invoke-direct {v3, v1}, Le/m/d/y/b1;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 13
    iget-object v1, v2, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    new-instance v4, Le/m/a/f/q/o;

    invoke-direct {v4, p1, v3}, Le/m/a/f/q/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    invoke-virtual {v1, v4}, Le/m/a/f/q/w;->a(Le/m/a/f/q/v;)V

    .line 14
    invoke-virtual {v2}, Le/m/a/f/q/b0;->A()V

    .line 15
    iget-object p1, p0, Le/m/d/y/d1;->d:Ljava/util/Queue;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Le/m/d/y/d1;->b()V

    .line 18
    iget-object p1, v0, Le/m/d/y/d1$a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    sget-object p0, Le/m/d/y/l;->a:Le/m/d/y/l;

    sget-object v0, Le/m/d/y/i;->a:Le/m/d/y/i;

    .line 22
    invoke-virtual {p1, p0, v0}, Le/m/a/f/q/b0;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    .line 24
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "rawData"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Le/m/d/y/m;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0, p1}, Le/m/d/y/m;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object v1, Le/m/d/y/l;->a:Le/m/d/y/l;

    new-instance v2, Le/m/d/y/k;

    invoke-direct {v2, v0, p1}, Le/m/d/y/k;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 9
    new-instance v3, Le/m/d/y/h;

    invoke-direct {v3, v0, p1}, Le/m/d/y/h;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
