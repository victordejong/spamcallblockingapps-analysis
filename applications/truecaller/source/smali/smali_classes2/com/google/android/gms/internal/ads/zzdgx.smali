.class public final Lcom/google/android/gms/internal/ads/zzdgx;
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
        "Lcom/google/android/gms/internal/ads/zzdbs;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zza:Lcom/google/android/gms/internal/ads/zzdgp;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zza:Lcom/google/android/gms/internal/ads/zzdgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzd()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
