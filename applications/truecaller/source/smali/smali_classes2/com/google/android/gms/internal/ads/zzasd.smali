.class public final Lcom/google/android/gms/internal/ads/zzasd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatd;


# instance fields
.field private final zza:[Lcom/google/android/gms/internal/ads/zzatd;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasd;->zza:[Lcom/google/android/gms/internal/ads/zzatd;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasd;->zza:[Lcom/google/android/gms/internal/ads/zzatd;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzatd;->zza()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_0

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    return-wide v7

    :cond_2
    return-wide v5
.end method

.method public final zzb(J)Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasd;->zza()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasd;->zza:[Lcom/google/android/gms/internal/ads/zzatd;

    .line 2
    array-length v5, v4

    move v6, v0

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 3
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzatd;->zza()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-nez v9, :cond_2

    .line 4
    invoke-interface {v8, p1, p2}, Lcom/google/android/gms/internal/ads/zzatd;->zzb(J)Z

    move-result v8

    or-int/2addr v7, v8

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    or-int/2addr v1, v7

    if-nez v7, :cond_0

    :goto_1
    return v1
.end method
