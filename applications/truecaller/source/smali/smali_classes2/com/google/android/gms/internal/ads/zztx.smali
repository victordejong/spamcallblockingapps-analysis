.class public final synthetic Lcom/google/android/gms/internal/ads/zztx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzoa;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zztx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zztx;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zznu;
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zztz;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zznu;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztz;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zztz;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method
