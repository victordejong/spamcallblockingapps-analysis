.class public final Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zza;,
        Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc<",
        "Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;",
        "Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

.field private static volatile zzg:Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzhl<",
            "Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzd:Lcom/google/android/gms/internal/mlkit_common/zzfy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzfy<",
            "Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zze:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zze:B

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zzl()Lcom/google/android/gms/internal/mlkit_common/zzfy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzfy;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzje;->zza:[I

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zze:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zze:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzhl;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, p3

    .line 12
    const-class p2, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zzb;

    aput-object p2, p1, v0

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzje;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_common/zzjf$zzl;-><init>()V

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
