.class public final synthetic Lcom/google/android/gms/internal/ads/zzii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzoa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzoa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzii;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Lcom/google/android/gms/internal/ads/zzoa;)V

    return-object v1
.end method
