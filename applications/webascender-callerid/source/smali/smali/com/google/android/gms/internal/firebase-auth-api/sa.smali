.class public final Lcom/google/android/gms/internal/firebase-auth-api/sa;
.super Lcom/google/android/gms/internal/firebase-auth-api/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "Lcom/google/android/gms/internal/firebase-auth-api/sa;",
        "Lcom/google/android/gms/internal/firebase-auth-api/ra;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/g0;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/ga;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/sa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/sa;

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

.method public static D()Lcom/google/android/gms/internal/firebase-auth-api/ra;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->p()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ra;

    return-object v0
.end method

.method static synthetic E()Lcom/google/android/gms/internal/firebase-auth-api/sa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;

    return-object v0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/firebase-auth-api/sa;Lcom/google/android/gms/internal/firebase-auth-api/ga;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/firebase-auth-api/sa;Lcom/google/android/gms/internal/firebase-auth-api/ia;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ia;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zze:I

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/firebase-auth-api/sa;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzf:I

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/firebase-auth-api/sa;Lcom/google/android/gms/internal/firebase-auth-api/nb;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzg:I

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/firebase-auth-api/ia;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zze:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ia;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/ia;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ia;->zze:Lcom/google/android/gms/internal/firebase-auth-api/ia;

    :cond_0
    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzf:I

    return v0
.end method

.method public final C()Lcom/google/android/gms/internal/firebase-auth-api/nb;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzg:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/nb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/nb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/nb;

    :cond_0
    return-object v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ra;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ra;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/pa;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/sa;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

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

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Lcom/google/android/gms/internal/firebase-auth-api/ga;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/sa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/ga;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->C()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v0

    :cond_0
    return-object v0
.end method
