.class public Lcom/google/android/gms/internal/mlkit_translate/zzhx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;,
        Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final zzb:J

.field private static final zzc:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzd:Le/m/d/m/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zze:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final zzf:Landroid/content/Context;

.field private final zzg:Ljava/util/concurrent/Executor;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_translate/zzhf;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_translate/zzhs;

.field private final zzj:Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;

.field private volatile zzk:Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzl:Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzn:Lcom/google/android/gms/internal/mlkit_translate/zzig;

.field private final zzo:Lcom/google/android/gms/internal/mlkit_translate/zzih;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_translate/zzih;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 2
    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    new-instance v3, Le/m/d/m/x;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    .line 5
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 7
    new-instance v2, Le/m/d/m/x;

    invoke-direct {v2, v0, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 9
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzid;->zza:Le/m/d/m/r;

    .line 11
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 12
    invoke-virtual {v1}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzc:Le/m/d/m/o;

    .line 13
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    .line 14
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 15
    invoke-virtual {v0, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    .line 16
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 17
    invoke-virtual {v0, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzic;->zza:Le/m/d/m/r;

    .line 18
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 19
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzd:Le/m/d/m/o;

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zza:Le/m/d/m/o;

    .line 21
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zze:Ljava/util/concurrent/ExecutorService;

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzb:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zze:Ljava/util/concurrent/ExecutorService;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V
    .locals 13

    move-object v0, p0

    move-object v11, p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzm:Ljava/util/Map;

    .line 5
    iput-object v11, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzf:Landroid/content/Context;

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    move-object/from16 v1, p3

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzg:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p4

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;

    move-object/from16 v10, p5

    .line 9
    iput-object v10, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    .line 10
    new-instance v12, Lcom/google/android/gms/internal/mlkit_translate/zzhs;

    .line 11
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/mlkit_translate/zzhg;->zzb()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firebase"

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x5

    move-object v1, v12

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/mlkit_translate/zzih;)V

    iput-object v12, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzhs;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzig;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzig;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzn:Lcom/google/android/gms/internal/mlkit_translate/zzig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V
    .locals 7

    .line 2
    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzhw;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhs;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzhs;

    return-object p0
.end method

.method public static final synthetic zza(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_translate/zzih;
    .locals 3

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzih;

    const-class v1, Landroid/content/Context;

    .line 45
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzih;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;)V

    return-object v0
.end method

.method private final zza(Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/android/gms/internal/mlkit_translate/zzhl;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zza()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzhf;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Ljava/lang/String;Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzim;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzc()Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzn:Lcom/google/android/gms/internal/mlkit_translate/zzig;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx$zza;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzig;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhr;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    return-object p1

    .line 19
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    return-object v0
.end method

.method public static final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzhs;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzie;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhs;->zza()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zza(Lorg/json/JSONObject;)Ljava/util/Iterator;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzhx$zzb;

    return-object p0
.end method

.method public static final synthetic zzb(Le/m/d/m/p;)Lcom/google/android/gms/internal/mlkit_translate/zzhx;
    .locals 5

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    const-class v1, Landroid/content/Context;

    .line 13
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    .line 14
    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    const-class v3, Lcom/google/android/gms/internal/mlkit_translate/zzih;

    .line 15
    invoke-interface {p0, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_translate/zzih;

    const-class v4, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 16
    invoke-interface {p0, v4}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhf;Lcom/google/android/gms/internal/mlkit_translate/zzih;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V

    return-object v0
.end method

.method private final zzb(Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "J",
            "Lcom/google/android/gms/internal/mlkit_translate/zzhl;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzn:Lcom/google/android/gms/internal/mlkit_translate/zzig;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_translate/zzig;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzhr;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhr;->zza()Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhr;->zzb()Ljava/util/Date;

    move-result-object p4

    .line 7
    new-instance v0, Ljava/util/Date;

    .line 8
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr p2, v3

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v2

    .line 10
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    return-object v1
.end method

.method public static synthetic zzb(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)Lcom/google/android/gms/internal/mlkit_translate/zzhf;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    return-object p0
.end method

.method private static zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzu<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzia;-><init>(Lorg/json/JSONObject;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/mlkit_translate/zzt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzt;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, ""

    goto :goto_1

    .line 6
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "{ \"value\": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " }"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "value"

    .line 7
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzt;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    throw p0

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzt;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzb(Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 36
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Ljava/util/Date;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)Lcom/google/android/gms/internal/mlkit_translate/zzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza(J)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {v6}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    .line 4
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzg:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_translate/zzhy;

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_translate/zzhy;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Ljava/util/Date;JLcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    invoke-static {v7, v8}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzg:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzib;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzib;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzg:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzhz;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)V

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzhl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzl:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzih;->zzg(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzk:Lcom/google/android/gms/internal/mlkit_translate/zzu;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzm:Ljava/util/Map;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzm:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzhl;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb()V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzo:Lcom/google/android/gms/internal/mlkit_translate/zzih;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzih;->zzf(Lcom/google/android/gms/internal/mlkit_translate/zzhl;)V

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result p1

    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzu;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzf:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhv;->zza(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzm:Ljava/util/Map;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zzm:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
