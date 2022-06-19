.class public final Lcom/google/android/gms/internal/firebase-auth-api/ib;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
        "Lcom/google/android/gms/internal/firebase-auth-api/hb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/lb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

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

.method public static A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/ib;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->k(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    return-object p0
.end method

.method public static B()Lcom/google/android/gms/internal/firebase-auth-api/hb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/hb;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/gms/internal/firebase-auth-api/ib;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    return-object v0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/firebase-auth-api/ib;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzb:I

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/firebase-auth-api/ib;Lcom/google/android/gms/internal/firebase-auth-api/lb;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zze:Lcom/google/android/gms/internal/firebase-auth-api/lb;

    return-void
.end method


# virtual methods
.method protected final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/hb;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/hb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/gb;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ib;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ib;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

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

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zzb:I

    return v0
.end method

.method public final z()Lcom/google/android/gms/internal/firebase-auth-api/lb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ib;->zze:Lcom/google/android/gms/internal/firebase-auth-api/lb;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/lb;->B()Lcom/google/android/gms/internal/firebase-auth-api/lb;

    move-result-object v0

    :cond_0
    return-object v0
.end method
