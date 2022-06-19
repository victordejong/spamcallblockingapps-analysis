.class public final Lcom/google/android/gms/internal/ads/zzadz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method public synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzadz;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    return-void
.end method

.method private final zzf()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    return-void
.end method

.method private static zzg(JJF)J
    .locals 0

    long-to-float p0, p0

    const p1, 0x3f7fbe77    # 0.999f

    mul-float/2addr p0, p1

    long-to-float p1, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzb:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    const p1, 0x3f7851ec    # 0.97f

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    const p1, 0x3f83d70a    # 1.03f

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadz;->zzf()V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadz;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    return-void
.end method

.method public final zzd(JJ)F
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    sub-long v5, p1, p3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    goto :goto_0

    :cond_0
    const v1, 0x3f7fbe77    # 0.999f

    .line 2
    invoke-static {v7, v8, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzg(JJF)J

    move-result-wide v7

    .line 3
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    invoke-static {v7, v8, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzg(JJF)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    .line 5
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    cmp-long v1, v5, v3

    const-wide/16 v5, 0x3e8

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-ltz v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    return v1

    .line 7
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    add-long v15, v9, v7

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    cmp-long v1, v7, v15

    const v7, 0x33d6bf95    # 1.0E-7f

    const/high16 v8, -0x40800000    # -1.0f

    if-lez v1, :cond_5

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    long-to-float v3, v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    const/4 v5, 0x3

    new-array v6, v5, [J

    const/4 v9, 0x0

    aput-wide v15, v6, v9

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    const/4 v12, 0x1

    aput-wide v10, v6, v12

    const/4 v10, 0x2

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    add-float/2addr v1, v8

    mul-float/2addr v1, v3

    move-object v11, v6

    float-to-long v5, v1

    add-float/2addr v4, v8

    mul-float/2addr v4, v3

    float-to-long v3, v4

    add-long/2addr v5, v3

    sub-long/2addr v13, v5

    aput-wide v13, v11, v10

    aget-wide v3, v11, v9

    const/4 v1, 0x3

    :goto_2
    if-ge v12, v1, :cond_4

    aget-wide v5, v11, v12

    cmp-long v8, v5, v3

    if-lez v8, :cond_3

    move-wide v3, v5

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 9
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    add-float/2addr v5, v8

    .line 10
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v7

    float-to-long v5, v1

    sub-long v11, p1, v5

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    .line 11
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v1, v8, v3

    if-eqz v1, :cond_6

    cmp-long v1, v5, v8

    if-lez v1, :cond_6

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    move-wide v3, v8

    goto :goto_3

    :cond_6
    move-wide v3, v5

    :goto_3
    sub-long v3, p1, v3

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zza:J

    cmp-long v1, v5, v8

    if-gez v1, :cond_7

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    goto :goto_4

    :cond_7
    long-to-float v1, v3

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    .line 13
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzz(FFF)F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    :cond_8
    :goto_4
    return v2
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    return-wide v0
.end method
