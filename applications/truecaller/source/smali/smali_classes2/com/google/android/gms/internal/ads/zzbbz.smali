.class public final Lcom/google/android/gms/internal/ads/zzbbz;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzbbz;",
        "Lcom/google/android/gms/internal/ads/zzbby;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzbbz;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbby;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbby;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbbz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbbz;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zze:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzbbz;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzf:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbbz;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbz;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbby;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbby;-><init>(Lcom/google/android/gms/internal/ads/zzazg;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbz;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
