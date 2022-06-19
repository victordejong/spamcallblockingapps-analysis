.class public final Lcom/google/android/libraries/places/internal/zzmq$zzaj;
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
    name = "zzaj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzaj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzaj;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzaj$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

.field private static volatile zze:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzaj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/libraries/places/internal/zzsp;
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
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzaj;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;

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

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzc:Lcom/google/android/libraries/places/internal/zzsp;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzmq$zzaj;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zze:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zze:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 8
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zze:Lcom/google/android/libraries/places/internal/zzty;

    .line 9
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    return-object p1

    :pswitch_4
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzc"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 11
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzaj;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj$zza;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzaj$zza;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzaj;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzaj;-><init>()V

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
