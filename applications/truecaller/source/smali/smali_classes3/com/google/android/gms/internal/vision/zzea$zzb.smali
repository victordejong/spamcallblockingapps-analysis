.class public final Lcom/google/android/gms/internal/vision/zzea$zzb;
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
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzb;",
        "Lcom/google/android/gms/internal/vision/zzea$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmn:Lcom/google/android/gms/internal/vision/zzha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzha<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/vision/zzeo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;


# instance fields
.field private zzmm:Lcom/google/android/gms/internal/vision/zzgx;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzeb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzeb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmn:Lcom/google/android/gms/internal/vision/zzha;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzb;-><init>()V

    .line 3
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;

    .line 4
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzgs;->zzgg()Lcom/google/android/gms/internal/vision/zzgx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmm:Lcom/google/android/gms/internal/vision/zzgx;

    return-void
.end method

.method public static synthetic zzcl()Lcom/google/android/gms/internal/vision/zzea$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;

    return-object v0
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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzb;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

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
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzmm"

    aput-object v0, p1, p2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzeo;->zzah()Lcom/google/android/gms/internal/vision/zzgy;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzb;->zzmo:Lcom/google/android/gms/internal/vision/zzea$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzb;-><init>()V

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
