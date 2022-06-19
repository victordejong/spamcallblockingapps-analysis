.class public final Lcom/google/android/libraries/places/internal/zzmq$zzo;
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
    name = "zzo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzo;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

.field private static volatile zzi:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/libraries/places/internal/zzjj$zzb;

.field private zzf:Lcom/google/android/libraries/places/internal/zzmq$zzk;

.field private zzg:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzo;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzg:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;

    return-object v0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzk;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzf:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    .line 3
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzo;Lcom/google/android/libraries/places/internal/zzmq$zzk;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzk;)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 5
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    move v0, p3

    :cond_0
    int-to-byte p1, v0

    .line 7
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzg:B

    return-object v1

    .line 8
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzg:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_2

    .line 10
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzo;

    monitor-enter p2

    .line 11
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 12
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 13
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzi:Lcom/google/android/libraries/places/internal/zzty;

    .line 14
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

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

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1409\u0001\u0003\u1009\u0002"

    .line 16
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zzh:Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzo;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzo;-><init>()V

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
