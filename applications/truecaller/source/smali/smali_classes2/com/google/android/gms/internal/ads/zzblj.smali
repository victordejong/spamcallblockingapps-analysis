.class public final Lcom/google/android/gms/internal/ads/zzblj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:ad_loader:timeout_ms"

    const-wide/32 v1, 0xea60

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblj;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v0, "gads:rendering:timeout_ms"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblj;->zzb:Lcom/google/android/gms/internal/ads/zzbkn;

    const-string v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblj;->zzc:Lcom/google/android/gms/internal/ads/zzbkn;

    return-void
.end method
