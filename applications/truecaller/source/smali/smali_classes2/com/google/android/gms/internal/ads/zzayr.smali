.class public final Lcom/google/android/gms/internal/ads/zzayr;
.super Lcom/google/android/gms/internal/ads/zzchl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzchl<",
        "Lcom/google/android/gms/internal/ads/zzayz;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzayx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zza:Lcom/google/android/gms/internal/ads/zzayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayx;->zzf(Lcom/google/android/gms/internal/ads/zzayx;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzchl;->cancel(Z)Z

    move-result p1

    return p1
.end method
