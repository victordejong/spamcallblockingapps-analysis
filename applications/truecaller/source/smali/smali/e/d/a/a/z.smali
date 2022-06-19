.class public final Le/d/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Le/d/a/a/i;

.field public final synthetic d:Le/d/a/a/e;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Le/d/a/a/i;)V
    .locals 0

    iput-object p1, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/z;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/d/a/a/z;->b:Z

    iput-object p2, p0, Le/d/a/a/z;->c:Le/d/a/a/i;

    return-void
.end method


# virtual methods
.method public final a(Le/d/a/a/k;)V
    .locals 2

    iget-object v0, p0, Le/d/a/a/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/d/a/a/z;->c:Le/d/a/a/i;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v1, p1}, Le/d/a/a/i;->onBillingSetupFinished(Le/d/a/a/k;)V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzd;

    move-result-object p2

    .line 3
    iput-object p2, p1, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 4
    iget-object v0, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    new-instance v1, Le/d/a/a/y;

    .line 5
    invoke-direct {v1, p0}, Le/d/a/a/y;-><init>(Le/d/a/a/z;)V

    new-instance v4, Le/d/a/a/x;

    invoke-direct {v4, p0}, Le/d/a/a/x;-><init>(Le/d/a/a/z;)V

    .line 6
    invoke-virtual {v0}, Le/d/a/a/e;->k()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v2, 0x7530

    .line 7
    invoke-virtual/range {v0 .. v5}, Le/d/a/a/e;->o(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    .line 9
    invoke-virtual {p1}, Le/d/a/a/e;->m()Le/d/a/a/k;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Le/d/a/a/z;->a(Le/d/a/a/k;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Le/d/a/a/e;->f:Lcom/google/android/gms/internal/play_billing/zzd;

    .line 3
    iget-object p1, p0, Le/d/a/a/z;->d:Le/d/a/a/e;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Le/d/a/a/e;->a:I

    .line 5
    iget-object p1, p0, Le/d/a/a/z;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Le/d/a/a/z;->c:Le/d/a/a/i;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Le/d/a/a/i;->onBillingServiceDisconnected()V

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
