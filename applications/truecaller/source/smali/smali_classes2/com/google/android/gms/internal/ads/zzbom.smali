.class public final Lcom/google/android/gms/internal/ads/zzbom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbfn;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbon;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbon;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/internal/ads/zzbfn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzc:Lcom/google/android/gms/internal/ads/zzbon;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbom;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzb:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbom;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzb:Lcom/google/android/gms/internal/ads/zzbfn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->zza(Lcom/google/android/gms/internal/ads/zzbfn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbom;->zzc:Lcom/google/android/gms/internal/ads/zzbon;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbon;->zzc(Lcom/google/android/gms/internal/ads/zzbon;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbom;->zza:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;->onAdManagerAdViewLoaded(Lcom/google/android/gms/ads/admanager/AdManagerAdView;)V

    return-void

    :cond_0
    const-string v0, "Could not bind."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    return-void
.end method
