.class public final Lcom/google/android/gms/internal/ads/zzdun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzduq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdun;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdum;->zza()Lcom/google/android/gms/internal/ads/zzdun;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzduq;

    const/16 v1, 0x11

    const/16 v2, 0x12

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzduq;-><init>(III)V

    return-object v0
.end method
