.class public final Lcom/facebook/ads/redexgen/X/73;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Landroid/content/Context;

.field public final A02:Lcom/facebook/ads/redexgen/X/61;

.field public final A03:Lcom/facebook/ads/redexgen/X/70;

.field public final A04:Lcom/facebook/ads/redexgen/X/71;

.field public final A05:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "aJ4yIqlrLMt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EKTEccEpmR5675IOZ9lerUvwdG3ro5hY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jTSIV3oRBrHoNrPkrRMeoeXpEd5JgTWm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "V52m2mthgbiWP0xFHXCG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Wq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BEItf56ADM92z1bkMxhlUdx7QMuMYd3L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2Z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ce4p6sp9ssAJXyOyOHhkkoq4sskZtb0W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/73;->A07:[Ljava/lang/String;

    .line 16314
    invoke-static {}, Lcom/facebook/ads/redexgen/X/73;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 1

    .line 16315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16316
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 16317
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/73;->A01:Landroid/content/Context;

    .line 16318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A05:Ljava/util/Set;

    .line 16319
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/61;->A0c()Lcom/facebook/ads/redexgen/X/71;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A04:Lcom/facebook/ads/redexgen/X/71;

    .line 16320
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/61;->A0b()Lcom/facebook/ads/redexgen/X/70;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A03:Lcom/facebook/ads/redexgen/X/70;

    .line 16321
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/6x;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0a()Lcom/facebook/ads/redexgen/X/6o;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0G:Lcom/facebook/ads/redexgen/X/6o;

    if-ne v1, v0, :cond_0

    .line 16323
    const/4 v0, 0x0

    return-object v0

    .line 16324
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A01:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 16325
    .local p0, "context":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6x;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 16326
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/73;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/73;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/73;->A07:[Ljava/lang/String;

    const-string v1, "0R"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "EB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/73;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x4dt
        0x5ct
        0x64t
        0x49t
        0x5bt
        0x5ct
        0x78t
        0x4dt
        0x5at
        0x41t
        0x47t
        0x4ct
        0x41t
        0x4bt
        0x6bt
        0x47t
        0x44t
        0x44t
        0x4dt
        0x4bt
        0x5ct
        0x41t
        0x47t
        0x46t
        0x7ct
        0x41t
        0x45t
        0x4dt
        0x65t
        0x5bt
    .end array-data
.end method

.method private A03(J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 16327
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 16328
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A05:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/6h;

    .line 16329
    .local v2, "bdSignal":Lcom/facebook/ads/redexgen/X/6h;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A01()Lcom/facebook/ads/redexgen/X/6k;

    move-result-object v0

    .line 16330
    .local v5, "executor":Lcom/facebook/ads/redexgen/X/6k;
    if-nez v0, :cond_0

    .line 16331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 16332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/73;->A00()Lcom/facebook/ads/redexgen/X/6x;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A04:Lcom/facebook/ads/redexgen/X/6v;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6w;-><init>(Lcom/facebook/ads/redexgen/X/6v;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xi;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Xi;-><init>(JLcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6w;)V

    .line 16333
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 16334
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6z;->A09(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 16335
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16336
    .end local v0    # "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6k;->A5G()Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16337
    .end local v0
    :catchall_0
    move-exception v1

    .line 16338
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A01:Landroid/content/Context;

    .line 16339
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/78;->A04(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/Xi;

    move-result-object v0

    goto :goto_1

    .line 16340
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/73;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16341
    :catchall_1
    move-exception v0

    .line 16342
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 16343
    .end local p0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private A04(J)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 16344
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0j()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 16345
    .local p0, "executorService":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/72;-><init>(Lcom/facebook/ads/redexgen/X/73;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16346
    :catchall_0
    move-exception v0

    .line 16347
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 16348
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 16349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0W()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    .line 16350
    return-void

    .line 16351
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 16352
    .local p0, "currentTimeMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A04:Lcom/facebook/ads/redexgen/X/71;

    .line 16353
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/71;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v0

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 16354
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0W()J

    move-result-wide v1

    cmp-long v0, v6, v1

    if-ltz v0, :cond_1

    .line 16355
    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/73;->A03(J)V

    .line 16356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0W()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/73;->A04(J)V

    .line 16357
    :goto_0
    return-void

    .line 16358
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A04:Lcom/facebook/ads/redexgen/X/71;

    .line 16359
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/71;->getLastPeriodicCollectionTimeMs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A02:Lcom/facebook/ads/redexgen/X/61;

    .line 16360
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0W()J

    move-result-wide v0

    add-long/2addr v2, v0

    sub-long/2addr v4, v2

    .line 16361
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 16362
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/73;->A04(J)V

    goto :goto_0
.end method

.method public final A06(I)V
    .locals 0

    .line 16363
    iput p1, p0, Lcom/facebook/ads/redexgen/X/73;->A00:I

    .line 16364
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/6h;)V
    .locals 1

    .line 16365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/73;->A05:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16366
    return-void
.end method
