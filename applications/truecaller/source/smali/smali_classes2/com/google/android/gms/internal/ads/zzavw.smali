.class public final Lcom/google/android/gms/internal/ads/zzavw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzapf;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavw;->zzb:Lcom/google/android/gms/internal/ads/zzavx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavw;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavw;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    return-void
.end method
