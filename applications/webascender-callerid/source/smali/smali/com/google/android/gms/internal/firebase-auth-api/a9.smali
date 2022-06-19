.class public final Lcom/google/android/gms/internal/firebase-auth-api/a9;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/a9;",
        "Lcom/google/android/gms/internal/firebase-auth-api/z8;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/k9;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/u8;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a9;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a9;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/a9;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->u(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e;-><init>()V

    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/firebase-auth-api/z8;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/z8;

    return-object v0
.end method

.method public static C()Lcom/google/android/gms/internal/firebase-auth-api/a9;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/firebase-auth-api/a9;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    return-object v0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/firebase-auth-api/a9;Lcom/google/android/gms/internal/firebase-auth-api/k9;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k9;

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/firebase-auth-api/a9;Lcom/google/android/gms/internal/firebase-auth-api/u8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zze:Lcom/google/android/gms/internal/firebase-auth-api/u8;

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/firebase-auth-api/a9;Lcom/google/android/gms/internal/firebase-auth-api/r8;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r8;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzf:I

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/firebase-auth-api/r8;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzf:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r8;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/r8;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/r8;->zze:Lcom/google/android/gms/internal/firebase-auth-api/r8;

    :cond_0
    return-object v0
.end method

.method protected final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/z8;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/z8;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/y8;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/a9;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/a9;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/a9;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

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

.method public final y()Lcom/google/android/gms/internal/firebase-auth-api/k9;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/k9;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/k9;->C()Lcom/google/android/gms/internal/firebase-auth-api/k9;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/firebase-auth-api/u8;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/a9;->zze:Lcom/google/android/gms/internal/firebase-auth-api/u8;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u8;->A()Lcom/google/android/gms/internal/firebase-auth-api/u8;

    move-result-object v0

    :cond_0
    return-object v0
.end method
