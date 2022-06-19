.class public final Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

.field private static volatile zzp:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzb;

.field private zze:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzi;

.field private zzf:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzd;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzc;

.field private zzi:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzl;

.field private zzj:J

.field private zzk:J

.field private zzl:Z

.field private zzm:I

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzn:B

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zznq;->zza:[I

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzn:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzn:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzp:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzny;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

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

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u100c\u0003\u0004\u1009\u0004\u0005\u1409\u0005\u0006\u1002\u0006\u0007\u1002\u0007\u0008\u1007\u0008\t\u1004\t\n\u1009\u0002"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zznq;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzno$zzf;-><init>()V

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
