.class public final Lcom/facebook/ads/redexgen/X/U4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JT;


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/JT;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A04:[B

.field public static final A05:Ljava/lang/String;

.field public static volatile A06:Z


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XS;

.field public final A01:Lcom/facebook/ads/redexgen/X/9T;

.field public final A02:Lcom/facebook/ads/redexgen/X/JS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 55491
    invoke-static {}, Lcom/facebook/ads/redexgen/X/U4;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/U4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A05:Ljava/lang/String;

    .line 55492
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/U4;->A06:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    .line 55493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55495
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JF;->A0T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55496
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9R;->A00(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/9T;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A01:Lcom/facebook/ads/redexgen/X/9T;

    .line 55497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A01:Lcom/facebook/ads/redexgen/X/9T;

    .line 55498
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JY;->A01(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/9T;)Lcom/facebook/ads/redexgen/X/JR;

    move-result-object v0

    .line 55499
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JR;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/XS;
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JR;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/U7;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/U7;-><init>(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/JR;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/U4;->A02:Lcom/facebook/ads/redexgen/X/JS;

    .line 55500
    sget-object v1, Lcom/facebook/ads/redexgen/X/MA;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/U6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/U6;-><init>(Lcom/facebook/ads/redexgen/X/U4;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55501
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U4;->A04(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 55502
    return-void

    .line 55503
    .end local p0    # "dispatchCallback":Lcom/facebook/ads/redexgen/X/JR;
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9R;->A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/Do;

    move-result-object v1

    .line 55504
    .local p0, "adEventStorage":Lcom/facebook/ads/redexgen/X/Wz;
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/JY;->A00(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/Wz;)Lcom/facebook/ads/redexgen/X/JR;

    move-result-object v0

    .line 55505
    .local p1, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JR;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/U4;->A01:Lcom/facebook/ads/redexgen/X/9T;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/U4;)Lcom/facebook/ads/redexgen/X/JS;
    .locals 0

    .line 55506
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/U4;->A02:Lcom/facebook/ads/redexgen/X/JS;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/U4;

    monitor-enter v1

    .line 55507
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/U4;->A03:Lcom/facebook/ads/redexgen/X/JT;

    if-nez v0, :cond_0

    .line 55508
    new-instance v0, Lcom/facebook/ads/redexgen/X/U4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/U4;-><init>(Lcom/facebook/ads/redexgen/X/XS;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 55509
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/U4;->A03:Lcom/facebook/ads/redexgen/X/JT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55510
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/U4;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/U4;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x15t
        -0x4t
        -0x15t
        -0xct
        -0x6t
        -0x4ct
        -0x58t
        -0x25t
        -0x25t
        -0x34t
        -0x2ct
        -0x29t
        -0x25t
        -0x30t
        -0x2bt
        -0x32t
        -0x79t
        -0x25t
        -0x2at
        -0x79t
        -0x2dt
        -0x2at
        -0x32t
        -0x79t
        -0x38t
        -0x2bt
        -0x79t
        -0x30t
        -0x2bt
        -0x23t
        -0x38t
        -0x2dt
        -0x30t
        -0x35t
        -0x79t
        -0x2bt
        -0xdt
        -0x1et
        -0x1ct
        -0x1at
        -0x18t
        -0x1at
        -0x11t
        -0x1at
        -0xdt
        -0x16t
        -0x1ct
        0x2et
        0x33t
        0x2at
        0x1ft
    .end array-data
.end method

.method public static declared-synchronized A04(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/U4;

    monitor-enter v1

    .line 55511
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/U4;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55512
    monitor-exit v1

    return-void

    .line 55513
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/api/InitApi;->onAdEventManagerCreated(Landroid/content/Context;)V

    .line 55514
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/U4;->A06:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55515
    monitor-exit v1

    return-void

    .line 55516
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/JQ;)V
    .locals 5

    .line 55517
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55518
    sget-object v4, Lcom/facebook/ads/redexgen/X/U4;->A05:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    const/16 v1, 0x1d

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55519
    return-void

    .line 55520
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/U4;->A06(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U4;->A01:Lcom/facebook/ads/redexgen/X/9T;

    new-instance v0, Lcom/facebook/ads/redexgen/X/U5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/U5;-><init>(Lcom/facebook/ads/redexgen/X/U4;Lcom/facebook/ads/redexgen/X/JQ;)V

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9T;->AFV(Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/redexgen/X/9Q;)V

    .line 55522
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/JQ;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThrowException"
        }
    .end annotation

    .line 55523
    sget-object v1, Lcom/facebook/ads/redexgen/X/JU;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55524
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/U4;
    :goto_0
    return-void

    .line 55525
    :pswitch_0
    const/16 v2, 0x24

    const/4 v1, 0x5

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/facebook/ads/redexgen/X/8n;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8n;-><init>(Ljava/lang/Throwable;)V

    .line 55526
    .local p0, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8n;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8n;->A03(I)V

    .line 55527
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JQ;->A06()Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JW;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8n;->A05(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55528
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55529
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A06()Lcom/facebook/ads/redexgen/X/8l;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8m;->A16:I

    .line 55530
    const/16 v2, 0x29

    const/4 v1, 0x7

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/U4;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8l;->A8r(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8n;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A8i(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55531
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55532
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55533
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55534
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55535
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55536
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A04:Lcom/facebook/ads/redexgen/X/JW;

    .line 55537
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55538
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55539
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55540
    return-void
.end method

.method public final A8l(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55541
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55542
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55543
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55544
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55545
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55546
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A06:Lcom/facebook/ads/redexgen/X/JW;

    .line 55547
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55548
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55549
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55550
    return-void
.end method

.method public final A8m(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55551
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55552
    return-void

    .line 55553
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55554
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55555
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55556
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55557
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55558
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A07:Lcom/facebook/ads/redexgen/X/JW;

    .line 55559
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0I:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55560
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55561
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55562
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55563
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55564
    return-void
.end method

.method public final A8n(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55565
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55566
    return-void

    .line 55567
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55568
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55569
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55570
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55571
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55572
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A08:Lcom/facebook/ads/redexgen/X/JW;

    .line 55573
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55574
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55575
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55576
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55577
    return-void
.end method

.method public final A8p(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55578
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55579
    return-void

    .line 55580
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55581
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55582
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55583
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55584
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55585
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0B:Lcom/facebook/ads/redexgen/X/JW;

    .line 55586
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55587
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55588
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55589
    return-void
.end method

.method public final A8t(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55590
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55591
    return-void

    .line 55592
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55593
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55594
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55595
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55596
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55597
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0C:Lcom/facebook/ads/redexgen/X/JW;

    .line 55598
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55599
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55600
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55601
    return-void
.end method

.method public final A8v(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55602
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55603
    return-void

    .line 55604
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55605
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55607
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55608
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55609
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0D:Lcom/facebook/ads/redexgen/X/JW;

    .line 55610
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0T:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55611
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55612
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55613
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55614
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55615
    return-void
.end method

.method public final A8w(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55616
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55617
    return-void

    .line 55618
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55619
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55620
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55621
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55622
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55623
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0E:Lcom/facebook/ads/redexgen/X/JW;

    .line 55624
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55625
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55626
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55627
    return-void
.end method

.method public final A8x(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55628
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55629
    return-void

    .line 55630
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55631
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55632
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55633
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55634
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55635
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0F:Lcom/facebook/ads/redexgen/X/JW;

    .line 55636
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0V:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55637
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55638
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55639
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55640
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55641
    return-void
.end method

.method public final A8y(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55642
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55643
    return-void

    .line 55644
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55645
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55646
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55647
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55648
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55649
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0I:Lcom/facebook/ads/redexgen/X/JW;

    .line 55650
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0W:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55651
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55652
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55653
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55654
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55655
    return-void
.end method

.method public final A90(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55656
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55657
    return-void

    .line 55658
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55659
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55660
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55661
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55662
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55663
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0H:Lcom/facebook/ads/redexgen/X/JW;

    .line 55664
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0X:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55665
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55666
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55667
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55668
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55669
    return-void
.end method

.method public final A92(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JV;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/JV;",
            ")V"
        }
    .end annotation

    .line 55670
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55671
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55672
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55674
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55675
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    .line 55676
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/JW;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JW;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55677
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55678
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55679
    return-void
.end method

.method public final A93(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55680
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55681
    return-void

    .line 55682
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55683
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55684
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55685
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55686
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55687
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0J:Lcom/facebook/ads/redexgen/X/JW;

    .line 55688
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55689
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55690
    .local p0, "adEvent":Lcom/facebook/ads/redexgen/X/JQ;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55691
    return-void
.end method

.method public final A97(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55692
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55693
    return-void

    .line 55694
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55695
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55696
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55697
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55698
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55699
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0L:Lcom/facebook/ads/redexgen/X/JW;

    .line 55700
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0Z:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55701
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55702
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55703
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55704
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55705
    return-void
.end method

.method public final A99(Ljava/lang/String;)V
    .locals 3

    .line 55706
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55707
    return-void

    .line 55708
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55709
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55710
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55711
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55712
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0M:Lcom/facebook/ads/redexgen/X/JW;

    .line 55713
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0a:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55714
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55715
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55716
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55717
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55718
    return-void
.end method

.method public final A9B(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55719
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55720
    return-void

    .line 55721
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55722
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55723
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55724
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55725
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55726
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0G:Lcom/facebook/ads/redexgen/X/JW;

    .line 55727
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55728
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55729
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55730
    return-void
.end method

.method public final A9C(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55731
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55732
    return-void

    .line 55733
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55734
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55735
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55736
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55737
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55738
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0N:Lcom/facebook/ads/redexgen/X/JW;

    .line 55739
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0e:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55740
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55741
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55742
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55743
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55744
    return-void
.end method

.method public final A9D(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55745
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55746
    return-void

    .line 55747
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55748
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55749
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55750
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55751
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55752
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0R:Lcom/facebook/ads/redexgen/X/JW;

    .line 55753
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0g:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55754
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55755
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55756
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55757
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55758
    return-void
.end method

.method public final A9E(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55759
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55760
    return-void

    .line 55761
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55762
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55763
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55764
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55765
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A04:Lcom/facebook/ads/redexgen/X/JV;

    .line 55766
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0Q:Lcom/facebook/ads/redexgen/X/JW;

    .line 55767
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ja;->A0h:Lcom/facebook/ads/redexgen/X/Ja;

    .line 55768
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Jd;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ja;)Z

    move-result v0

    .line 55769
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A06(Z)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55770
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55771
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55772
    return-void
.end method

.method public final A9F(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55773
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55774
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55775
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55776
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55777
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55778
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0S:Lcom/facebook/ads/redexgen/X/JW;

    .line 55779
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55780
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55781
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55782
    return-void
.end method

.method public final A9H(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55783
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55784
    return-void

    .line 55785
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/JP;-><init>()V

    .line 55786
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/JP;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55787
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/JP;->A00(D)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55788
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A07()Lcom/facebook/ads/redexgen/X/9C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9C;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v0

    .line 55789
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/JP;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JV;->A05:Lcom/facebook/ads/redexgen/X/JV;

    .line 55790
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A01(Lcom/facebook/ads/redexgen/X/JV;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JW;->A0T:Lcom/facebook/ads/redexgen/X/JW;

    .line 55791
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A02(Lcom/facebook/ads/redexgen/X/JW;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    .line 55792
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JP;->A07(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/JQ;

    move-result-object v0

    .line 55793
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/U4;->A05(Lcom/facebook/ads/redexgen/X/JQ;)V

    .line 55794
    return-void
.end method

.method public final ACv(Ljava/lang/String;)V
    .locals 3

    .line 55795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/XS;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Qz;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Qz;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55796
    return-void
.end method
