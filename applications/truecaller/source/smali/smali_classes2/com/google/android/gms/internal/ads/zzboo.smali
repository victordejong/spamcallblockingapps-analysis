.class public final Lcom/google/android/gms/internal/ads/zzboo;
.super Lcom/google/android/gms/internal/ads/zzbnu;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboo;->zza:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzboe;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboo;->zza:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbof;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbof;-><init>(Lcom/google/android/gms/internal/ads/zzboe;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;->onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
