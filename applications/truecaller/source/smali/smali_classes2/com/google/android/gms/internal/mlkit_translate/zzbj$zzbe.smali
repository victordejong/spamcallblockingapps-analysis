.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;
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
    name = "zzbe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;,
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

.field private static volatile zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

.field private zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzj:I

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzb(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzf:I

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc(I)V

    return-void
.end method

.method private final zzc(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzg:I

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzd(I)V

    return-void
.end method

.method private final zzd(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzh:I

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zze(I)V

    return-void
.end method

.method private final zze(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzc:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzi:I

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbi;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 12
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    .line 18
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

    .line 19
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

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

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zzb;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u100c\u0006\u0008\u1004\u0007"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbe;-><init>()V

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
