.class public final Lcom/google/android/libraries/places/internal/zzqs;
.super Lcom/google/android/libraries/places/internal/zzsf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zztq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzqs$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzqs;",
        "Lcom/google/android/libraries/places/internal/zzqs$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzt:Lcom/google/android/libraries/places/internal/zzqs;

.field private static volatile zzu:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzqs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/libraries/places/internal/zzpy;

.field private zzf:Lcom/google/android/libraries/places/internal/zzpy;

.field private zzg:Lcom/google/android/libraries/places/internal/zzsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "Lcom/google/android/libraries/places/internal/zzqk;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:Lcom/google/android/libraries/places/internal/zzpy;

.field private zzn:Lcom/google/android/libraries/places/internal/zzpz;

.field private zzo:Lcom/google/android/libraries/places/internal/zzqd;

.field private zzp:I

.field private zzq:I

.field private zzr:Lcom/google/android/libraries/places/internal/zzqc;

.field private zzs:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqs;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqs;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzqs;->zzt:Lcom/google/android/libraries/places/internal/zzqs;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzqs;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzqs;->zzs:B

    .line 3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsf;->zzk()Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzqs;->zzg:Lcom/google/android/libraries/places/internal/zzsp;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzqs;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/libraries/places/internal/zzqs;->zzt:Lcom/google/android/libraries/places/internal/zzqs;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lcom/google/android/libraries/places/internal/zzqr;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move v0, p3

    :cond_0
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzqs;->zzs:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzqs;->zzs:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzqs;->zzu:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lcom/google/android/libraries/places/internal/zzqs;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzqs;->zzu:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzqs;->zzt:Lcom/google/android/libraries/places/internal/zzqs;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 9
    sput-object p1, Lcom/google/android/libraries/places/internal/zzqs;->zzu:Lcom/google/android/libraries/places/internal/zzty;

    .line 10
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzqs;->zzt:Lcom/google/android/libraries/places/internal/zzqs;

    return-object p1

    :pswitch_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 12
    const-class p3, Lcom/google/android/libraries/places/internal/zzqk;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000f\u0000\u0001\u0002\u0010\u000f\u0000\u0001\u0001\u0002\u1504\u0000\u0003\u1009\u0001\u0004\u1009\u0002\u0005\u001b\u0006\u1004\u0003\u0007\u1004\u0004\u0008\u1004\u0005\t\u1004\u0006\n\u1004\u0007\u000b\u1009\u0008\u000c\u1009\t\r\u1009\n\u000e\u1004\u000b\u000f\u1004\u000c\u0010\u1009\r"

    .line 13
    sget-object p3, Lcom/google/android/libraries/places/internal/zzqs;->zzt:Lcom/google/android/libraries/places/internal/zzqs;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzqs$zza;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/places/internal/zzqs$zza;-><init>(Lcom/google/android/libraries/places/internal/zzqr;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzqs;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzqs;-><init>()V

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
