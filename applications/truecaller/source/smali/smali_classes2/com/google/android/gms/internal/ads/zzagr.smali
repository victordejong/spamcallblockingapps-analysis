.class public final synthetic Lcom/google/android/gms/internal/ads/zzagr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfog;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzhf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagr;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzb:Lcom/google/android/gms/internal/ads/zzfog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzc:Lcom/google/android/gms/internal/ads/zzhf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagr;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzb:Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagr;->zzc:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzq(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzhf;)V

    return-void
.end method
