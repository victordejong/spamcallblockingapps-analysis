.class public final Lcom/facebook/ads/redexgen/X/8v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8u;,
        Lcom/facebook/ads/redexgen/X/8t;
    }
.end annotation


# static fields
.field public static A00:Landroid/hardware/Sensor;

.field public static A01:Landroid/hardware/Sensor;

.field public static A02:Landroid/hardware/SensorEventListener;

.field public static A03:Landroid/hardware/SensorEventListener;

.field public static A04:Landroid/hardware/SensorManager;

.field public static A05:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile A09:[F

.field public static volatile A0A:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 19471
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A03()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    .line 19472
    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A00:Landroid/hardware/Sensor;

    .line 19473
    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A01:Landroid/hardware/Sensor;

    .line 19474
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    .line 19475
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v2, 0x98

    const/4 v1, 0x1

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    const/16 v2, 0x99

    const/4 v1, 0x1

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x2

    const/16 v2, 0x9a

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    sput-object v4, Lcom/facebook/ads/redexgen/X/8v;->A07:[Ljava/lang/String;

    .line 19476
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A08:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19478
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A08:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19480
    .local v1, "currentAnalogInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 19481
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8v;->A0C(Ljava/util/Map;)V

    .line 19482
    return-object v1
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0xct
        -0x10t
        -0xet
        -0xet
        -0xct
        -0x5t
        -0xct
        0x1t
        -0x2t
        -0x4t
        -0xct
        0x3t
        -0xct
        0x1t
        -0x12t
        -0x43t
        -0x41t
        -0x30t
        -0x3bt
        -0x2et
        -0x3bt
        -0x30t
        -0x2bt
        0x29t
        0x36t
        0x2ct
        0x3at
        0x37t
        0x31t
        0x2ct
        -0xat
        0x31t
        0x36t
        0x3ct
        0x2dt
        0x36t
        0x3ct
        -0xat
        0x29t
        0x2bt
        0x3ct
        0x31t
        0x37t
        0x36t
        -0xat
        0xat
        0x9t
        0x1ct
        0x1ct
        0xdt
        0x1at
        0x21t
        0x27t
        0xbt
        0x10t
        0x9t
        0x16t
        0xft
        0xdt
        0xct
        0x17t
        0x2ct
        0x17t
        0x1ft
        0x22t
        0x17t
        0x18t
        0x22t
        0x1bt
        0x15t
        0x23t
        0x1bt
        0x23t
        0x25t
        0x28t
        0x2ft
        0x21t
        0x20t
        0x33t
        0x33t
        0x24t
        0x31t
        0x38t
        -0x4t
        0x1t
        -0x6t
        0xbt
        0x0t
        0x2t
        0x7t
        0x0t
        0x23t
        0x2ft
        0x22t
        0x22t
        0x1ct
        0x30t
        0x2dt
        0x1et
        0x20t
        0x22t
        -0x12t
        -0x14t
        -0xbt
        -0x14t
        -0x7t
        -0x10t
        -0x16t
        0x13t
        0xct
        0x1dt
        0xct
        0x13t
        -0x3ct
        -0x3ft
        -0x3at
        -0x4dt
        -0x3at
        -0x45t
        -0x3ft
        -0x40t
        -0x4ft
        -0x3ct
        -0x4ct
        -0x4et
        -0x43t
        -0x4at
        0x4t
        -0xat
        -0x1t
        0x4t
        0x0t
        0x3t
        0x8t
        0x9t
        -0xat
        0x9t
        0xat
        0x8t
        0x2dt
        0x28t
        0x2dt
        0x1at
        0x25t
        0x18t
        0x26t
        0x1et
        0x26t
        0x28t
        0x2bt
        0x32t
        0x10t
        0x11t
        -0x31t
    .end array-data
.end method

.method public static synthetic A04()V
    .locals 0

    .line 19483
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A06()V

    return-void
.end method

.method public static synthetic A05()V
    .locals 0

    .line 19484
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A07()V

    return-void
.end method

.method public static declared-synchronized A06()V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/8v;

    monitor-enter v2

    .line 19485
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 19486
    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A02:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19487
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A02:Landroid/hardware/SensorEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19488
    monitor-exit v2

    return-void

    .line 19489
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized A07()V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/8v;

    monitor-enter v2

    .line 19490
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 19491
    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A03:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19492
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A03:Landroid/hardware/SensorEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19493
    monitor-exit v2

    return-void

    .line 19494
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A08(Landroid/content/Context;)V
    .locals 4

    .line 19495
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 19496
    .local p0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 19497
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 19498
    .local v0, "blockSize":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 19499
    .local v0, "availableBlocks":J
    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 19500
    .local p2, "freeSpace":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A08:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19501
    sget-object v3, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    const/16 v2, 0x5c

    const/16 v1, 0xa

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19502
    return-void
.end method

.method public static A09(Landroid/content/Context;)V
    .locals 6

    .line 19503
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 19504
    .local p0, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 19505
    .local v5, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 19506
    sget-object v4, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    iget-wide v0, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3d

    const/16 v1, 0x10

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19507
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 19508
    sget-object v4, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    iget-wide v0, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8c

    const/16 v1, 0xc

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19509
    :cond_0
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 6

    .line 19510
    const/4 v3, 0x0

    :try_start_0
    const/16 v2, 0x18

    const/16 v1, 0x25

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19511
    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8J;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 19512
    .local p0, "batteryIntent":Landroid/content/Intent;
    if-nez p0, :cond_0

    .line 19513
    return-void
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19514
    :cond_0
    const/4 v5, -0x1

    const/16 v2, 0x6d

    const/4 v1, 0x5

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 19515
    .local v2, "level":I
    const/16 v2, 0x7b

    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 19516
    .local v1, "scale":I
    const/16 v2, 0x86

    const/4 v1, 0x6

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 19517
    .local v3, "status":I
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_4

    :cond_1
    const/4 v5, 0x1

    .line 19518
    .local v0, "isCharging":Z
    :goto_0
    const/4 v1, 0x0

    .line 19519
    .local v1, "batteryLevel":F
    if-lez v3, :cond_2

    .line 19520
    int-to-float v1, v4

    int-to-float v0, v3

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    .line 19521
    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4d

    const/4 v1, 0x7

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19522
    sget-object v4, Lcom/facebook/ads/redexgen/X/8v;->A05:Ljava/util/Map;

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v2, 0x54

    const/16 v1, 0x8

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19523
    return-void

    .line 19524
    :cond_3
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 19525
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 19526
    .end local p0    # "batteryIntent":Landroid/content/Intent;
    .end local v3    # "status":I
    .end local v2    # "level":I
    .end local v1    # "batteryLevel":F
    .end local v0    # "isCharging":Z
    .end local v1
    :catch_0
    move-exception v0

    .line 19527
    .local p0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A1H:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 19528
    const/16 v2, 0x66

    const/4 v1, 0x7

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 19529
    return-void
.end method

.method public static declared-synchronized A0B(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/8v;

    monitor-enter v5

    .line 19530
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8v;->A09(Landroid/content/Context;)V

    .line 19531
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/8v;->A0A(Lcom/facebook/ads/redexgen/X/8J;)V

    .line 19532
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 19533
    const/16 v2, 0x80

    const/4 v1, 0x6

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/8J;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    .line 19534
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19535
    monitor-exit v5

    return-void

    .line 19536
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A00:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 19537
    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A00:Landroid/hardware/Sensor;

    .line 19538
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A01:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 19539
    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A01:Landroid/hardware/Sensor;

    .line 19540
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A02:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 19541
    new-instance v0, Lcom/facebook/ads/redexgen/X/8t;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8t;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A02:Landroid/hardware/SensorEventListener;

    .line 19542
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A00:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 19543
    sget-object v2, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A02:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A00:Landroid/hardware/Sensor;

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 19544
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A03:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_4

    .line 19545
    new-instance v0, Lcom/facebook/ads/redexgen/X/8u;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8u;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A03:Landroid/hardware/SensorEventListener;

    .line 19546
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A01:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 19547
    sget-object v2, Lcom/facebook/ads/redexgen/X/8v;->A04:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A03:Landroid/hardware/SensorEventListener;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A01:Landroid/hardware/Sensor;

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19548
    :cond_4
    monitor-exit v5

    return-void

    .line 19549
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A0C(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19550
    .local v5, "sAnalogInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/facebook/ads/redexgen/X/8v;->A09:[F

    .line 19551
    .local p0, "currentAccelerometerValues":[F
    sget-object v6, Lcom/facebook/ads/redexgen/X/8v;->A0A:[F

    .line 19552
    .local v7, "currentGyroscopeValues":[F
    if-eqz v7, :cond_0

    .line 19553
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A07:[Ljava/lang/String;

    array-length v1, v0

    array-length v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 19554
    .local v6, "length":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 19555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0xe

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A07:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v0, v7, v4

    .line 19556
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 19557
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19558
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19559
    .end local v6    # "length":I
    .end local v0    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    .line 19560
    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A07:[Ljava/lang/String;

    array-length v1, v0

    array-length v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 19561
    .restart local v6    # "length":I
    const/4 v4, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 19562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x72

    const/16 v1, 0x9

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/8v;->A07:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget v0, v6, v4

    .line 19563
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 19564
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19565
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19566
    .end local v6    # "length":I
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static synthetic A0D([F)[F
    .locals 0

    .line 19567
    sput-object p0, Lcom/facebook/ads/redexgen/X/8v;->A09:[F

    return-object p0
.end method

.method public static synthetic A0E([F)[F
    .locals 0

    .line 19568
    sput-object p0, Lcom/facebook/ads/redexgen/X/8v;->A0A:[F

    return-object p0
.end method
