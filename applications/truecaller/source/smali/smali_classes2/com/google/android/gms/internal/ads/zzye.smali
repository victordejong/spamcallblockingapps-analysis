.class public final Lcom/google/android/gms/internal/ads/zzye;
.super Lcom/google/android/gms/internal/ads/zzgga;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgga<",
        "Lcom/google/android/gms/internal/ads/zzye;",
        "Lcom/google/android/gms/internal/ads/zzyd;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzye;


# instance fields
.field private zzb:I

.field private zze:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzye;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzye;->zzf:Lcom/google/android/gms/internal/ads/zzye;

    const-class v1, Lcom/google/android/gms/internal/ads/zzye;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgga;->zzay(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zze:I

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/ads/zzye;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzye;->zzf:Lcom/google/android/gms/internal/ads/zzye;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzye;->zzf:Lcom/google/android/gms/internal/ads/zzye;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyd;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzyd;-><init>(Lcom/google/android/gms/internal/ads/zzya;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzye;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzye;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzyf;->zza:Lcom/google/android/gms/internal/ads/zzgge;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzye;->zzf:Lcom/google/android/gms/internal/ads/zzye;

    const-string p3, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\u100c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgga;->zzaz(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
