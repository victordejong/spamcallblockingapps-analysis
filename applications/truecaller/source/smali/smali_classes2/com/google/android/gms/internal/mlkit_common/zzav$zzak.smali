.class public final Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzak"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;,
        Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

.field private static volatile zzl:Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzhl<",
            "Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

.field private zze:J

.field private zzf:I

.field private zzg:J

.field private zzh:I

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/mlkit_common/zzfw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zzk()Lcom/google/android/gms/internal/mlkit_common/zzfw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzfw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    return-object v0
.end method

.method private final zza(J)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    .line 5
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zze:J

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzh:I

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza(J)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;Lcom/google/android/gms/internal/mlkit_common/zzbf;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzbf;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzf:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    return-object v0
.end method

.method private final zzb(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzg:J

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;J)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzb(J)V

    return-void
.end method

.method private final zzc(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzi:J

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzc(J)V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 13
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    .line 19
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

    .line 20
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzbf;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzfx;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zza;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzfx;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1003\u0001\u0003\u100c\u0002\u0004\u1003\u0003\u0005\u100c\u0004\u0006\u1002\u0005\u0007\u0016"

    .line 23
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;)V

    return-object p1

    .line 25
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzak;-><init>()V

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
