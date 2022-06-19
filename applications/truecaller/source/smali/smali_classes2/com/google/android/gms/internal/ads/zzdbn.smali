.class public final synthetic Lcom/google/android/gms/internal/ads/zzdbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgl;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzdgl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdgl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdbs;

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfbm;->zzd(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdbs;->zzn(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
