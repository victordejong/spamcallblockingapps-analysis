.class public Le/m/d/y/w0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/y/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Le/m/d/y/w0;

.field public final synthetic b:Le/m/d/y/w0;


# direct methods
.method public constructor <init>(Le/m/d/y/w0;Le/m/d/y/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/y/w0$a;->b:Le/m/d/y/w0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Le/m/d/y/w0$a;->a:Le/m/d/y/w0;

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p2, p0, Le/m/d/y/w0$a;->a:Le/m/d/y/w0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Le/m/d/y/w0;->e()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_2
    invoke-static {}, Le/m/d/y/w0;->a()Z

    .line 5
    iget-object p2, p0, Le/m/d/y/w0$a;->a:Le/m/d/y/w0;

    .line 6
    iget-object v0, p2, Le/m/d/y/w0;->d:Le/m/d/y/v0;

    const-wide/16 v1, 0x0

    .line 7
    iget-object v0, v0, Le/m/d/y/v0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 8
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Le/m/d/y/w0$a;->a:Le/m/d/y/w0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
