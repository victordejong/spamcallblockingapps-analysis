.class public final Lcom/google/android/gms/internal/ads/zzaea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzko;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:J

.field private final zze:J

.field private final zzf:J

.field private zzg:I

.field private zzh:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzko;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzko;-><init>(ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    .line 2
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 3
    invoke-static {v5, v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 4
    invoke-static {v7, v1, v8, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v7, v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 6
    invoke-static {v7, v7, v1, v8}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 7
    invoke-static {v2, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    const-wide/32 v0, 0xc350

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:J

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:J

    const-wide/16 v0, 0x9c4

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:J

    const-wide/16 v0, 0x1388

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    const/high16 v0, 0xc80000

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:J

    return-void
.end method

.method private final zzj(Z)V
    .locals 1

    const/high16 v0, 0xc80000

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzko;->zza()V

    :cond_0
    return-void
.end method

.method private static zzk(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzb(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(Z)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(Z)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(Z)V

    return-void
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:J

    return-wide v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf(JJF)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzg()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1, p5}, Lcom/google/android/gms/internal/ads/zzamq;->zzJ(JF)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:J

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/32 v2, 0x7a120

    .line 3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p5, p3, v0

    const/4 v0, 0x0

    if-gez p5, :cond_2

    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Z

    if-nez v0, :cond_4

    cmp-long p1, p3, v2

    goto :goto_0

    .line 4
    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:J

    cmp-long p3, p3, v1

    if-gez p3, :cond_3

    if-lt p1, p2, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:Z

    return p1
.end method

.method public final zzg(JFZJ)Z
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamq;->zzK(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zze:J

    goto :goto_0

    .line 2
    :cond_0
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2

    .line 3
    div-long/2addr p5, v0

    .line 4
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_3

    cmp-long p1, p1, p3

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzg()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzko;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    return-object v0
.end method

.method public final zzi([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzs;[Lcom/google/android/gms/internal/ads/zzjg;)V
    .locals 4

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x2

    const/high16 v2, 0xc80000

    if-ge p2, v1, :cond_2

    .line 1
    aget-object v1, p3, p2

    if-eqz v1, :cond_1

    .line 2
    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzahv;->zzac()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/high16 v2, 0x7d00000

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzko;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzko;->zzb(I)V

    return-void
.end method
