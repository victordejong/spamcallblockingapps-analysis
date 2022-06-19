.class public final Lcom/google/android/gms/internal/vision/zzea$zzh;
.super Lcom/google/android/gms/internal/vision/zzgs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzh;",
        "Lcom/google/android/gms/internal/vision/zzea$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;


# instance fields
.field private zzbf:I

.field private zzoq:F

.field private zzor:F

.field private zzos:F

.field private zzot:F

.field private zzou:F

.field private zzov:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzh;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzm(F)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzn(F)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzo(F)V

    return-void
.end method

.method public static zzcu()Lcom/google/android/gms/internal/vision/zzea$zzh$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzh$zza;

    return-object v0
.end method

.method public static synthetic zzcv()Lcom/google/android/gms/internal/vision/zzea$zzh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    return-object v0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzp(F)V

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzq(F)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/vision/zzea$zzh;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzr(F)V

    return-void
.end method

.method private final zzm(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzoq:F

    return-void
.end method

.method private final zzn(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzor:F

    return-void
.end method

.method private final zzo(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzos:F

    return-void
.end method

.method private final zzp(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzot:F

    return-void
.end method

.method private final zzq(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzou:F

    return-void
.end method

.method private final zzr(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzov:F

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzh;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbf"

    aput-object v0, p1, p2

    const-string p2, "zzoq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzor"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzos"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzot"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzou"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzov"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0001\u0000\u0002\u0001\u0001\u0003\u0001\u0002\u0004\u0001\u0003\u0005\u0001\u0004\u0006\u0001\u0005"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzh;->zzow:Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzh$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzh;-><init>()V

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
