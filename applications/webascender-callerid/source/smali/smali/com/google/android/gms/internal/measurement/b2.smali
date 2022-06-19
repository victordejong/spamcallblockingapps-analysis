.class public final Lcom/google/android/gms/internal/measurement/b2;
.super Lcom/google/android/gms/internal/measurement/l6;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/l6<",
        "Lcom/google/android/gms/internal/measurement/b2;",
        "Lcom/google/android/gms/internal/measurement/a2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/p7;"
    }
.end annotation


# static fields
.field private static final zzZ:Lcom/google/android/gms/internal/measurement/b2;

.field public static final synthetic zza:I


# instance fields
.field private zzA:Ljava/lang/String;

.field private zzB:J

.field private zzC:I

.field private zzD:Ljava/lang/String;

.field private zzE:Ljava/lang/String;

.field private zzF:Z

.field private zzG:Lcom/google/android/gms/internal/measurement/s6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s6<",
            "Lcom/google/android/gms/internal/measurement/o1;",
            ">;"
        }
    .end annotation
.end field

.field private zzH:Ljava/lang/String;

.field private zzI:I

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/lang/String;

.field private zzM:J

.field private zzN:J

.field private zzO:Ljava/lang/String;

.field private zzP:Ljava/lang/String;

.field private zzQ:I

.field private zzR:Ljava/lang/String;

.field private zzS:Lcom/google/android/gms/internal/measurement/g2;

.field private zzT:Lcom/google/android/gms/internal/measurement/q6;

.field private zzU:J

.field private zzV:J

.field private zzW:Ljava/lang/String;

.field private zzX:Ljava/lang/String;

.field private zzY:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/measurement/s6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s6<",
            "Lcom/google/android/gms/internal/measurement/t1;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/measurement/s6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/s6<",
            "Lcom/google/android/gms/internal/measurement/m2;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:I

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:J

.field private zzx:J

.field private zzy:Ljava/lang/String;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/b2;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    const-class v1, Lcom/google/android/gms/internal/measurement/b2;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l6;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l6;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l6;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzE:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzR:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->l()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzT:Lcom/google/android/gms/internal/measurement/q6;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzX:Ljava/lang/String;

    return-void
.end method

.method public static H0()Lcom/google/android/gms/internal/measurement/a2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l6;->q()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    return-object v0
.end method

.method static synthetic I0()Lcom/google/android/gms/internal/measurement/b2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    return-object v0
.end method

