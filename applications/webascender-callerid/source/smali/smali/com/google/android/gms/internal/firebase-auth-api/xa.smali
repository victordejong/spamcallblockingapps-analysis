.class public final Lcom/google/android/gms/internal/firebase-auth-api/xa;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/xa;",
        "Lcom/google/android/gms/internal/firebase-auth-api/wa;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/xa;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/xa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/xa;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->u(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic A()Lcom/google/android/gms/internal/firebase-auth-api/xa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;

    return-object v0
.end method

.method static synthetic B(Lcom/google/android/gms/internal/firebase-auth-api/xa;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/firebase-auth-api/xa;Lcom/google/android/gms/internal/firebase-auth-api/ia;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ia;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zze:I

    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/firebase-auth-api/xa;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzf:I

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/firebase-auth-api/xa;Lcom/google/android/gms/internal/firebase-auth-api/nb;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzg:I

    return-void
.end method

.method public static z()Lcom/google/android/gms/internal/firebase-auth-api/wa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/wa;

    return-object v0
.end method


# virtual methods
.method protected final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/wa;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/wa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ua;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/xa;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xa;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/xa;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->x(Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/xa;->zzf:I

    return v0
.end method
