.class public final Lcom/google/android/gms/internal/ads/zzbyy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

.field private final zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

.field private zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbyy;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zza:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbyy;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyy;->zzf(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbnb;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Lcom/google/android/gms/internal/ads/zzbnb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzc:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzbno;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbyx;-><init>(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbyv;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzbnl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzb:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyw;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbyw;-><init>(Lcom/google/android/gms/internal/ads/zzbyy;Lcom/google/android/gms/internal/ads/zzbyv;)V

    return-object v0
.end method
