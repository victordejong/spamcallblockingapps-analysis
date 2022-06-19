.class public final Lcom/facebook/ads/redexgen/X/0u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/0t;

.field public static A01:Lcom/facebook/ads/redexgen/X/8J;

.field public static A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A03:Ljava/util/concurrent/CountDownLatch;

.field public static A04:Ljava/util/concurrent/CountDownLatch;

.field public static A05:Z

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TOlR5WIHpQxnCrBDCJGIvboS5c1GP2eb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1A072KPTjzB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BhIKZU0mEosMUOfZes2VT64q11XJ2Uhn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3eQHzZddeWPmYl0bNsvnb2WjxREMTE8a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3ukMDhdDleVgfGP2GHVzNRiRwZbG92ZS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tXOxwX9vQ8QECIpzr41AiGeD6LbiHgO3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "feL0RS1gsJrC9VyxtC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0u;->A07:[Ljava/lang/String;

    .line 2437
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A08:Ljava/lang/String;

    .line 2438
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A03:Ljava/util/concurrent/CountDownLatch;

    .line 2439
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A04:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Ljava/lang/String;
    .locals 3

    .line 2441
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A02()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/0u;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2442
    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2443
    .local v2, "file":Ljava/io/File;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object p0

    .line 2444
    .local v1, "fileContent":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 2445
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2446
    .local v0, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    new-array v3, v0, [B

    .line 2447
    .local v4, "data":[B
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 2448
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2449
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    :catch_0
    move-exception v3

    .line 2451
    .local v0, "e":Ljava/io/IOException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2452
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2453
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_1

    .line 2454
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 2455
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2456
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0x:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2457
    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 2458
    :goto_0
    move-object p0, v0

    .line 2459
    :cond_0
    :goto_1
    return-object p0
.end method

.method public static A03()V
    .locals 3

    .line 2460
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2461
    .end local v0
    :cond_0
    return-void

    .line 2462
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2463
    .local v0, "encryptedAdId":Ljava/lang/String;
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/d3;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/d3;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2464
    return-void
.end method

.method public static A04()V
    .locals 4

    const/16 v0, 0x37

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/0u;->A07:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/0u;->A07:[Ljava/lang/String;

    const-string v1, "ekiMbk44dvQ4iEpOly1MsU0Tkyq5eij5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/0u;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x72t
        0x73t
        0x61t
        0xat
        0x1ft
        0x7bt
        0x7dt
        0x3t
        0x6t
        0x11t
        0x21t
        0x3t
        0x12t
        0x12t
        0xbt
        0xct
        0x5t
        0x2bt
        0xct
        0x4t
        0xdt
        0x4ct
        0x16t
        0x1at
        0x16t
        0x20t
        0x22t
        0x33t
        0x33t
        0x26t
        0x27t
        0x2t
        0x27t
        0x30t
        0x6dt
        0x37t
        0x3bt
        0x37t
        0xdt
        0x19t
        0xet
        0x1at
        0x1et
        0xet
        0x5t
        0x8t
        0x12t
        0x34t
        0x8t
        0xat
        0x1bt
        0x1bt
        0x2t
        0x5t
        0xct
    .end array-data
.end method

.method public static synthetic A05()V
    .locals 0

    .line 2465
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A08()V

    return-void
.end method

.method public static synthetic A06()V
    .locals 0

    .line 2466
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A09()V

    return-void
.end method

.method public static declared-synchronized A07()V
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v3

    .line 2467
    :try_start_0
    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0E(Ljava/lang/String;)V

    .line 2468
    const/16 v2, 0x19

    const/16 v1, 0xd

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A0E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    monitor-exit v3

    return-void

    .line 2470
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized A08()V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v5

    .line 2471
    :try_start_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    const/16 v2, 0x19

    const/16 v1, 0xd

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0t;->A07(Ljava/lang/String;)V

    .line 2472
    sget-object v3, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0u;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0t;->A05(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    :catch_0
    move-exception v4

    .line 2474
    .local v3, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A07()V

    .line 2475
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0z:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2477
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2478
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    monitor-exit v5

    return-void

    .line 2479
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static declared-synchronized A09()V
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v3

    .line 2480
    :try_start_0
    const/16 v2, 0x19

    const/16 v1, 0xd

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0F(Ljava/lang/String;[B)V

    .line 2481
    const/4 v2, 0x7

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 2482
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2483
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0F(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
    monitor-exit v3

    return-void

    .line 2485
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V
    .locals 0

    .line 2486
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/0u;->A0B(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized A0B(Lcom/facebook/ads/redexgen/X/1M;Ljava/lang/String;Z)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v1

    .line 2487
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/1M;->A07(Z)V

    .line 2488
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1M;->A08()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1M;->A09()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2489
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0t;->A06(Ljava/lang/String;)V

    goto :goto_0

    .line 2490
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0t;->A08(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2491
    :goto_0
    monitor-exit v1

    return-void

    .line 2492
    .end local p2    # null:Z
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v2

    .line 2493
    :try_start_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2494
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2495
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/d6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/d6;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    monitor-exit v2

    return-void

    .line 2497
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A0D(Ljava/lang/String;)V
    .locals 2

    .line 2498
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0u;->A0H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    return-void

    .line 2500
    :cond_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/0u;->A02:Ljava/lang/String;

    .line 2501
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/d4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/d4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2502
    return-void
.end method

.method public static A0E(Ljava/lang/String;)V
    .locals 2

    .line 2503
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2504
    .local p0, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2506
    :cond_0
    return-void
.end method

.method public static declared-synchronized A0F(Ljava/lang/String;[B)V
    .locals 6

    const-class v5, Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v5

    .line 2507
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2508
    .local p1, "file":Ljava/io/File;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2509
    .local v5, "fout":Ljava/io/FileOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2510
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2511
    :catch_0
    move-exception v4

    .line 2512
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2513
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2514
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_0

    .line 2515
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 2516
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A0x:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2518
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2519
    :goto_0
    monitor-exit v5

    return-void

    .line 2520
    .end local p1    # "file":Ljava/io/File;
    .end local v4
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public static A0G(Lorg/json/JSONObject;)V
    .locals 2

    .line 2521
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0v(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    .line 2522
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    if-nez v0, :cond_0

    .line 2523
    return-void

    .line 2524
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/d5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/d5;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2525
    return-void
.end method

.method public static A0H()Z
    .locals 1

    .line 2526
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/0u;->A05:Z

    return v0
.end method

.method public static A0I(Ljava/lang/String;)Z
    .locals 7

    .line 2527
    const/4 v6, 0x0

    .line 2528
    .local p0, "hasData":Z
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A00:Lcom/facebook/ads/redexgen/X/0t;

    .line 2529
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0t;->A03()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Lcom/facebook/ads/redexgen/X/1M;

    .line 2530
    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    :catch_0
    move-exception v1

    .line 2532
    .local v6, "e":Lorg/json/JSONException;
    sget-object v0, Lcom/facebook/ads/redexgen/X/0u;->A01:Lcom/facebook/ads/redexgen/X/8J;

    .line 2533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8m;->A0z:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 2534
    const/16 v2, 0x26

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0u;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 2535
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_0
    return v6
.end method

.method public static synthetic A0J(Ljava/lang/String;)Z
    .locals 0

    .line 2536
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/0u;->A0I(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
