.class public final Lcom/google/android/gms/internal/firebase-auth-api/p8;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/p8;",
        "Lcom/google/android/gms/internal/firebase-auth-api/o8;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/p8;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/p8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/p8;

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

.method public static y(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/p8;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->k(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/p8;

    return-object p0
.end method

.method static synthetic z()Lcom/google/android/gms/internal/firebase-auth-api/p8;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/p8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;

    return-object v0
.end method


# virtual methods
.method protected final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/p8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/o8;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/o8;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/n8;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/p8;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/p8;-><init>()V

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/p8;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/p8;

    const-string p2, "\u0000\u0000"

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/e;->x(Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
