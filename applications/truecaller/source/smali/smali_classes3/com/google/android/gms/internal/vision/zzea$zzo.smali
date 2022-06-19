.class public final Lcom/google/android/gms/internal/vision/zzea$zzo;
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
    name = "zzo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzea$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzgs<",
        "Lcom/google/android/gms/internal/vision/zzea$zzo;",
        "Lcom/google/android/gms/internal/vision/zzea$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzie;"
    }
.end annotation


# static fields
.field private static volatile zzbd:Lcom/google/android/gms/internal/vision/zzil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzil<",
            "Lcom/google/android/gms/internal/vision/zzea$zzo;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;


# instance fields
.field private zzbf:I

.field private zzpz:Lcom/google/android/gms/internal/vision/zzea$zze;

.field private zzqa:Lcom/google/android/gms/internal/vision/zzea$zzk;

.field private zzqb:Lcom/google/android/gms/internal/vision/zzea$zzi;

.field private zzqc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzea$zzo;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzgs;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzi;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqb:Lcom/google/android/gms/internal/vision/zzea$zzi;

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzea$zzk;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqa:Lcom/google/android/gms/internal/vision/zzea$zzk;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbf:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzo;Lcom/google/android/gms/internal/vision/zzea$zzi;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zza(Lcom/google/android/gms/internal/vision/zzea$zzi;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/vision/zzea$zzo;Lcom/google/android/gms/internal/vision/zzea$zzk;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzea$zzo;->zza(Lcom/google/android/gms/internal/vision/zzea$zzk;)V

    return-void
.end method

.method public static zzdi()Lcom/google/android/gms/internal/vision/zzea$zzo$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzgs;->zzge()Lcom/google/android/gms/internal/vision/zzgs$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzea$zzo$zza;

    return-object v0
.end method

.method public static synthetic zzdj()Lcom/google/android/gms/internal/vision/zzea$zzo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzdz;->zzbe:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 9
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/vision/zzea$zzo;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/vision/zzgs$zzc;

    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/vision/zzgs$zzc;-><init>(Lcom/google/android/gms/internal/vision/zzgs;)V

    .line 14
    sput-object p1, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzbd:Lcom/google/android/gms/internal/vision/zzil;

    .line 15
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbf"

    aput-object v0, p1, p2

    const-string p2, "zzpz"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzqa"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzqb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzqc"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0004\u0003"

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/vision/zzea$zzo;->zzqd:Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzgs;->zza(Lcom/google/android/gms/internal/vision/zzic;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzo$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzea$zzo$zza;-><init>(Lcom/google/android/gms/internal/vision/zzdz;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/vision/zzea$zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/vision/zzea$zzo;-><init>()V

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
