.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

.field private static volatile zzi:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzae;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_translate/zzbi;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbt;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1009\u0003"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzi$zzb;-><init>()V

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
