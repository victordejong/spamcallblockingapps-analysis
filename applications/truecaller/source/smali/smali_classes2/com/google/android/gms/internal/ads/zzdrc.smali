.class public final synthetic Lcom/google/android/gms/internal/ads/zzdrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdcj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrc;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdcj;)Lcom/google/android/gms/ads/internal/overlay/zzv;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdrc;-><init>(Lcom/google/android/gms/internal/ads/zzdcj;)V

    return-object v0
.end method


# virtual methods
.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrc;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcj;->zzb()V

    return-void
.end method
