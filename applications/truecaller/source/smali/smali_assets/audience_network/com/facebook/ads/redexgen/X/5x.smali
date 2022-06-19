.class public final Lcom/facebook/ads/redexgen/X/5x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/62;",
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

    const-string v0, "r7c1s5U0efOStYGowMowhUbuYlQTG1Tt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4N5luf2P5Kce0fziMzoENYJ9JUsEy4RG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Zwxj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "L2KmiKnie6D54jPyz7fJn9CofNiJStjg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Reipc3PbxUqE4G7HYurM4m8tamMVkuwI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qFHCxa5Kyhox8u"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zslT757DGHQcDkpTRw1DlpZ4hqoBSQOy"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oFLB5GUqllb2V05SIM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5x;->A01:[Ljava/lang/String;

    .line 14435
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5x;->A01()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5x;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5x;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5x;->A01:[Ljava/lang/String;

    const-string v1, "ewynTuX5etTUvRbKneAORAXWy6m3gfja"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "MEXbvG7De7lT0m7kyXT3Vo2bJU5t0LAQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5x;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x28t
        0x39t
        0x34t
        0x38t
        0x33t
        0x3et
        0x38t
        0x2t
        0x33t
        0x38t
        0x29t
        0x2at
        0x32t
        0x2ft
        0x36t
        0x73t
        0x39t
        0x38t
        0x25t
        0x2dt
        0x2ft
        0x24t
        0x2ft
        0x38t
        0x23t
        0x29t
    .end array-data
.end method

.method public static A02(Landroid/app/Activity;Landroid/view/MotionEvent;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14437
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14438
    return-void

    .line 14439
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/62;

    .line 14440
    .local p0, "baseBDController":Lcom/facebook/ads/redexgen/X/62;
    if-eqz v0, :cond_1

    .line 14441
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/62;->A05(Landroid/view/MotionEvent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14442
    :catchall_0
    move-exception v1

    .line 14443
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8I;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    .line 14444
    .local p1, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    if-eqz v0, :cond_1

    .line 14445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object p1

    sget p0, Lcom/facebook/ads/redexgen/X/8m;->A14:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 14446
    const/16 v2, 0x14

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5x;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0, v3}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    .line 14447
    .end local p0    # "t":Ljava/lang/Throwable;
    .end local p1    # "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    :cond_1
    :goto_0
    return-void
.end method

.method public static A03(Landroid/content/Context;)V
    .locals 0

    .line 14448
    instance-of p0, p0, Landroid/app/Application;

    if-nez p0, :cond_0

    .line 14449
    return-void

    .line 14450
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ah;-><init>()V

    invoke-static {p0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A05(Lcom/facebook/ads/redexgen/X/LB;)V

    .line 14451
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14452
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ak;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ak;-><init>(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14453
    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14454
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14455
    return-void

    .line 14456
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14457
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/78;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6l;

    move-result-object v0

    .line 14458
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14459
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/5x;->A04(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    .line 14460
    return-void

    .line 14461
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/62;

    .line 14462
    .local p0, "baseBDController":Lcom/facebook/ads/redexgen/X/62;
    if-eqz v2, :cond_2

    .line 14463
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aj;

    invoke-direct {v0, v2, p1, p0}, Lcom/facebook/ads/redexgen/X/aj;-><init>(Lcom/facebook/ads/redexgen/X/62;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14464
    :cond_2
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V
    .locals 0

    .line 14465
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/5x;->A07(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized A07(Lcom/facebook/ads/redexgen/X/XS;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    const-class v5, Lcom/facebook/ads/redexgen/X/5x;

    monitor-enter v5

    .line 14466
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14467
    monitor-exit v5

    return-void

    .line 14468
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14469
    new-instance v2, Lcom/facebook/ads/redexgen/X/af;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/af;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 14470
    .local p1, "bdMobileSignalLoggingImpl":Lcom/facebook/ads/redexgen/X/af;
    new-instance v3, Lcom/facebook/ads/redexgen/X/ag;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/ag;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 14471
    .local v5, "bdErrorLogCallbackImpl":Lcom/facebook/ads/redexgen/X/ag;
    new-instance v1, Lcom/facebook/ads/redexgen/X/60;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/60;-><init>()V

    const/4 v0, 0x1

    .line 14472
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0I(Z)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14473
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A05(Landroid/content/Context;)I

    move-result v0

    .line 14474
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A04(I)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14475
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A03(Landroid/content/Context;)I

    move-result v0

    .line 14476
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A02(I)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14477
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A04(Landroid/content/Context;)I

    move-result v0

    .line 14478
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A03(I)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14479
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A07(Landroid/content/Context;)I

    move-result v0

    .line 14480
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A06(I)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14481
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5y;->A0M()Ljava/util/HashMap;

    move-result-object v0

    .line 14482
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0G(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v0

    .line 14483
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/60;->A0A(Lcom/facebook/ads/redexgen/X/6B;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14484
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ag;->A00()Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    .line 14485
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A09(Lcom/facebook/ads/redexgen/X/6A;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v2

    .line 14486
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A01(Landroid/content/Context;)D

    move-result-wide v0

    .line 14487
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/60;->A00(D)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0G:Lcom/facebook/ads/redexgen/X/6o;

    .line 14488
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0C(Lcom/facebook/ads/redexgen/X/6o;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14489
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14490
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0N(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 14491
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0H(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14492
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A06(Landroid/content/Context;)I

    move-result v0

    .line 14493
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A05(I)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    const-class v0, Landroid/os/Build;

    .line 14494
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A0D(Ljava/lang/Class;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v1

    .line 14495
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A02(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/60;->A01(F)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v2

    .line 14496
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A09(Landroid/content/Context;)J

    move-result-wide v0

    .line 14497
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/60;->A08(J)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v2

    .line 14498
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A08(Landroid/content/Context;)J

    move-result-wide v0

    .line 14499
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/60;->A07(J)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v0

    .line 14500
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/60;->A0B(Lcom/facebook/ads/redexgen/X/6C;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5x;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14501
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/60;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/60;

    move-result-object v0

    .line 14502
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/60;->A0J()Lcom/facebook/ads/redexgen/X/61;

    move-result-object v2

    .line 14503
    .local v0, "baseBotDetectionConfig":Lcom/facebook/ads/redexgen/X/61;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14504
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XS;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5x;->A03(Landroid/content/Context;)V

    .line 14505
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5y;->A0A(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/6l;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/62;

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/ads/redexgen/X/62;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;Lcom/facebook/ads/redexgen/X/6l;)V

    .line 14506
    .local v0, "baseBDController":Lcom/facebook/ads/redexgen/X/62;
    if-eqz p1, :cond_2

    .line 14507
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/62;->A06(Ljava/lang/String;)Z

    .line 14508
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/5x;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14509
    :catchall_0
    move-exception v4

    .line 14510
    .local p1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v3

    const/16 v2, 0x14

    const/4 v1, 0x7

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5x;->A00(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/8m;->A14:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 14511
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8l;->A8q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14512
    .end local p1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    monitor-exit v5

    return-void

    .line 14513
    .end local v2
    .end local v3
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0
.end method
