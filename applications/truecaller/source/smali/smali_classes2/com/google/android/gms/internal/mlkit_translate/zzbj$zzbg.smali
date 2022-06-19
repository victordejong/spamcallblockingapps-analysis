.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;
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
    name = "zzbg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;,
        Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/mlkit_translate/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzki<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/mlkit_translate/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzki<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/mlkit_translate/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzki<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

.field private static volatile zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzlu<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

.field private zzg:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

.field private zzi:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

.field private zzk:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzki;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzki;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzki;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;-><init>()V

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    .line 6
    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzk()Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzk()Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzk()Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    return-object v0
.end method

.method private final zza(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzc:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzd:J

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzb(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zza(J)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;Ljava/lang/Iterable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zza(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zza(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzkj;)Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkj;->zzc(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    return-object v0
.end method

.method private final zzb(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzc:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzk:I

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;Ljava/lang/Iterable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzb(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzb(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzkj;)Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkj;->zzc(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;Ljava/lang/Iterable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzc(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final zzc(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkl;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzkj;)Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzkj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkj;->zzc(I)V

    goto :goto_0

    :cond_1
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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzc;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzm:Lcom/google/android/gms/internal/mlkit_translate/zzlu;

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

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

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzkg;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001\u1003\u0000\u0002\u001e\u0003\u001e\u0004\u001e\u0005\u1004\u0001"

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;-><init>()V

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
