.class public final Lcom/google/android/gms/internal/ads/zzvw;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzvv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzvm;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzvt;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzvm;Lcom/google/android/gms/internal/ads/zzvt;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zzvv;",
            "Lcom/google/android/gms/internal/ads/zzvm;",
            "Lcom/google/android/gms/internal/ads/zzvt;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvw;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzc:Lcom/google/android/gms/internal/ads/zzvm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvw;->zze:Lcom/google/android/gms/internal/ads/zzvt;

    return-void
.end method

.method private zzb()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwc;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzm()Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzc()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzb:Lcom/google/android/gms/internal/ads/zzvv;

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzvv;->zza(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvy;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    .line 9
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzvy;->zze:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzr()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zze(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzx()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzwl; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    return-void

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zzs(Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzwi;->zzb:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzc:Lcom/google/android/gms/internal/ads/zzvm;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzj()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzwi;->zzb:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzvm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;)V

    const-string v3, "network-cache-written"

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzq()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvw;->zze:Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzvt;->zza(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwi;Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zzw(Lcom/google/android/gms/internal/ads/zzwi;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzwl; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Unhandled exception %s"

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzwo;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwl;

    .line 22
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvw;->zze:Lcom/google/android/gms/internal/ads/zzvt;

    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzvt;->zzb(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzx()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    return-void

    :catch_1
    move-exception v2

    .line 27
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzvw;->zze:Lcom/google/android/gms/internal/ads/zzvt;

    .line 28
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzvt;->zzb(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzx()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    return-void

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzf(I)V

    .line 31
    throw v2
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvw;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzd:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzwo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvw;->zzd:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
