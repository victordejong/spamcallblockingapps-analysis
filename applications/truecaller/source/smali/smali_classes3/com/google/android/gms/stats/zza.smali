.class public final synthetic Lcom/google/android/gms/stats/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/stats/WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/stats/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/stats/zza;->a:Lcom/google/android/gms/stats/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/stats/zza;->a:Lcom/google/android/gms/stats/WakeLock;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/stats/WakeLock;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/stats/WakeLock;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    monitor-exit v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/stats/WakeLock;->l:Ljava/lang/String;

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " ** IS FORCE-RELEASED ON TIMEOUT **"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/stats/WakeLock;->e()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/stats/WakeLock;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    monitor-exit v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/stats/WakeLock;->c:I

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/stats/WakeLock;->f(I)V

    .line 9
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