.method static synthetic J0(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzg:I

    return-void
.end method

.method static synthetic K0(Lcom/google/android/gms/internal/measurement/b2;ILcom/google/android/gms/internal/measurement/t1;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Y0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic L0(Lcom/google/android/gms/internal/measurement/b2;Lcom/google/android/gms/internal/measurement/t1;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Y0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic M0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Y0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/w4;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic N0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    return-void
.end method

.method static synthetic O0(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Y0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic P0(Lcom/google/android/gms/internal/measurement/b2;ILcom/google/android/gms/internal/measurement/m2;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Z0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic Q0(Lcom/google/android/gms/internal/measurement/b2;Lcom/google/android/gms/internal/measurement/m2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Z0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic R0(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;->Z0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic S0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzj:J

    return-void
.end method

.method static synthetic T0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzk:J

    return-void
.end method

.method static synthetic U0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzl:J

    return-void
.end method

.method static synthetic V0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzm:J

    return-void
.end method

.method static synthetic W0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzm:J

    return-void
.end method

.method static synthetic X(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzn:J

    return-void
.end method

.method static synthetic Y(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzn:J

    return-void
.end method

.method private final Y0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s6;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l6;->p(Lcom/google/android/gms/internal/measurement/s6;)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    :cond_0
    return-void
.end method

.method static synthetic Z(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const-string p1, "android"

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzo:Ljava/lang/String;

    return-void
.end method

.method private final Z0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s6;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l6;->p(Lcom/google/android/gms/internal/measurement/s6;)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    :cond_0
    return-void
.end method

.method static synthetic a0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzp:Ljava/lang/String;

    return-void
.end method

.method static synthetic a1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzH:Ljava/lang/String;

    return-void
.end method

.method static synthetic b0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzq:Ljava/lang/String;

    return-void
.end method

.method static synthetic b1(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzI:I

    return-void
.end method

.method static synthetic c0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzr:Ljava/lang/String;

    return-void
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzs:I

    return-void
.end method

.method static synthetic d1(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b2;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzL:Ljava/lang/String;

    return-void
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzt:Ljava/lang/String;

    return-void
.end method

.method static synthetic e1(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzM:J

    return-void
.end method

.method static synthetic f0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzu:Ljava/lang/String;

    return-void
.end method

.method static synthetic f1(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzN:J

    return-void
.end method

.method static synthetic g0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzv:Ljava/lang/String;

    return-void
.end method

.method static synthetic g1(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b2;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzO:Ljava/lang/String;

    return-void
.end method

.method static synthetic h0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzw:J

    return-void
.end method

.method static synthetic i0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const-wide/32 p1, 0x9858

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzx:J

    return-void
.end method

.method static synthetic i1(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzQ:I

    return-void
.end method

.method static synthetic j0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzy:Ljava/lang/String;

    return-void
.end method

.method static synthetic j1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzR:Ljava/lang/String;

    return-void
.end method

.method static synthetic k0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b2;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzy:Ljava/lang/String;

    return-void
.end method

.method static synthetic l0(Lcom/google/android/gms/internal/measurement/b2;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzz:Z

    return-void
.end method

.method static synthetic l1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzT:Lcom/google/android/gms/internal/measurement/q6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s6;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/q6;->X(I)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzT:Lcom/google/android/gms/internal/measurement/q6;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzT:Lcom/google/android/gms/internal/measurement/q6;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/w4;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic m0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzz:Z

    return-void
.end method

.method static synthetic m1(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzU:J

    return-void
.end method

.method static synthetic n0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzA:Ljava/lang/String;

    return-void
.end method

.method static synthetic n1(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzV:J

    return-void
.end method

.method static synthetic o0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b2;->zzA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzA:Ljava/lang/String;

    return-void
.end method

.method static synthetic o1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzW:Ljava/lang/String;

    return-void
.end method

.method static synthetic p0(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzB:J

    return-void
.end method

.method static synthetic p1(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzX:Ljava/lang/String;

    return-void
.end method

.method static synthetic q0(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzC:I

    return-void
.end method

.method static synthetic r0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzD:Ljava/lang/String;

    return-void
.end method

.method static synthetic t0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b2;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzD:Ljava/lang/String;

    return-void
.end method

.method static synthetic u0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzE:Ljava/lang/String;

    return-void
.end method

.method static synthetic v0(Lcom/google/android/gms/internal/measurement/b2;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzF:Z

    return-void
.end method

.method static synthetic w0(Lcom/google/android/gms/internal/measurement/b2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/s6;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l6;->p(Lcom/google/android/gms/internal/measurement/s6;)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/w4;->j(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic x0(Lcom/google/android/gms/internal/measurement/b2;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l6;->o()Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzQ:I

    return v0
.end method

.method public final A1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzx:J

    return-wide v0
.end method

.method public final B0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzR:Ljava/lang/String;

    return-object v0
.end method

.method public final B1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzl:J

    return-wide v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public final C0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzU:J

    return-wide v0
.end method

.method public final D1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzm:J

    return-wide v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzz:Z

    return v0
.end method

.method public final E0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzW:Ljava/lang/String;

    return-object v0
.end method

.method public final E1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzA:Ljava/lang/String;

    return-object v0
.end method

.method public final F0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzn:J

    return-wide v0
.end method

.method public final G()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final G0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzX:Ljava/lang/String;

    return-object v0
.end method

.method public final G1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzB:J

    return-wide v0
.end method

.method public final H1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzC:I

    return v0
.end method

.method public final J1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzD:Ljava/lang/String;

    return-object v0
.end method

.method public final K1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzE:Ljava/lang/String;

    return-object v0
.end method

.method public final L1()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzs:I

    return v0
.end method

.method public final M()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzF:Z

    return v0
.end method

.method public final O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/o1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzG:Lcom/google/android/gms/internal/measurement/s6;

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzH:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final R()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzI:I

    return v0
.end method

.method public final S()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final T()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzM:J

    return-wide v0
.end method

.method public final U()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzN:J

    return-wide v0
.end method

.method public final W()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X0()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzg:I

    return v0
.end method

.method public final q1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/t1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    return-object v0
.end method

.method public final r1()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s1(I)Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzh:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/t1;

    return-object p1
.end method

.method public final t1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/m2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    return-object v0
.end method

.method public final u1()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final v(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/a2;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/a2;-><init>(Lcom/google/android/gms/internal/measurement/j1;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/b2;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b2;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x33

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    .line 6
    const-class p2, Lcom/google/android/gms/internal/measurement/t1;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/measurement/m2;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-class p3, Lcom/google/android/gms/internal/measurement/o1;

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "zzQ"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzR"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-string p3, "zzS"

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzT"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzU"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    const-string p3, "zzV"

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzW"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-string p3, "zzX"

    aput-object p3, p1, p2

    const/16 p2, 0x31

    const-string p3, "zzY"

    aput-object p3, p1, p2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m1;->zzb()Lcom/google/android/gms/internal/measurement/p6;

    move-result-object p2

    const/16 p3, 0x32

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/b2;->zzZ:Lcom/google/android/gms/internal/measurement/b2;

    const-string p3, "\u0001-\u0000\u0002\u00015-\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1002\u0001\u0005\u1002\u0002\u0006\u1002\u0003\u0007\u1002\u0005\u0008\u1008\u0006\t\u1008\u0007\n\u1008\u0008\u000b\u1008\t\u000c\u1004\n\r\u1008\u000b\u000e\u1008\u000c\u0010\u1008\r\u0011\u1002\u000e\u0012\u1002\u000f\u0013\u1008\u0010\u0014\u1007\u0011\u0015\u1008\u0012\u0016\u1002\u0013\u0017\u1004\u0014\u0018\u1008\u0015\u0019\u1008\u0016\u001a\u1002\u0004\u001c\u1007\u0017\u001d\u001b\u001e\u1008\u0018\u001f\u1004\u0019 \u1004\u001a!\u1004\u001b\"\u1008\u001c#\u1002\u001d$\u1002\u001e%\u1008\u001f&\u1008 \'\u1004!)\u1008\",\u1009#-\u001d.\u1002$/\u1002%2\u1008&4\u1008\'5\u100c("

    .line 8
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/l6;->u(Lcom/google/android/gms/internal/measurement/o7;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final v1(I)Lcom/google/android/gms/internal/measurement/m2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzi:Lcom/google/android/gms/internal/measurement/s6;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/m2;

    return-object p1
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final w1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzv:Ljava/lang/String;

    return-object v0
.end method

.method public final x1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzj:J

    return-wide v0
.end method

.method public final y()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzO:Ljava/lang/String;

    return-object v0
.end method

.method public final y1()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzw:J

    return-wide v0
.end method

.method public final z0()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z1()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzk:J

    return-wide v0
.end method
