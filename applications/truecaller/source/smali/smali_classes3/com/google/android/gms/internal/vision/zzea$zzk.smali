.class public final Lcom/google/android/gms/internal/vision/zzea$zzk;
.super Lcom/google/android/gms/internal/vision/zzgs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzk;",
        "Lcom/google/android/gms/internal/vision/zzea$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;


# instance fields
.field private zzbf:I

.field private zznb:Ljava/lang/String;

.field private zznj:Ljava/lang/String;

.field private zzpl:J

.field private zzpm:Lcom/google/android/gms/internal/vision/zzea$zza;

.field private zzpn:Lcom/google/android/gms/internal/vision/zzea$zzg;

.field private zzpo:Lcom/google/android/gms/internal/vision/zzea$zzb;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzk;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznj:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznb:Ljava/lang/String;

    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznj:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zza;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpm:Lcom/google/android/gms/internal/vision/zzea$zza;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzg;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpn:Lcom/google/android/gms/internal/vision/zzea$zzg;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzp(J)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Lcom/google/android/gms/internal/vision/zzea$zza;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zza(Lcom/google/android/gms/internal/vision/zzea$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Lcom/google/android/gms/internal/vision/zzea$zzg;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zza(Lcom/google/android/gms/internal/vision/zzea$zzg;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzk;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzs(Ljava/lang/String;)V

    return-void
.end method

.method public static zzdb()Lcom/google/android/gms/internal/vision/zzea$zzk$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;

    return-object v0
.end method

.method public static synthetic zzdc()Lcom/google/android/gms/internal/vision/zzea$zzk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    return-object v0
.end method

.method private final zzp(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpl:J

    return-void
.end method

.method private final zzs(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbf:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzk;->zznb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 9
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzk;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 14
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 15
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbf"

    aput-object v0, p1, p2

    const-string p2, "zznj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzpl"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzpm"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zznb"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzpn"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzpo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0002\u0001\u0003\t\u0002\u0006\u0008\u0003\u0010\t\u0004\u0011\t\u0005"

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzk;->zzpp:Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzk$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzk;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
