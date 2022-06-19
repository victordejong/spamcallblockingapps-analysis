.class public final Lcom/facebook/ads/redexgen/X/cM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/F5;,
        Lcom/facebook/ads/redexgen/X/1r;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1r;

.field public A01:Lcom/facebook/ads/redexgen/X/94;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/0s;

.field public final A08:Lcom/facebook/ads/redexgen/X/XT;

.field public final A09:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0A:Lcom/facebook/ads/redexgen/X/K9;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KX;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Um"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5O6Pi5UhekEiJBNtL2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ByBiFstlzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNZICTTmM6bBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I3ykA2cHAONkN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xnUs6VMzToWHuFoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFB8Dcv49A6aPeUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    .line 71528
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cM;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M7;->A02()V

    .line 71529
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;Lcom/facebook/ads/AdSize;I)V
    .locals 2
    .param p4    # Lcom/facebook/ads/AdSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 71532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cM;->A0D:Ljava/lang/String;

    .line 71533
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cM;->A0A:Lcom/facebook/ads/redexgen/X/K9;

    .line 71534
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cM;->A06:Lcom/facebook/ads/AdSize;

    .line 71535
    iput p5, p0, Lcom/facebook/ads/redexgen/X/cM;->A04:I

    .line 71536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KX;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    .line 71537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KX;->A0O(Lcom/facebook/ads/redexgen/X/KW;)V

    .line 71538
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A07:Lcom/facebook/ads/redexgen/X/0s;

    .line 71539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A03:Z

    .line 71540
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A05:Landroid/os/Handler;

    .line 71541
    new-instance v0, Lcom/facebook/ads/redexgen/X/F5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/F5;-><init>(Lcom/facebook/ads/redexgen/X/cM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0C:Ljava/lang/Runnable;

    .line 71542
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A09:Lcom/facebook/ads/redexgen/X/JT;

    .line 71543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 71544
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/cM;)Landroid/os/Handler;
    .locals 0

    .line 71545
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cM;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/cM;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 71546
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cM;)Ljava/lang/Runnable;
    .locals 0

    .line 71547
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cM;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const-string v1, "uoxYJqIRleds8fPMMv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_1

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cy;",
            ">;"
        }
    .end annotation

    .line 71548
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/94;

    .line 71549
    .local p0, "currentPlacement":Lcom/facebook/ads/redexgen/X/94;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/94;->A04()Lcom/facebook/ads/redexgen/X/92;

    move-result-object v4

    .line 71550
    .local v2, "placementAd":Lcom/facebook/ads/redexgen/X/92;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/94;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71551
    .local v4, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v4, :cond_1

    .line 71552
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cM;->A07:Lcom/facebook/ads/redexgen/X/0s;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0s;->A00(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v5

    .line 71553
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/0n;->A75()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 71554
    new-instance v9, Lcom/facebook/ads/redexgen/X/1p;

    .line 71555
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/92;->A04()Lorg/json/JSONObject;

    move-result-object v10

    .line 71556
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/cM;->A0D:Ljava/lang/String;

    .line 71557
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0C()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/1p;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/95;Ljava/lang/String;J)V

    .line 71558
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/1p;
    check-cast v5, Lcom/facebook/ads/redexgen/X/cy;

    .line 71559
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/cN;

    invoke-direct {v7, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/cN;-><init>(Lcom/facebook/ads/redexgen/X/cM;Ljava/util/List;Lcom/facebook/ads/redexgen/X/cy;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/cM;->A09:Lcom/facebook/ads/redexgen/X/JT;

    .line 71560
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tj;->A0I()Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v10

    .line 71561
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/cy;->A0Z(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/Jq;)V

    .line 71562
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/cy;
    .end local v9    # "loadConfig":Lcom/facebook/ads/redexgen/X/1p;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/94;->A04()Lcom/facebook/ads/redexgen/X/92;

    move-result-object v4

    .line 71563
    .end local v0    # "adapter":Lcom/facebook/ads/redexgen/X/0n;
    goto :goto_0

    .line 71564
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const-string v1, "dKV76OJFyRmVPWeRzZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/cM;->A0E:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x41t
        -0xet
        0x42t
        0x3et
        0x33t
        0x35t
        0x37t
        0x3ft
        0x37t
        0x40t
        0x46t
        -0xet
        0x3bt
        0x40t
        -0xet
        0x44t
        0x37t
        0x45t
        0x42t
        0x41t
        0x40t
        0x45t
        0x37t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 71565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A03:Z

    .line 71566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71567
    return-void
.end method

.method public final A07()V
    .locals 15

    .line 71568
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v5, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {v11, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/K9;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/K4; {:try_start_0 .. :try_end_0} :catch_0

    .line 71569
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/KE;
    new-instance v2, Lcom/facebook/ads/redexgen/X/KU;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cM;->A0D:Ljava/lang/String;

    .line 71570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Lj;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cM;->A0A:Lcom/facebook/ads/redexgen/X/K9;

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/cM;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 71571
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v9

    .line 71572
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A08:Lcom/facebook/ads/redexgen/X/XT;

    .line 71573
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 71574
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lp;->A01(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/cM;->A02:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/KU;-><init>(Lcom/facebook/ads/redexgen/X/8J;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lj;Lcom/facebook/ads/redexgen/X/K9;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71575
    .local p0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KU;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0B:Lcom/facebook/ads/redexgen/X/KX;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KX;->A0N(Lcom/facebook/ads/redexgen/X/KU;)V

    .line 71576
    return-void

    .line 71577
    .end local p0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KU;
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/KE;
    :catch_0
    move-exception v0

    .line 71578
    .local p0, "e":Lcom/facebook/ads/redexgen/X/K4;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A02(Lcom/facebook/ads/redexgen/X/K4;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/cM;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71579
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1r;)V
    .locals 0

    .line 71580
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:Lcom/facebook/ads/redexgen/X/1r;

    .line 71581
    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .locals 0

    .line 71582
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cM;->A02:Ljava/lang/String;

    .line 71583
    return-void
.end method

.method public final A0A()Z
    .locals 1

    .line 71584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/94;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/94;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAW(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 4

    .line 71585
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A03:Z

    if-eqz v0, :cond_0

    .line 71586
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cM;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cM;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71587
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v1, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cM;->A0F:[Ljava/lang/String;

    const-string v1, "yGn7NPCZVX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 71588
    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/1r;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71589
    :cond_2
    return-void
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/TW;)V
    .locals 7

    .line 71590
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/TW;->A00()Lcom/facebook/ads/redexgen/X/94;

    move-result-object v6

    .line 71591
    .local p0, "placement":Lcom/facebook/ads/redexgen/X/94;
    if-eqz v6, :cond_4

    .line 71592
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A03:Z

    if-eqz v0, :cond_1

    .line 71593
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0A()J

    move-result-wide v2

    .line 71594
    .local p1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 71595
    const-wide/32 v2, 0x1b7740

    .line 71596
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cM;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71597
    .end local p1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/cM;->A01:Lcom/facebook/ads/redexgen/X/94;

    .line 71598
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cM;->A04()Ljava/util/List;

    move-result-object v1

    .line 71599
    .local p1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:Lcom/facebook/ads/redexgen/X/1r;

    if-eqz v0, :cond_3

    .line 71600
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71601
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/K3;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/1r;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71602
    return-void

    .line 71603
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cM;->A00:Lcom/facebook/ads/redexgen/X/1r;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1r;->ABO(Ljava/util/List;)V

    .line 71604
    :cond_3
    return-void

    .line 71605
    .end local p1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cM;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
