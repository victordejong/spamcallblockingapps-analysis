.class public final Lcom/facebook/ads/redexgen/X/5B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InterstitialAdApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/InterstitialAd;

.field public final A02:Lcom/facebook/ads/redexgen/X/1x;

.field public final A03:Lcom/facebook/ads/redexgen/X/F3;

.field public final A04:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "S822El9zG6GuADGrtluuLX363osWhxiG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZFI3hp6NIHNPBZ8p7tKJKM6DxTur89gU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rKe2xKovfMLHVnc2kJBHIfRtW7KI2joW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CTsEdbmp9bu3ZhSS7yZH02ALmjP1FNtP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mPYAOoIIU9PuPwOlU3lFT13mhy9mIxzC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HqZNdyzgU2LJRhG9zHJvoyCPzWSUAGCn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5B;->A06:[Ljava/lang/String;

    .line 13431
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5B;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/InterstitialAd;)V
    .locals 2

    .line 13432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13433
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/InterstitialAd;

    .line 13434
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 13435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 13436
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    .line 13437
    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2g(Ljava/lang/String;Ljava/lang/String;)V

    .line 13438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/1x;

    invoke-direct {v0, v1, p3, p2}, Lcom/facebook/ads/redexgen/X/1x;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    .line 13439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/XT;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 13440
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/F3;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/F3;-><init>(Lcom/facebook/ads/redexgen/X/1x;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    .line 13441
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A06:[Ljava/lang/String;

    const-string v1, "dLq0XFJawohP2A9uDPm8W8ZKhW9iXRhW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5B;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x20t
        0x11t
        0x10t
        -0x1dt
        -0x1dt
        -0x1et
        -0x19t
        -0x19t
        -0x48t
        -0x4at
        -0x1at
        -0x19t
        -0x48t
        -0x17t
        -0x18t
        -0x44t
        0x26t
        0x24t
        0x20t
        0x20t
        0x28t
        0x21t
        0x27t
        0x54t
        -0x31t
        -0xct
        -0x6t
        -0x15t
        -0x8t
        -0xct
        -0x19t
        -0xet
        -0x5at
        -0x15t
        -0x8t
        -0x8t
        -0xbt
        -0x8t
        -0x4ct
        -0x70t
        -0x1dt
        0x8t
        0xet
        -0x1t
        0xct
        0xdt
        0xet
        0x3t
        0xet
        0x3t
        -0x5t
        0x6t
        -0x46t
        -0x5t
        -0x2t
        -0x46t
        -0x2t
        -0x1t
        0xdt
        0xet
        0xct
        0x9t
        0x13t
        -0x1t
        -0x2t
        -0x38t
        -0x13t
        -0xdt
        -0x1ct
        -0xft
        -0xet
        -0xdt
        -0x18t
        -0xdt
        -0x18t
        -0x20t
        -0x15t
        -0x61t
        -0x20t
        -0x1dt
        -0x61t
        -0x15t
        -0x12t
        -0x20t
        -0x1dt
        -0x61t
        -0xft
        -0x1ct
        -0x10t
        -0xct
        -0x1ct
        -0xet
        -0xdt
        -0x1ct
        -0x1dt
        -0x12t
        0x13t
        0x19t
        0xat
        0x17t
        0x18t
        0x19t
        0xet
        0x19t
        0xet
        0x6t
        0x11t
        -0x3bt
        0x6t
        0x9t
        -0x3bt
        0x18t
        0xdt
        0x14t
        0x1ct
        -0x3bt
        0x8t
        0x6t
        0x11t
        0x11t
        0xat
        0x9t
        -0xat
        -0x9t
        0x5t
        0x6t
        0x4t
        0x1t
        0xbt
        -0x1ct
        -0x11t
        -0x34t
        -0x11t
        -0x1ft
        -0x1ct
        -0x3ft
        -0x1ct
        0x31t
        0x26t
        0x2dt
        0x35t
    .end array-data
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/InterstitialAdListener;)V
    .locals 3

    .line 13442
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z(Z)V

    .line 13443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1x;->A0D(Lcom/facebook/ads/InterstitialAdListener;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/5B;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 13444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13445
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5B;->A06:[Ljava/lang/String;

    const-string v1, "rYQ6gTbtajntBm3fXVm84HcfyQ9ACN8J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public final A03(Lcom/facebook/ads/RewardData;)V
    .locals 1

    .line 13446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1x;->A0E(Lcom/facebook/ads/RewardData;)V

    .line 13447
    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardedAdListener;)V
    .locals 1

    .line 13448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1x;->A0F(Lcom/facebook/ads/RewardedAdListener;)V

    .line 13449
    return-void
.end method

.method public final A05(Ljava/util/EnumSet;Ljava/lang/String;Z)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .local v2, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    const/16 v2, 0x81

    const/16 v1, 0x8

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x41

    const/16 v1, 0x1e

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13450
    if-nez p2, :cond_0

    .line 13451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2d()V

    .line 13452
    :goto_0
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Z

    .line 13453
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F3;->A09(Lcom/facebook/ads/InterstitialAd;Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 13454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b()V

    .line 13455
    return-void

    .line 13456
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2c()V

    goto :goto_0
.end method

.method public final bridge synthetic buildLoadAdConfig()Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13457
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5B;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 13458
    new-instance v0, Lcom/facebook/ads/redexgen/X/5C;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5C;-><init>(Lcom/facebook/ads/redexgen/X/5B;)V

    return-object v0
.end method

.method public final bridge synthetic buildShowAdConfig()Lcom/facebook/ads/FullScreenAd$ShowConfigBuilder;
    .locals 1

    .line 13459
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5B;->buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final buildShowAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;
    .locals 1

    .line 13460
    new-instance v0, Lcom/facebook/ads/redexgen/X/5D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5D;-><init>()V

    return-object v0
.end method

.method public final destroy()V
    .locals 5

    const/16 v2, 0x7a

    const/4 v1, 0x7

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x28

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13462
    return-void

    .line 13463
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A05()V

    .line 13464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2h()V

    .line 13465
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 13466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cG;->A04()V

    .line 13467
    return-void
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 1

    .line 13468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A09()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAdInvalidated()Z
    .locals 2

    .line 13469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A0A()Z

    move-result v1

    .line 13470
    .local p0, "isInvalidated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4W(Z)V

    .line 13471
    return v1
.end method

.method public final isAdLoaded()Z
    .locals 1

    .line 13472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A0B()Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .locals 3

    .line 13473
    sget-object v2, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A05(Ljava/util/EnumSet;Ljava/lang/String;Z)V

    .line 13474
    return-void
.end method

.method public final loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    .locals 0

    .line 13475
    check-cast p1, Lcom/facebook/ads/redexgen/X/5C;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5C;->A00()V

    .line 13476
    return-void
.end method

.method public final registerAdCompanionView(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .locals 1

    .line 13477
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A07()Lcom/facebook/ads/redexgen/X/cB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    .line 13479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A07()Lcom/facebook/ads/redexgen/X/cB;

    move-result-object v0

    .line 13480
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cB;->A0E(Lcom/facebook/ads/internal/api/AdCompanionView;)V

    .line 13481
    :cond_0
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 7

    .line 13482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    .line 13484
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1x;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v6

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/InterstitialAd;

    const/16 v4, 0x7d1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 13485
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Lp;->A03(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    .line 13486
    invoke-interface {v6, v5, v0}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 13487
    :cond_0
    return-void
.end method

.method public final setExtraHints(Lcom/facebook/ads/ExtraHints;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getHints()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1x;->A0H(Ljava/lang/String;)V

    .line 13489
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A02:Lcom/facebook/ads/redexgen/X/1x;

    invoke-virtual {p1}, Lcom/facebook/ads/ExtraHints;->getMediationData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1x;->A0I(Ljava/lang/String;)V

    .line 13490
    return-void
.end method

.method public final show()Z
    .locals 5

    const/16 v2, 0x89

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x5f

    const/16 v1, 0x1b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/KI;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2m()V

    .line 13492
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/5D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5D;-><init>()V

    .line 13493
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 13494
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2l(Z)V

    .line 13495
    return v1
.end method

.method public final show(Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z
    .locals 2

    .line 13496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2m()V

    .line 13497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A01:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/F3;->A0C(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;)Z

    move-result v1

    .line 13498
    .local p0, "result":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A2l(Z)V

    .line 13499
    return v1
.end method

.method public final unregisterAdCompanionView()V
    .locals 1

    .line 13500
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A00:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A07()Lcom/facebook/ads/redexgen/X/cB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5B;->A03:Lcom/facebook/ads/redexgen/X/F3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F3;->A07()Lcom/facebook/ads/redexgen/X/cB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cB;->A0D()V

    .line 13502
    :cond_0
    return-void
.end method
