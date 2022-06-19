.class public final Lcom/google/android/libraries/places/internal/zzmq$zzk;
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
    name = "zzk"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzk;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

.field private static volatile zzk:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/libraries/places/internal/zzsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:Lcom/google/android/libraries/places/internal/zzsp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzsp<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzk;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzk;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzk;

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

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zze:Lcom/google/android/libraries/places/internal/zzsp;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzf:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzg:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsf;->zzk()Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzi:Lcom/google/android/libraries/places/internal/zzsp;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;

    return-object v0
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzk;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zze:Lcom/google/android/libraries/places/internal/zzsp;

    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzsp;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzsp;)Lcom/google/android/libraries/places/internal/zzsp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zze:Lcom/google/android/libraries/places/internal/zzsp;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zze:Lcom/google/android/libraries/places/internal/zzsp;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    return-object v0
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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzk:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzk;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzk:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 14
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzk:Lcom/google/android/libraries/places/internal/zzty;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

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

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001a\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u001a"

    .line 17
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zzj:Lcom/google/android/libraries/places/internal/zzmq$zzk;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzk;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzk;-><init>()V

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
