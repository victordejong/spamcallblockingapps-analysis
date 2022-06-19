.class public final Lcom/google/android/gms/internal/ads/zzbyx;
.super Lcom/google/android/gms/internal/ads/zzbnn;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbyv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbnb;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyy;->zza(Lcom/google/android/gms/internal/ads/zzbyy;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyy;->zze(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
