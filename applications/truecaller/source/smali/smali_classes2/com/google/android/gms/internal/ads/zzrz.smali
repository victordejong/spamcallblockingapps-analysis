.class public final Lcom/google/android/gms/internal/ads/zzrz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzot;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzsa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsa;Lcom/google/android/gms/internal/ads/zzry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsa;->zzc(Lcom/google/android/gms/internal/ads/zzsa;)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsm;->zzi(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzsa;->zza(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzsa;->zzb(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzsa;->zza(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzsa;->zzd(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v8

    sub-long/2addr v4, v6

    mul-long/2addr v4, v0

    div-long/2addr v4, v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsa;->zza(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsa;->zzb(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v0

    add-long/2addr v2, v4

    const-wide/16 v4, -0x7530

    add-long v6, v2, v4

    const-wide/16 v2, -0x1

    add-long v10, v0, v2

    .line 2
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzou;

    .line 3
    invoke-direct {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    .line 4
    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object v2
.end method

.method public final zzg()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsa;->zzc(Lcom/google/android/gms/internal/ads/zzsa;)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zza:Lcom/google/android/gms/internal/ads/zzsa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsa;->zzd(Lcom/google/android/gms/internal/ads/zzsa;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzh(J)J

    move-result-wide v0

    return-wide v0
.end method
