.class public final Lcom/google/android/gms/internal/ads/zzty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zztb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzame;

.field private zzd:Z

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztb;Lcom/google/android/gms/internal/ads/zzamn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zza:Lcom/google/android/gms/internal/ads/zztb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzty;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzame;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zza:Lcom/google/android/gms/internal/ads/zztb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztb;->zza()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v3, 0x8

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v4, 0x6

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 8
    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzd:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v5, 0xf

    .line 13
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 14
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    shl-int/2addr v3, v5

    int-to-long v8, v3

    or-long/2addr v6, v8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 15
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    int-to-long v8, v3

    or-long/2addr v6, v8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 16
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzf:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zze:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 18
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 19
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 20
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 21
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 22
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzty;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 23
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzty;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    int-to-long v10, v2

    shl-long/2addr v10, v0

    shl-int/lit8 v0, v3, 0xf

    int-to-long v2, v0

    or-long/2addr v2, v10

    int-to-long v10, v8

    or-long/2addr v2, v10

    .line 24
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzty;->zzf:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zzb:Lcom/google/android/gms/internal/ads/zzamn;

    .line 25
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 26
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zztb;->zzc(JI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzty;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 27
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zztb;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzty;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zztb;->zze()V

    return-void
.end method
