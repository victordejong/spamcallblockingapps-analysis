.class public final Lcom/google/android/gms/internal/ads/zzdgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzdih<",
        "Lcom/google/android/gms/internal/ads/zzbcv;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgv;->zza:Lcom/google/android/gms/internal/ads/zzdgp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgv;->zza:Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzg()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
