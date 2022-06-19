.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;
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
    name = "zzaf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

.field private static volatile zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/mlkit_translate/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzkl<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzl()Lcom/google/android/gms/internal/mlkit_translate/zzkl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzkl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    return-object v0
.end method

.method private final zza(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzd:J

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zza(J)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;Lcom/google/android/gms/internal/mlkit_translate/zzbt;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zza(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbt;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zze:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    return-void
.end method

.method private final zza(Z)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzc:I

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzf:Z

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    return-object v0
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbi;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 10
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    .line 16
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

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

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

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

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbf;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1003\u0000\u0002\u100c\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u100b\u0006\u0008\u001b"

    .line 19
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V

    return-object p1

    .line 21
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzaf;-><init>()V

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
