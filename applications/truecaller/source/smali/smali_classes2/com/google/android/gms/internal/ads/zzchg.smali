.class public final Lcom/google/android/gms/internal/ads/zzchg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzfsn;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v0, "Default"

    .line 3
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, v8

    move-object v5, v9

    .line 4
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzche;

    const/4 v10, 0x0

    .line 6
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 7
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v0, "Loader"

    .line 9
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0xa

    move-object v0, v8

    move-object v5, v9

    .line 10
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v11, 0x1

    .line 11
    invoke-virtual {v8, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzche;

    .line 13
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 14
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v0, "Activeview"

    .line 16
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, v8

    move-object v5, v9

    .line 17
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 18
    invoke-virtual {v8, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzche;

    .line 20
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzc:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v2, "Schedule"

    .line 22
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 23
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzchb;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchd;

    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchd;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    .line 25
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfst;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    .line 27
    invoke-direct {v1, v0, v10}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    return-void
.end method
