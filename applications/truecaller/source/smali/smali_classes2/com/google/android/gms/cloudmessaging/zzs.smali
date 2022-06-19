.class public final Lcom/google/android/gms/cloudmessaging/zzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lcom/google/android/gms/cloudmessaging/zzs;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Le/m/a/f/d/c;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/f/d/c;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Le/m/a/f/d/c;-><init>(Lcom/google/android/gms/cloudmessaging/zzs;Lcom/google/android/gms/cloudmessaging/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->c:Le/m/a/f/d/c;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->d:I

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzs;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzs;
    .locals 4

    const-class v0, Lcom/google/android/gms/cloudmessaging/zzs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzs;->e:Lcom/google/android/gms/cloudmessaging/zzs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zza()Lcom/google/android/gms/internal/cloudmessaging/zzb;

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 4
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/zzs;->e:Lcom/google/android/gms/cloudmessaging/zzs;

    :cond_0
    sget-object p0, Lcom/google/android/gms/cloudmessaging/zzs;->e:Lcom/google/android/gms/cloudmessaging/zzs;
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
.method public final declared-synchronized b(Le/m/a/f/d/f;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/a/f/d/f<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->c:Le/m/a/f/d/c;

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/f/d/c;->d(Le/m/a/f/d/f;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Le/m/a/f/d/c;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Le/m/a/f/d/c;-><init>(Lcom/google/android/gms/cloudmessaging/zzs;Lcom/google/android/gms/cloudmessaging/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->c:Le/m/a/f/d/c;

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/f/d/c;->d(Le/m/a/f/d/f;)Z

    :cond_1
    iget-object p1, p1, Le/m/a/f/d/f;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
