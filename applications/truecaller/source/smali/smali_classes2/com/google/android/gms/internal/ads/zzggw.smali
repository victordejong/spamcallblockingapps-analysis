.class public abstract Lcom/google/android/gms/internal/ads/zzggw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzggw;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzggw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggt;-><init>(Lcom/google/android/gms/internal/ads/zzggv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzggw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzggu;-><init>(Lcom/google/android/gms/internal/ads/zzggv;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggw;->zzb:Lcom/google/android/gms/internal/ads/zzggw;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzggw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzggw;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzggw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzggw;->zzb:Lcom/google/android/gms/internal/ads/zzggw;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/Object;J)V
.end method

.method public abstract zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
