.class public final Lcom/google/android/gms/internal/ads/zzbqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzt;


# instance fields
.field public zza:Z

.field public final synthetic zzb:Z

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbcv;

.field public final synthetic zzd:Ljava/util/Map;

.field public final synthetic zze:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbqc;ZLcom/google/android/gms/internal/ads/zzbcv;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzc:Lcom/google/android/gms/internal/ads/zzbcv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzd:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zze:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzc:Lcom/google/android/gms/internal/ads/zzbcv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdio;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzb()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zza:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzd:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zze:Ljava/util/Map;

    const-string v2, "event_id"

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzc:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqa;->zzd:Ljava/util/Map;

    const-string v1, "openIntentAsync"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final zzb(I)V
    .locals 0

    return-void
.end method
