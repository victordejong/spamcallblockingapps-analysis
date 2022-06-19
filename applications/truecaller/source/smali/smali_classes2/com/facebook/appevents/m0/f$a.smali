.class public final Lcom/facebook/appevents/m0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/m0/f;->c(Landroid/app/Application;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/facebook/appevents/internal/ActivityLifecycleTracker$startTracking$2",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object p2, Le/j/n0;->e:Le/j/n0;

    sget-object v0, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v0, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    .line 3
    sget-object p1, Lcom/facebook/appevents/m0/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Lcom/facebook/appevents/m0/c;->a:Lcom/facebook/appevents/m0/c;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v2, Le/j/n0;->e:Le/j/n0;

    sget-object v3, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v3, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v4, "onActivityDestroyed"

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    .line 3
    sget-object v1, Lcom/facebook/appevents/i0/i;->a:Lcom/facebook/appevents/i0/i;

    .line 4
    const-class v1, Lcom/facebook/appevents/i0/i;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/facebook/appevents/i0/j;->f:Lcom/facebook/appevents/i0/j$a;

    invoke-virtual {v2}, Lcom/facebook/appevents/i0/j$a;->a()Lcom/facebook/appevents/i0/j;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, v2, Lcom/facebook/appevents/i0/j;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    invoke-static {p1, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {p1, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v2, Le/j/n0;->e:Le/j/n0;

    sget-object v3, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v3, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v4, "onActivityPaused"

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    .line 3
    sget-object v2, Lcom/facebook/appevents/m0/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/appevents/m0/f;->a()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-static {p1}, Lcom/facebook/internal/q0;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/facebook/appevents/i0/i;->a:Lcom/facebook/appevents/i0/i;

    .line 9
    const-class v4, Lcom/facebook/appevents/i0/i;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/facebook/appevents/i0/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    sget-object v0, Lcom/facebook/appevents/i0/j;->f:Lcom/facebook/appevents/i0/j$a;

    invoke-virtual {v0}, Lcom/facebook/appevents/i0/j$a;->a()Lcom/facebook/appevents/i0/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/appevents/i0/j;->d(Landroid/app/Activity;)V

    .line 12
    sget-object p1, Lcom/facebook/appevents/i0/i;->d:Lcom/facebook/appevents/i0/l;

    if-nez p1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    :try_start_1
    iget-object v0, p1, Lcom/facebook/appevents/i0/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    :try_start_2
    iget-object v0, p1, Lcom/facebook/appevents/i0/l;->c:Ljava/util/Timer;

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p1, Lcom/facebook/appevents/i0/l;->c:Ljava/util/Timer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    :try_start_3
    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    :catch_0
    :goto_1
    sget-object p1, Lcom/facebook/appevents/i0/i;->c:Landroid/hardware/SensorManager;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/facebook/appevents/i0/i;->b:Lcom/facebook/appevents/i0/m;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 19
    invoke-static {p1, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    :goto_2
    new-instance p1, Lcom/facebook/appevents/m0/a;

    invoke-direct {p1, v1, v2, v3}, Lcom/facebook/appevents/m0/a;-><init>(JLjava/lang/String;)V

    .line 21
    sget-object v0, Lcom/facebook/appevents/m0/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v1, Le/j/n0;->e:Le/j/n0;

    sget-object v2, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v2, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v3, "onActivityResumed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    const-string v0, "activity"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/m0/f;->l:Ljava/lang/ref/WeakReference;

    .line 5
    sget-object v0, Lcom/facebook/appevents/m0/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    sget-object v0, Lcom/facebook/appevents/m0/f;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/m0/f;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/facebook/appevents/m0/f;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 9
    sput-object v1, Lcom/facebook/appevents/m0/f;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    monitor-exit v0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    sput-wide v2, Lcom/facebook/appevents/m0/f;->j:J

    .line 13
    invoke-static {p1}, Lcom/facebook/internal/q0;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v4, Lcom/facebook/appevents/i0/i;->a:Lcom/facebook/appevents/i0/i;

    .line 15
    sget-object v4, Lcom/facebook/appevents/i0/i;->b:Lcom/facebook/appevents/i0/m;

    const-class v5, Lcom/facebook/appevents/i0/i;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_1
    const-string v6, "activity"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v6, Lcom/facebook/appevents/i0/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 17
    :cond_3
    sget-object v6, Lcom/facebook/appevents/i0/j;->f:Lcom/facebook/appevents/i0/j$a;

    invoke-virtual {v6}, Lcom/facebook/appevents/i0/j$a;->a()Lcom/facebook/appevents/i0/j;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/facebook/appevents/i0/j;->b(Landroid/app/Activity;)V

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 19
    sget-object v7, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v7

    .line 20
    sget-object v8, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    invoke-static {v7}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    iget-boolean v1, v8, Lcom/facebook/internal/c0;->h:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 23
    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v1, "sensor"

    .line 24
    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/facebook/appevents/i0/i;->c:Landroid/hardware/SensorManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    const-string v6, "Required value was null."

    const/4 v9, 0x1

    .line 25
    :try_start_2
    invoke-virtual {v1, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 26
    new-instance v9, Lcom/facebook/appevents/i0/l;

    invoke-direct {v9, p1}, Lcom/facebook/appevents/i0/l;-><init>(Landroid/app/Activity;)V

    sput-object v9, Lcom/facebook/appevents/i0/i;->d:Lcom/facebook/appevents/i0/l;

    .line 27
    new-instance v9, Lcom/facebook/appevents/i0/c;

    invoke-direct {v9, v8, v7}, Lcom/facebook/appevents/i0/c;-><init>(Lcom/facebook/internal/c0;Ljava/lang/String;)V

    .line 28
    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_7

    goto :goto_2

    .line 29
    :cond_7
    :try_start_3
    iput-object v9, v4, Lcom/facebook/appevents/i0/m;->a:Lcom/facebook/appevents/i0/m$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 30
    :try_start_4
    invoke-static {v7, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    :goto_2
    sget-object v7, Lcom/facebook/appevents/i0/i;->c:Landroid/hardware/SensorManager;

    if-eqz v7, :cond_a

    const/4 v9, 0x2

    .line 32
    invoke-virtual {v7, v4, v1, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    if-eqz v8, :cond_9

    .line 33
    iget-boolean v1, v8, Lcom/facebook/internal/c0;->h:Z

    if-eqz v1, :cond_9

    .line 34
    sget-object v1, Lcom/facebook/appevents/i0/i;->d:Lcom/facebook/appevents/i0/l;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/facebook/appevents/i0/l;->c()V

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_9
    :goto_3
    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 37
    invoke-static {v1, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    :goto_4
    sget-object v1, Lcom/facebook/appevents/h0/c;->a:Lcom/facebook/appevents/h0/c;

    .line 39
    const-class v1, Lcom/facebook/appevents/h0/c;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    :try_start_5
    const-string v4, "activity"

    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 40
    :try_start_6
    sget-boolean v4, Lcom/facebook/appevents/h0/c;->c:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/facebook/appevents/h0/e;->d:Lcom/facebook/appevents/h0/e;

    .line 41
    new-instance v4, Ljava/util/HashSet;

    invoke-static {}, Lcom/facebook/appevents/h0/e;->a()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    .line 43
    :cond_c
    sget-object v4, Lcom/facebook/appevents/h0/f;->e:Lcom/facebook/appevents/h0/f$a;

    invoke-virtual {v4, p1}, Lcom/facebook/appevents/h0/f$a;->b(Landroid/app/Activity;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v4

    .line 44
    invoke-static {v4, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 45
    :catch_0
    :cond_d
    :goto_5
    sget-object v1, Lcom/facebook/appevents/q0/h;->a:Lcom/facebook/appevents/q0/h;

    invoke-static {p1}, Lcom/facebook/appevents/q0/h;->c(Landroid/app/Activity;)V

    .line 46
    sget-object v1, Lcom/facebook/appevents/k0/m;->a:Lcom/facebook/appevents/k0/m;

    invoke-static {}, Lcom/facebook/appevents/k0/m;->a()V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 48
    new-instance v1, Lcom/facebook/appevents/m0/b;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/facebook/appevents/m0/b;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 49
    sget-object p1, Lcom/facebook/appevents/m0/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 50
    monitor-exit v0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object p2, Le/j/n0;->e:Le/j/n0;

    sget-object v0, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v0, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v1, "onActivitySaveInstanceState"

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    .line 2
    sget p1, Lcom/facebook/appevents/m0/f;->k:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    sput p1, Lcom/facebook/appevents/m0/f;->k:I

    .line 4
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v0, Le/j/n0;->e:Le/j/n0;

    sget-object v1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v1, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v2, "onActivityStarted"

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v0, Le/j/n0;->e:Le/j/n0;

    sget-object v1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    sget-object v1, Lcom/facebook/appevents/m0/f;->b:Ljava/lang/String;

    const-string v2, "onActivityStopped"

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    .line 3
    sget-object p1, Lcom/facebook/appevents/t;->a:Lcom/facebook/appevents/t;

    .line 4
    const-class p1, Lcom/facebook/appevents/t;

    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/t;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/facebook/appevents/b;->a:Lcom/facebook/appevents/b;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 7
    :goto_0
    sget-object p1, Lcom/facebook/appevents/m0/f;->a:Lcom/facebook/appevents/m0/f;

    .line 8
    sget p1, Lcom/facebook/appevents/m0/f;->k:I

    add-int/lit8 p1, p1, -0x1

    .line 9
    sput p1, Lcom/facebook/appevents/m0/f;->k:I

    return-void
.end method
