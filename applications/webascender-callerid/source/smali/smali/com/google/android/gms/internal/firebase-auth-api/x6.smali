.class public final Lcom/google/android/gms/internal/firebase-auth-api/x6;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/x6;",
        "Lcom/google/android/gms/internal/firebase-auth-api/w6;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/e7;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/x9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/x6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/x6;

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

.method public static A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/x6;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->k(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    return-object p0
.end method

.method public static B()Lcom/google/android/gms/internal/firebase-auth-api/w6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/w6;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/gms/internal/firebase-auth-api/x6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    return-object v0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/firebase-auth-api/x6;Lcom/google/android/gms/internal/firebase-auth-api/e7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/e7;

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/firebase-auth-api/x6;Lcom/google/android/gms/internal/firebase-auth-api/x9;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zze:Lcom/google/android/gms/internal/firebase-auth-api/x9;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/w6;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/w6;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/v6;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/x6;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

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

.method public final y()Lcom/google/android/gms/internal/firebase-auth-api/e7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/e7;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->C()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/firebase-auth-api/x9;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/x6;->zze:Lcom/google/android/gms/internal/firebase-auth-api/x9;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->C()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object v0

    :cond_0
    return-object v0
.end method
