.class public final Lcom/google/android/gms/internal/ads/zzjc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:J

.field public final zzb:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzb:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzjc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzjc;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjc;->zza:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzjc;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzjc;->zzb:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjc;->zza:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzjc;->zzb:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
