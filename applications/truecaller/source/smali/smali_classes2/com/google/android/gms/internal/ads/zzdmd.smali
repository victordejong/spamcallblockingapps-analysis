.class public final synthetic Lcom/google/android/gms/internal/ads/zzdmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmh;Lcom/google/android/gms/internal/ads/zzdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzdmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzb:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zza:Lcom/google/android/gms/internal/ads/zzdmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmd;->zzb:Lcom/google/android/gms/internal/ads/zzdog;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzN(Lcom/google/android/gms/internal/ads/zzdog;)V

    return-void
.end method
