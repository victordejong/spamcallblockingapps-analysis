.class public final Lcom/google/android/gms/internal/ads/zzgcr;
.super Lcom/google/android/gms/internal/ads/zzgcs;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcs;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final zzb([BI)Lcom/google/android/gms/internal/ads/zzgcq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcp;-><init>([BI)V

    return-object v0
.end method
