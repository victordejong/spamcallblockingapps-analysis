.class public final Lcom/google/android/gms/internal/ads/zzbjs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/ads/zzbka;Lcom/google/android/gms/internal/ads/zzbjx;[Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbka;->zzb(Lcom/google/android/gms/internal/ads/zzbjx;J[Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method
