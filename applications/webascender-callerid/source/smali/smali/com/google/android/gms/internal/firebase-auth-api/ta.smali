.class public final Lcom/google/android/gms/internal/firebase-auth-api/ta;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ta;",
        "Lcom/google/android/gms/internal/firebase-auth-api/qa;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/j<",
            "Lcom/google/android/gms/internal/firebase-auth-api/sa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ta;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->u(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/e;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e;->f()Lcom/google/android/gms/internal/firebase-auth-api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    return-void
.end method

.method public static C([BLcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/ta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->l(Lcom/google/android/gms/internal/firebase-auth-api/e;[BLcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    return-object p0
.end method

.method public static D()Lcom/google/android/gms/internal/firebase-auth-api/qa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/qa;

    return-object v0
.end method

.method static synthetic E()Lcom/google/android/gms/internal/firebase-auth-api/ta;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    return-object v0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/firebase-auth-api/ta;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzb:I

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/firebase-auth-api/ta;Lcom/google/android/gms/internal/firebase-auth-api/sa;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->h(Lcom/google/android/gms/internal/firebase-auth-api/j;)Lcom/google/android/gms/internal/firebase-auth-api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final B(I)Lcom/google/android/gms/internal/firebase-auth-api/sa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    return-object p1
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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/qa;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/qa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/pa;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

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

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zzb:I

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/sa;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ta;->zze:Lcom/google/android/gms/internal/firebase-auth-api/j;

    return-object v0
.end method
