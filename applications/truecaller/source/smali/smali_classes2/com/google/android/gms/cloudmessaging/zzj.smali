.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/d/c;

.field public final synthetic b:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/d/c;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzj;->a:Le/m/a/f/d/c;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzj;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzj;->a:Le/m/a/f/d/c;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzj;->b:Landroid/os/IBinder;

    monitor-enter v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Null service connection"

    .line 1
    invoke-virtual {v0, v2, v1}, Le/m/a/f/d/c;->a(ILjava/lang/String;)V

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Le/m/a/f/d/d;

    .line 3
    invoke-direct {v3, v1}, Le/m/a/f/d/d;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v0, Le/m/a/f/d/c;->c:Le/m/a/f/d/d;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x2

    :try_start_2
    iput v1, v0, Le/m/a/f/d/c;->a:I

    .line 4
    iget-object v1, v0, Le/m/a/f/d/c;->f:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/cloudmessaging/zzs;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzh;

    .line 7
    invoke-direct {v2, v0}, Lcom/google/android/gms/cloudmessaging/zzh;-><init>(Le/m/a/f/d/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/m/a/f/d/c;->a(ILjava/lang/String;)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
