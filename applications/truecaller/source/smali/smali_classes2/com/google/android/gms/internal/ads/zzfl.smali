.class public final Lcom/google/android/gms/internal/ads/zzfl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfo;

.field public final zzb:Landroid/media/MediaFormat;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzafv;

.field public final zzd:Landroid/view/Surface;

.field public final zze:Landroid/media/MediaCrypto;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzb:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzd:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zze:Landroid/media/MediaCrypto;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzfl;
    .locals 8

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object p3
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzfl;
    .locals 8

    .line 1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzfl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-object p4
.end method
