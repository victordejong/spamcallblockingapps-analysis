.class public final Lcom/google/android/gms/internal/ads/zzea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:Z

.field private zzE:J

.field private zzF:J

.field private final zza:Lcom/google/android/gms/internal/ads/zzdz;

.field private final zzb:[J

.field private zzc:Landroid/media/AudioTrack;

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzg:I

.field private zzh:Z

.field private zzi:J

.field private zzj:F

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:Ljava/lang/reflect/Method;

.field private zzo:J

.field private zzp:Z

.field private zzq:Z

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:I

.field private zzw:I

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzn:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:[J

    return-void
.end method

.method private final zzm(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzg:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzn()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzl:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzw:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzv:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzF:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzk:Z

    return-void
.end method

.method private final zzo()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzx:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzx:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzea;->zzg:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzea;->zzA:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzea;->zzz:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v0, v9

    sub-long/2addr v0, v2

    int-to-long v2, v4

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long/2addr v0, v7

    .line 4
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzh:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    cmp-long v1, v7, v5

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzu:J

    :cond_2
    move v1, v0

    :cond_3
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzea;->zzu:J

    add-long/2addr v7, v9

    .line 7
    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_7

    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_6

    const/4 v0, 0x3

    if-ne v1, v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    return-wide v0

    :cond_6
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzt:J

    :cond_8
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzt:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method


# virtual methods
.method public final zza(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzea;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzea;->zze:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(Landroid/media/AudioTrack;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzg:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzh:Z

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzamq;->zzP(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzq:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_0

    .line 4
    div-int/2addr p5, p4

    int-to-long p2, p5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzi:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzs:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzt:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzu:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzp:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzr:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzo:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzj:F

    return-void
.end method

.method public final zzb(Z)J
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    if-ne v1, v2, :cond_7

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide v1

    cmp-long v8, v1, v4

    if-nez v8, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzea;->zzm:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x7530

    cmp-long v10, v10, v12

    const/4 v11, 0x0

    if-ltz v10, :cond_2

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzea;->zzb:[J

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzea;->zzv:I

    sub-long v13, v1, v8

    .line 6
    aput-wide v13, v10, v12

    add-int/2addr v12, v3

    const/16 v10, 0xa

    rem-int/2addr v12, v10

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzea;->zzv:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzea;->zzw:I

    if-ge v12, v10, :cond_1

    add-int/2addr v12, v3

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzea;->zzw:I

    :cond_1
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzea;->zzm:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzea;->zzl:J

    move v10, v11

    :goto_0
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzea;->zzw:I

    if-ge v10, v12, :cond_2

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzea;->zzl:J

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzea;->zzb:[J

    .line 7
    aget-wide v16, v15, v10

    int-to-long v3, v12

    div-long v16, v16, v3

    add-long v3, v16, v13

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzl:J

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzh:Z

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zza(J)Z

    move-result v4

    const-wide/32 v12, 0x4c4b40

    if-nez v4, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()J

    move-result-wide v6

    sub-long/2addr v4, v8

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-lez v4, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzej;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzA(Lcom/google/android/gms/internal/ads/zzen;)J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzB(Lcom/google/android/gms/internal/ads/zzen;)J

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()V

    goto :goto_1

    .line 15
    :cond_4
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzej;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzA(Lcom/google/android/gms/internal/ads/zzen;)J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzB(Lcom/google/android/gms/internal/ads/zzen;)J

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()V

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzc()V

    .line 20
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzq:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzn:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzea;->zzr:J

    sub-long v2, v8, v2

    const-wide/32 v4, 0x7a120

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-array v3, v11, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget v2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzi:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzo:J

    const-wide/16 v3, 0x0

    .line 23
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzo:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_6

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzo:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzn:Ljava/lang/reflect/Method;

    .line 26
    :cond_6
    :goto_2
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzea;->zzr:J

    .line 27
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()J

    move-result-wide v5

    .line 30
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide v5

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()J

    move-result-wide v7

    sub-long v7, v1, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzj:F

    .line 32
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzJ(JF)J

    move-result-wide v7

    add-long/2addr v7, v5

    goto :goto_5

    .line 33
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzw:I

    if-nez v3, :cond_9

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide v5

    goto :goto_4

    .line 35
    :cond_9
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzl:J

    add-long/2addr v5, v1

    :goto_4
    move-wide v7, v5

    if-nez p1, :cond_a

    .line 36
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzo:J

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x0

    .line 37
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 38
    :cond_a
    :goto_5
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzD:Z

    if-eq v3, v4, :cond_b

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzC:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzF:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzB:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzE:J

    :cond_b
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzF:J

    sub-long v5, v1, v5

    const-wide/32 v9, 0xf4240

    cmp-long v3, v5, v9

    if-gez v3, :cond_c

    const-wide/16 v11, 0x3e8

    mul-long v13, v5, v11

    div-long/2addr v13, v9

    mul-long/2addr v7, v13

    sub-long v9, v11, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzea;->zzE:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzj:F

    .line 39
    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzJ(JF)J

    move-result-wide v5

    add-long/2addr v5, v13

    mul-long/2addr v5, v9

    add-long/2addr v5, v7

    div-long v7, v5, v11

    :cond_c
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzk:Z

    if-nez v3, :cond_d

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzea;->zzB:J

    cmp-long v3, v7, v5

    if-lez v3, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzk:Z

    sub-long v5, v7, v5

    .line 40
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zzj:F

    .line 41
    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzK(JF)J

    move-result-wide v5

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v5

    sub-long/2addr v9, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzea;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzej;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzep;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzdp;

    move-result-object v3

    .line 43
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzdp;->zzd(J)V

    :cond_d
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzea;->zzC:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzea;->zzB:J

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzea;->zzD:Z

    return-wide v7
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    return-void
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(J)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzh:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzea;->zzp:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzp:Z

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzea;->zzj(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzp:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzea;->zze:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzi:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzej;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzen;->zzz(Lcom/google/android/gms/internal/ads/zzen;)J

    move-result-wide v7

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzej;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzw(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzep;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzdp;

    move-result-object v3

    sub-long v7, v0, v7

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdp;->zze(IJJ)V

    :cond_3
    return v2
.end method

.method public final zzf(J)I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzea;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzea;->zze:I

    int-to-long v4, v2

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    long-to-int p1, p1

    sub-int/2addr v3, p1

    return v3
.end method

.method public final zzg(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide p1

    neg-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzea;->zzm(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzh(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzy:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzi(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzz:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzx:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzA:J

    return-void
.end method

.method public final zzj(J)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzh:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzo()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzn()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzx:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method
