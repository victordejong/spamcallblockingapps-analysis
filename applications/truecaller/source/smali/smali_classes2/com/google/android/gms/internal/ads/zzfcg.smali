.class public final enum Lcom/google/android/gms/internal/ads/zzfcg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzfcg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfcg;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfcg;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfcg;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzfcg;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcg;

    const-string v1, "Rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfcg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfcg;->zza:Lcom/google/android/gms/internal/ads/zzfcg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfcg;

    const-string v3, "Interstitial"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfcg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfcg;

    const-string v5, "AppOpen"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzfcg;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfcg;->zzc:Lcom/google/android/gms/internal/ads/zzfcg;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzfcg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzfcg;->zzd:[Lcom/google/android/gms/internal/ads/zzfcg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfcg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfcg;->zzd:[Lcom/google/android/gms/internal/ads/zzfcg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfcg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfcg;

    return-object v0
.end method
