.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/d/c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzh;->a:Le/m/a/f/d/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzh;->a:Le/m/a/f/d/c;

    :goto_0
    monitor-enter v0

    :try_start_0
    iget v1, v0, Le/m/a/f/d/c;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, v0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 2
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Le/m/a/f/d/c;->c()V

    .line 4
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v0, Le/m/a/f/d/c;->d:Ljava/util/Queue;

    .line 5
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/f/d/f;

    iget-object v3, v0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 6
    iget v4, v1, Le/m/a/f/d/f;->a:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v4, Lcom/google/android/gms/cloudmessaging/zzk;

    .line 9
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/cloudmessaging/zzk;-><init>(Le/m/a/f/d/c;Le/m/a/f/d/f;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    :cond_2
    iget-object v3, v0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 14
    iget-object v3, v3, Lcom/google/android/gms/cloudmessaging/zzs;->a:Landroid/content/Context;

    .line 15
    iget-object v4, v0, Le/m/a/f/d/c;->b:Landroid/os/Messenger;

    .line 16
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, v1, Le/m/a/f/d/f;->c:I

    .line 17
    iput v6, v5, Landroid/os/Message;->what:I

    iget v6, v1, Le/m/a/f/d/f;->a:I

    .line 18
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 19
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v4, Landroid/os/Bundle;

    .line 20
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "oneWay"

    .line 21
    invoke-virtual {v1}, Le/m/a/f/d/f;->b()Z

    move-result v7

    .line 22
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "pkg"

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    iget-object v1, v1, Le/m/a/f/d/f;->d:Landroid/os/Bundle;

    .line 24
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v1, v0, Le/m/a/f/d/c;->c:Le/m/a/f/d/d;

    .line 26
    iget-object v3, v1, Le/m/a/f/d/d;->a:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    .line 27
    invoke-virtual {v3, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v1, Le/m/a/f/d/d;->b:Lcom/google/android/gms/cloudmessaging/zzd;

    if-eqz v1, :cond_4

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzd;->a:Landroid/os/Messenger;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 31
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Both messengers are null"

    .line 32
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/m/a/f/d/c;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
