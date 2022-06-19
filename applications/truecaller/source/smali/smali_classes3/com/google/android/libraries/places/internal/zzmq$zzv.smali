.class public final Lcom/google/android/libraries/places/internal/zzmq$zzv;
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
    name = "zzv"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzv;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

.field private static volatile zzi:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/libraries/places/internal/zzsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzmq$zzaf;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzv;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsf;->zzk()Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzd:Lcom/google/android/libraries/places/internal/zzsp;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;

    return-object v0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzg:Lcom/google/android/libraries/places/internal/zzmq$zzaf;

    .line 3
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzv;I)V
    .locals 0

    const/4 p1, 0x1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzb(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzv;Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzv;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzc:I

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzf:I

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 7
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 9
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzv;

    monitor-enter p2

    .line 10
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 12
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    .line 13
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

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

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

    .line 15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzng;->zzb()Lcom/google/android/libraries/places/internal/zzsl;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001a\u0002\u100c\u0000\u0003\u100b\u0001\u0004\u1009\u0002"

    .line 16
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzv;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzv;-><init>()V

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
