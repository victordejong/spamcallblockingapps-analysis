.class public Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zzbn:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private zzbo:Lcom/google/android/gms/vision/clearcut/zzb;

.field private zzbp:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v8, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbn:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/clearcut/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/vision/clearcut/zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbo:Lcom/google/android/gms/vision/clearcut/zzb;

    .line 3
    new-instance v0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    invoke-direct {v0, p1}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbp:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbp:Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    return-object p0
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/zzea$zzo;)V
    .locals 8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbo:Lcom/google/android/gms/vision/clearcut/zzb;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/vision/clearcut/zzb;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    iget-wide v4, v0, Lcom/google/android/gms/vision/clearcut/zzb;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/vision/clearcut/zzb;->a:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    .line 5
    monitor-exit v1

    move v0, v5

    goto :goto_0

    .line 6
    :cond_0
    iput-wide v2, v0, Lcom/google/android/gms/vision/clearcut/zzb;->c:J

    const/4 v0, 0x1

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_1

    const-string p1, "Skipping image analysis log due to rate limiting"

    new-array p2, v5, [Ljava/lang/Object;

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/vision/L;->v(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_1
    sget-object v0, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zzbn:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Le/m/a/f/r/b/a;

    invoke-direct {v1, p0, p1, p2}, Le/m/a/f/r/b/a;-><init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILcom/google/android/gms/internal/vision/zzea$zzo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
