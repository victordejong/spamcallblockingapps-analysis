.class public final Lcom/google/android/gms/internal/firebase-auth-api/q7;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/q7;",
        "Lcom/google/android/gms/internal/firebase-auth-api/p7;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;


# instance fields
.field private zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q7;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/q7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/q7;

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

.method public static A()Lcom/google/android/gms/internal/firebase-auth-api/q7;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    return-object v0
.end method

.method static synthetic B()Lcom/google/android/gms/internal/firebase-auth-api/q7;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    return-object v0
.end method

.method static synthetic C(Lcom/google/android/gms/internal/firebase-auth-api/q7;I)V
    .locals 0

    const/16 p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zzb:I

    return-void
.end method

.method public static z()Lcom/google/android/gms/internal/firebase-auth-api/p7;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/p7;

    return-object v0
.end method


# virtual methods
.method protected final n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/p7;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/p7;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/o7;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/q7;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/q7;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zze:Lcom/google/android/gms/internal/firebase-auth-api/q7;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

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

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q7;->zzb:I

    return v0
.end method
