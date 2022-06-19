.class public final Lcom/google/android/libraries/places/internal/zzmq$zzy;
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
    name = "zzy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;,
        Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzy;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

.field private static volatile zzi:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/libraries/places/internal/zzmq$zzk;

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzmq$zzaf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzy;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    return-object v0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzg:Lcom/google/android/libraries/places/internal/zzmq$zzaf;

    .line 5
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zze:I

    .line 2
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzy;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzb(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzy;Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzy;Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzy;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzy;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 14
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzi:Lcom/google/android/libraries/places/internal/zzty;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

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

    .line 17
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1009\u0003"

    .line 18
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 20
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy;-><init>()V

    return-object p1

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
