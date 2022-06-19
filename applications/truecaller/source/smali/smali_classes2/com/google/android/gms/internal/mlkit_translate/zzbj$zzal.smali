.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;,
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;,
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

.field private static volatile zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:J

.field private zzk:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzg:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzi:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzf:I

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    return-object v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzc:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbi;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

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

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzc;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zzb;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u100c\u0005\u0007\u1003\u0006\u0008\u1007\u0007"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;-><init>()V

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
