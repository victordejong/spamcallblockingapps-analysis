.class public final Lcom/google/android/gms/internal/ads/zzbay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgge;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgge;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbay;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbaz;->zza(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
