.class public final Lcom/google/android/gms/internal/ads/zzcws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcws;->zza:Lcom/google/android/gms/internal/ads/zzcwr;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcws;->zza:Lcom/google/android/gms/internal/ads/zzcwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwr;->zzb()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcws;->zza:Lcom/google/android/gms/internal/ads/zzcwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwr;->zzb()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
