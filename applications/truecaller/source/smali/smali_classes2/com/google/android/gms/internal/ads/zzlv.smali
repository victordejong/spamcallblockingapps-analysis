.class public final Lcom/google/android/gms/internal/ads/zzlv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:J

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private final zzg:[Z

.field private zzh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzg:[Z

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzg:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public final zzb()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzg:[Z

    const-wide/16 v3, -0x1

    add-long/2addr v0, v3

    const-wide/16 v3, 0xf

    rem-long/2addr v0, v3

    long-to-int v0, v0

    aget-boolean v0, v2, v0

    return v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    return-wide v0
.end method

.method public final zze()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public final zzf(J)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zza:J

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zza:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzc:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xf

    rem-long/2addr v0, v7

    long-to-int v0, v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzb:J

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    cmp-long v1, v1, v7

    if-gtz v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zze:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzf:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzg:[Z

    .line 2
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 3
    aput-boolean v2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzg:[Z

    .line 4
    aget-boolean v2, v1, v0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 5
    aput-boolean v2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzh:I

    .line 6
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlv;->zzc:J

    return-void
.end method
