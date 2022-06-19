.class final Lcom/appsflyer/AppsFlyerLibCore$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ı:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

.field private synthetic ǃ:Lcom/appsflyer/AppsFlyerLibCore;

.field private synthetic Ι:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->Ι:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ı:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground(Landroid/content/Context;)V
    .locals 6

    const-string v0, "onBecameBackground"

    .line 1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Lcom/appsflyer/AppsFlyerLibCore;J)J

    .line 3
    new-instance v0, Lcom/appsflyer/internal/EventDataCollector;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/EventDataCollector;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    .line 4
    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-string v3, "prev_session_dur"

    invoke-virtual {v0, v3, v1, v2}, Lcom/appsflyer/internal/EventDataCollector;->set(Ljava/lang/String;J)V

    const-string v0, "callStatsBackground background call"

    .line 6
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Ljava/lang/ref/WeakReference;)V

    .line 8
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/appsflyer/internal/af;->І()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/appsflyer/internal/af;->ı()V

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/af;->ɩ()V

    goto :goto_0

    :cond_1
    const-string v0, "RD status is OFF"

    .line 15
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    .line 17
    :try_start_0
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ɩ:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1}, Lcom/appsflyer/AFExecutor;->ı(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->Ι:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_2

    .line 19
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/appsflyer/AFExecutor;->ı(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "failed to stop Executors"

    .line 20
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->ı(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object p1

    .line 22
    iget-object v0, p1, Lcom/appsflyer/AFSensorManager;->ǃ:Landroid/os/Handler;

    iget-object p1, p1, Lcom/appsflyer/AFSensorManager;->І:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBecameForeground(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/appsflyer/AFSensorManager;->ı(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->ǃ:Landroid/os/Handler;

    iget-object v2, v0, Lcom/appsflyer/AFSensorManager;->І:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->ǃ:Landroid/os/Handler;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->Ι:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string v0, "onBecameForeground"

    .line 5
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;J)J

    .line 7
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Lcom/appsflyer/internal/model/event/Launch;

    invoke-direct {v1}, Lcom/appsflyer/internal/model/event/Launch;-><init>()V

    invoke-virtual {v1, p1}, Lcom/appsflyer/AFEvent;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->Ι:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$4;->ı:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    .line 9
    invoke-virtual {p1, v1}, Lcom/appsflyer/AFEvent;->requestListener(Lcom/appsflyer/attribution/AppsFlyerRequestListener;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AFEvent;)V

    return-void
.end method
