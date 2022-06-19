.class public final synthetic Lcom/google/android/gms/internal/ads/zzbhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zza:Lcom/google/android/gms/internal/ads/zzbhs;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zza:Lcom/google/android/gms/internal/ads/zzbhs;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbho;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbho;-><init>(Lcom/google/android/gms/internal/ads/zzbhs;)V

    const-string v0, "com.google.android.gms.ads.MobileAds"

    .line 2
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
