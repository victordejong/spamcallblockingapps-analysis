.class public final Lcom/google/android/gms/internal/measurement/z1;
.super Lcom/google/android/gms/internal/measurement/l6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/l6<",
        "Lcom/google/android/gms/internal/measurement/z1;",
        "Lcom/google/android/gms/internal/measurement/y1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/measurement/z1;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/s6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s6<",
            "Lcom/google/android/gms/internal/measurement/b2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/z1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/z1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/z1;->zze:Lcom/google/android/gms/internal/measurement/z1;

    const-class v1, Lcom/google/android/gms/internal/measurement/z1;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l6;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l6;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/measurement/z1;Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s6;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l6;->p(Lcom/google/android/gms/internal/measurement/s6;)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static y()Lcom/google/android/gms/internal/measurement/y1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z1;->zze:Lcom/google/android/gms/internal/measurement/z1;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l6;->q()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/y1;

    return-object v0
.end method

.method static synthetic z()Lcom/google/android/gms/internal/measurement/z1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z1;->zze:Lcom/google/android/gms/internal/measurement/z1;

    return-object v0
.end method


# virtual methods
.method protected final v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/z1;->zze:Lcom/google/android/gms/internal/measurement/z1;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/y1;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/internal/measurement/j1;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/z1;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/z1;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p3

    .line 6
    const-class p3, Lcom/google/android/gms/internal/measurement/b2;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/z1;->zze:Lcom/google/android/gms/internal/measurement/z1;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

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

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/b2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    return-object v0
.end method

.method public final x(I)Lcom/google/android/gms/internal/measurement/b2;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/z1;->zza:Lcom/google/android/gms/internal/measurement/s6;

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/b2;

    return-object p1
.end method
