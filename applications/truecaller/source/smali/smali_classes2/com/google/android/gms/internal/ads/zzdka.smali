.class public final Lcom/google/android/gms/internal/ads/zzdka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzcml;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdka;->zza:Lcom/google/android/gms/internal/ads/zzdjm;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcml;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdka;->zza:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzb()Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdka;->zza:Lcom/google/android/gms/internal/ads/zzdjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjm;->zzb()Lcom/google/android/gms/internal/ads/zzcml;

    move-result-object v0

    return-object v0
.end method
