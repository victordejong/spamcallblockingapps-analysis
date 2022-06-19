.class public final Lcom/google/android/gms/ads/internal/util/zzch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zzb:Lcom/google/android/gms/ads/internal/util/zzch;


# instance fields
.field public zza:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/util/zzch;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzch;->zzb:Lcom/google/android/gms/ads/internal/util/zzch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzch;->zzb:Lcom/google/android/gms/ads/internal/util/zzch;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzch;->zzb:Lcom/google/android/gms/ads/internal/util/zzch;

    return-object v0
.end method
