.class public final Lcom/google/android/gms/internal/ads/zzdlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzdrh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdlo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlt;->zza:Lcom/google/android/gms/internal/ads/zzdlo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdrh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlt;->zza:Lcom/google/android/gms/internal/ads/zzdlo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlo;->zzb()Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlt;->zza:Lcom/google/android/gms/internal/ads/zzdlo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlo;->zzb()Lcom/google/android/gms/internal/ads/zzdrh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
