.class public Lcom/google/android/gms/internal/ads/zzno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzot;


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:I

.field private final zzd:J

.field private final zze:I

.field private final zzf:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:J

    const/4 p7, -0x1

    if-ne p6, p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzno;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzno;->zze:I

    const-wide/16 p6, -0x1

    cmp-long v0, p1, p6

    if-nez v0, :cond_1

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzno;->zzd:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzf:J

    return-void

    :cond_1
    sub-long p6, p1, p3

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzno;->zzd:J

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzno;->zzb(JJI)J

    move-result-wide p1

    goto :goto_0
.end method

.method private static zzb(JJI)J
    .locals 0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 1
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 p2, 0x7a1200

    mul-long/2addr p0, p2

    int-to-long p2, p4

    div-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public final zza(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzno;->zze:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzno;->zzb(JJI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zze()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzno;->zzd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzno;->zzd:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzno;->zze:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzno;->zzc:I

    int-to-long v9, v9

    int-to-long v11, v8

    mul-long v11, v11, p1

    const-wide/32 v13, 0x7a1200

    div-long/2addr v11, v13

    div-long/2addr v11, v9

    mul-long/2addr v11, v9

    if-eqz v5, :cond_0

    sub-long/2addr v1, v9

    .line 2
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 3
    :cond_0
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzno;->zzb:J

    add-long/2addr v5, v1

    .line 4
    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzno;->zza(J)J

    move-result-wide v1

    new-instance v7, Lcom/google/android/gms/internal/ads/zzou;

    .line 5
    invoke-direct {v7, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzno;->zzd:J

    cmp-long v3, v8, v3

    if-eqz v3, :cond_2

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzno;->zzc:I

    int-to-long v1, v1

    add-long/2addr v5, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzno;->zza:J

    cmp-long v1, v5, v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzno;->zza(J)J

    move-result-wide v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzou;

    .line 7
    invoke-direct {v3, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    .line 8
    invoke-direct {v1, v7, v3}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object v1

    .line 9
    :cond_2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    .line 10
    invoke-direct {v1, v7, v7}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object v1

    .line 11
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzno;->zzb:J

    .line 12
    invoke-direct {v2, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    .line 13
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object v1
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzno;->zzf:J

    return-wide v0
.end method
