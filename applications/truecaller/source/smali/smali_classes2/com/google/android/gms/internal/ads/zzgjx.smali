.class public final Lcom/google/android/gms/internal/ads/zzgjx;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzgjx;",
        "Lcom/google/android/gms/internal/ads/zzgjv;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzgjx;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgex;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjx;->zzh:Lcom/google/android/gms/internal/ads/zzgjx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgjx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzf:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgex;->zzb:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgjv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjx;->zzh:Lcom/google/android/gms/internal/ads/zzgjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzas()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgjv;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zzgjx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjx;->zzh:Lcom/google/android/gms/internal/ads/zzgjx;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgjx;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    const-string p1, "image/png"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzgjx;Lcom/google/android/gms/internal/ads/zzgex;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzg:Lcom/google/android/gms/internal/ads/zzgex;

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzgjx;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zze:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgjx;->zzb:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjx;->zzh:Lcom/google/android/gms/internal/ads/zzgjx;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjv;-><init>(Lcom/google/android/gms/internal/ads/zzgjg;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgjx;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgjx;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgjw;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgjx;->zzh:Lcom/google/android/gms/internal/ads/zzgjx;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u100a\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
