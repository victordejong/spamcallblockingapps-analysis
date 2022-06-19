.class public final Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;
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
    name = "zzaj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;,
        Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

.field private static volatile zzf:Lcom/google/android/gms/internal/mlkit_common/zzhl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzhl<",
            "Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;",
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

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zzh()Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;)V

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/zzau;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhl;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zza;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    sput-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzhl;

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

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzfx;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    sget-object p3, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;->zze:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq;->zza(Lcom/google/android/gms/internal/mlkit_common/zzhb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzau;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj;-><init>()V

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
