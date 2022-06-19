.class public final Lcom/google/android/gms/internal/ads/zzfqw$zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfqw$zzd;


# instance fields
.field public next:Lcom/google/android/gms/internal/ads/zzfqw$zzd;

.field public final zzb:Ljava/lang/Runnable;

.field public final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqw$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;->zza:Lcom/google/android/gms/internal/ads/zzfqw$zzd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;->zzb:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;->zzb:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfqw$zzd;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method
