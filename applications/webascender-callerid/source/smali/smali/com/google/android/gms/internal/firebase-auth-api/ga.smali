.class public final Lcom/google/android/gms/internal/firebase-auth-api/ga;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ga;",
        "Lcom/google/android/gms/internal/firebase-auth-api/ca;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/mp;

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ga;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/ga;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->u(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzb:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/mp;->g:Lcom/google/android/gms/internal/firebase-auth-api/mp;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zze:Lcom/google/android/gms/internal/firebase-auth-api/mp;

    return-void
.end method

.method public static B()Lcom/google/android/gms/internal/firebase-auth-api/ca;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ca;

    return-object v0
.end method

.method public static C()Lcom/google/android/gms/internal/firebase-auth-api/ga;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    return-object v0
.end method

.method static synthetic D()Lcom/google/android/gms/internal/firebase-auth-api/ga;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    return-object v0
.end method

.method static synthetic E(Lcom/google/android/gms/internal/firebase-auth-api/ga;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzb:Ljava/lang/String;

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/firebase-auth-api/ga;Lcom/google/android/gms/internal/firebase-auth-api/mp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zze:Lcom/google/android/gms/internal/firebase-auth-api/mp;

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/firebase-auth-api/ga;Lcom/google/android/gms/internal/firebase-auth-api/fa;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzf:I

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/firebase-auth-api/fa;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzf:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/fa;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ca;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ca;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ba;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ga;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ga;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

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

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/firebase-auth-api/mp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ga;->zze:Lcom/google/android/gms/internal/firebase-auth-api/mp;

    return-object v0
.end method
