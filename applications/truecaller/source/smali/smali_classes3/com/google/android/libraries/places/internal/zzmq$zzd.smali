.class public final Lcom/google/android/libraries/places/internal/zzmq$zzd;
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
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzsf<",
        "Lcom/google/android/libraries/places/internal/zzmq$zzd;",
        "Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zztq;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

.field private static volatile zzf:Lcom/google/android/libraries/places/internal/zzty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzty<",
            "Lcom/google/android/libraries/places/internal/zzmq$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmq$zzd;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    .line 3
    const-class v1, Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzsf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzsf;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf;->zzf()Lcom/google/android/libraries/places/internal/zzsf$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;

    return-object v0
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzmq$zzd;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzb(I)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzmq$zzd;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 4
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzf:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_1

    .line 6
    const-class p2, Lcom/google/android/libraries/places/internal/zzmq$zzd;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzf:Lcom/google/android/libraries/places/internal/zzty;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/google/android/libraries/places/internal/zzsf$zzc;

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzsf$zzc;-><init>(Lcom/google/android/libraries/places/internal/zzsf;)V

    .line 9
    sput-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zzf:Lcom/google/android/libraries/places/internal/zzty;

    .line 10
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1004\u0000"

    .line 12
    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzsf;->zza(Lcom/google/android/libraries/places/internal/zzto;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq$zzd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmq$zzd;-><init>()V

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
