.class public final Lcom/google/android/gms/internal/measurement/o1;
.super Lcom/google/android/gms/internal/measurement/l6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/l6<",
        "Lcom/google/android/gms/internal/measurement/o1;",
        "Lcom/google/android/gms/internal/measurement/n1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/o1;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/i2;

.field private zzg:Lcom/google/android/gms/internal/measurement/i2;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/o1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/o1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/o1;->zzi:Lcom/google/android/gms/internal/measurement/o1;

    const-class v1, Lcom/google/android/gms/internal/measurement/o1;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l6;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l6;-><init>()V

    return-void
.end method

.method public static D()Lcom/google/android/gms/internal/measurement/n1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/o1;->zzi:Lcom/google/android/gms/internal/measurement/o1;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l6;->q()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/n1;

    return-object v0
.end method

.method static synthetic E()Lcom/google/android/gms/internal/measurement/o1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/o1;->zzi:Lcom/google/android/gms/internal/measurement/o1;

    return-object v0
.end method

.method static synthetic F(Lcom/google/android/gms/internal/measurement/o1;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zze:I

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/measurement/o1;Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zzf:Lcom/google/android/gms/internal/measurement/i2;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/measurement/o1;Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zzg:Lcom/google/android/gms/internal/measurement/i2;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/measurement/o1;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/o1;->zzh:Z

    return-void
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/measurement/i2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zzg:Lcom/google/android/gms/internal/measurement/i2;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i2;->H()Lcom/google/android/gms/internal/measurement/i2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final B()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zzh:Z

    return v0
.end method

.method protected final v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/o1;->zzi:Lcom/google/android/gms/internal/measurement/o1;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/n1;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Lcom/google/android/gms/internal/measurement/j1;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/o1;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/o1;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zza"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/o1;->zzi:Lcom/google/android/gms/internal/measurement/o1;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/l6;->u(Lcom/google/android/gms/internal/measurement/o7;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zze:I

    return v0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/i2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zzf:Lcom/google/android/gms/internal/measurement/i2;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i2;->H()Lcom/google/android/gms/internal/measurement/i2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/o1;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
