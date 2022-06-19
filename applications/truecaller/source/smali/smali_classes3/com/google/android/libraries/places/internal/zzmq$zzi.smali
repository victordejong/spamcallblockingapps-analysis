.class public final Lcom/google/android/libraries/places/internal/zzmq$zzi;
.super Lcom/google/android/libraries/places/internal/zzsf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zztq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;,
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zze;,
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zza;,
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zzb;,
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;,
        Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzi;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

.field private static volatile zzt:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/libraries/places/internal/zzmq$zzf;

.field private zzj:Lcom/google/android/libraries/places/internal/zzmq$zzc;

.field private zzk:Lcom/google/android/libraries/places/internal/zzmq$zzb;

.field private zzl:Lcom/google/android/libraries/places/internal/zzmq$zzao;

.field private zzm:Lcom/google/android/libraries/places/internal/zzmq$zzd;

.field private zzn:Lcom/google/android/libraries/places/internal/zzmq$zze;

.field private zzo:Lcom/google/android/libraries/places/internal/zzmq$zzap;

.field private zzp:Lcom/google/android/libraries/places/internal/zzmq$zzat;

.field private zzq:Lcom/google/android/libraries/places/internal/zzmq$zzar;

.field private zzr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzi;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    return-object v0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzb;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzk:Lcom/google/android/libraries/places/internal/zzmq$zzb;

    .line 10
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzd;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzm:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    .line 13
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzf;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzi:Lcom/google/android/libraries/places/internal/zzmq$zzf;

    .line 7
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzd:I

    .line 2
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zze:I

    .line 4
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzb(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;Lcom/google/android/libraries/places/internal/zzmq$zzb;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzb;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;Lcom/google/android/libraries/places/internal/zzmq$zzd;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzd;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;Lcom/google/android/libraries/places/internal/zzmq$zzf;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzf;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzi;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 17
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzt:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzt:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzt:Lcom/google/android/libraries/places/internal/zzty;

    .line 23
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    return-object p1

    :pswitch_4
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 25
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 26
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 27
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzb;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 28
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zza;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    .line 29
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zze;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u100c\u0003\u0005\u100c\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007\t\u1009\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b\r\u1009\u000c\u000e\u1009\r\u000f\u100c\u000e"

    .line 30
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zzs:Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 32
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi;-><init>()V

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
