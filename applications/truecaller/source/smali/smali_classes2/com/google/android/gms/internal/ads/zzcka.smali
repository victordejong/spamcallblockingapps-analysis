.class public final synthetic Lcom/google/android/gms/internal/ads/zzcka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# instance fields
.field private final zza:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcka;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzatz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcka;->zza:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/zzatx;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzatx;-><init>([B)V

    return-object v1
.end method
