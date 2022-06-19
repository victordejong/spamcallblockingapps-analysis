.class public final Lcom/google/android/gms/internal/ads/zzbyw;
.super Lcom/google/android/gms/internal/ads/zzbnk;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbyv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbnb;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyy;->zzb(Lcom/google/android/gms/internal/ads/zzbyy;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyy;->zzb(Lcom/google/android/gms/internal/ads/zzbyy;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyw;->zza:Lcom/google/android/gms/internal/ads/zzbyy;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyy;->zze(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;->onCustomClick(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Ljava/lang/String;)V

    return-void
.end method
