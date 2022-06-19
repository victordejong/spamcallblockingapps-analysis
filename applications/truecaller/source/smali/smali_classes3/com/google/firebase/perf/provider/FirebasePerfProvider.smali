.class public Lcom/google/firebase/perf/provider/FirebasePerfProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APP_START_TIME:Lcom/google/firebase/perf/util/Timer;

.field public static final EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.google.firebase.firebaseperfprovider"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 2
    sput-object v0, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->APP_START_TIME:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V
    .locals 1

    const-string v0, "FirebasePerfProvider ProviderInfo cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v0, "com.google.firebase.firebaseperfprovider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application\'s build.gradle."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppStartTime()Lcom/google/firebase/perf/util/Timer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->APP_START_TIME:Lcom/google/firebase/perf/util/Timer;

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->checkContentProviderAuthority(Landroid/content/pm/ProviderInfo;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 3
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 7
    sget-object v0, Le/m/d/z/g/d;->d:Le/m/d/z/i/a;

    invoke-static {p2}, Le/m/d/z/n/h;->a(Landroid/content/Context;)Z

    move-result v1

    .line 8
    iput-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    .line 9
    iget-object p1, p1, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {p1, p2}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Le/m/d/z/f/a;->a()Le/m/d/z/f/a;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-boolean v0, p1, Le/m/d/z/f/a;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 14
    monitor-exit p1

    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 16
    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 17
    check-cast p2, Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 18
    iput-boolean v1, p1, Le/m/d/z/f/a;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 19
    :cond_1
    monitor-exit p1

    .line 20
    :goto_0
    new-instance p2, Le/m/d/z/d;

    invoke-direct {p2}, Le/m/d/z/d;-><init>()V

    .line 21
    iget-object v0, p1, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter v0

    .line 22
    :try_start_2
    iget-object p1, p1, Le/m/d/z/f/a;->e:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    sget-object p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    goto :goto_2

    .line 25
    :cond_2
    sget-object p1, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 26
    new-instance p2, Le/m/d/z/n/a;

    invoke-direct {p2}, Le/m/d/z/n/a;-><init>()V

    .line 27
    sget-object v0, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v0, :cond_4

    .line 28
    const-class v0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v2, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    if-nez v2, :cond_3

    .line 30
    new-instance v2, Lcom/google/firebase/perf/metrics/AppStartTrace;

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-wide v6, Lcom/google/firebase/perf/metrics/AppStartTrace;->l:J

    const-wide/16 v8, 0xa

    add-long/2addr v6, v8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {v2, p1, p2, v10}, Lcom/google/firebase/perf/metrics/AppStartTrace;-><init>(Le/m/d/z/m/k;Le/m/d/z/n/a;Ljava/util/concurrent/ExecutorService;)V

    sput-object v2, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 31
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 32
    :cond_4
    :goto_1
    sget-object p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->m:Lcom/google/firebase/perf/metrics/AppStartTrace;

    .line 33
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 34
    monitor-enter p1

    .line 35
    :try_start_4
    iget-boolean v0, p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    .line 36
    monitor-exit p1

    goto :goto_3

    .line 37
    :cond_5
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 38
    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_6

    .line 39
    move-object v0, p2

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 40
    iput-boolean v1, p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->a:Z

    .line 41
    iput-object p2, p1, Lcom/google/firebase/perf/metrics/AppStartTrace;->d:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 42
    :cond_6
    monitor-exit p1

    .line 43
    :goto_3
    iget-object p2, p0, Lcom/google/firebase/perf/provider/FirebasePerfProvider;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/firebase/perf/metrics/AppStartTrace$a;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/AppStartTrace$a;-><init>(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->initializeGaugeCollection()V

    return-void

    :catchall_1
    move-exception p2

    .line 45
    monitor-exit p1

    throw p2

    :catchall_2
    move-exception p1

    .line 46
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p2

    .line 47
    monitor-exit p1

    throw p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
