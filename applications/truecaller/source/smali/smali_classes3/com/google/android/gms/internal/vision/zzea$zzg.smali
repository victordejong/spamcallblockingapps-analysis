.class public final Lcom/google/android/gms/internal/vision/zzea$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;,
        Lcom/google/android/gms/internal/vision/zzea$zzg$zza;,
        Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;,
        Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzg;",
        "Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;


# instance fields
.field private zzbf:I

.field private zzjw:F

.field private zzka:Z

.field private zznx:I

.field private zzny:I

.field private zznz:I

.field private zzoa:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzg;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zza;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzag()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zznz:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;->zzag()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzny:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;->zzag()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zznx:I

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzg;F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzd(F)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzg;Lcom/google/android/gms/internal/vision/zzea$zzg$zza;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzg;Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzg;Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zza(Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzg;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zza(Z)V

    return-void
.end method

.method private final zza(Z)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzka:Z

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/vision/zzea$zzg;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzg(Z)V

    return-void
.end method

.method public static zzcs()Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;

    return-object v0
.end method

.method public static synthetic zzct()Lcom/google/android/gms/internal/vision/zzea$zzg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    return-object v0
.end method

.method private final zzd(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzjw:F

    return-void
.end method

.method private final zzg(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbf:I

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzoa:Z

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 11
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzg;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 17
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

    .line 18
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbf"

    aput-object v0, p1, p2

    const-string p2, "zznx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzg$zzd;->zzah()Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzny"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzg$zzc;->zzah()Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zznz"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzea$zzg$zza;->zzah()Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzka"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzoa"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzjw"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u000c\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0001\u0005"

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzg;->zzob:Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzg$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzg;-><init>()V

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
