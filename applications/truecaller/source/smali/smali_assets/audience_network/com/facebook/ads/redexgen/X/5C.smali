.class public final Lcom/facebook/ads/redexgen/X/5C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
.implements Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5B;

.field public A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5B;)V
    .locals 0

    .line 13503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13504
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    .line 13505
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 4

    .line 13506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A02:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 13507
    sget-object v0, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A02:Ljava/util/EnumSet;

    .line 13508
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5C;->A02:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5B;->A05(Ljava/util/EnumSet;Ljava/lang/String;Z)V

    .line 13509
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 13510
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5C;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    .locals 0

    .line 13511
    return-object p0
.end method

.method public final withAdCompanionView(Z)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 0

    .line 13512
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A03:Z

    .line 13513
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 13514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A02(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 13515
    instance-of v0, p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz v0, :cond_0

    .line 13516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    check-cast p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    .line 13517
    :cond_0
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 13518
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5C;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 0

    .line 13519
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A01:Ljava/lang/String;

    .line 13520
    return-object p0
.end method

.method public final withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)",
            "Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;"
        }
    .end annotation

    .line 13521
    .local p1, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5C;->A02:Ljava/util/EnumSet;

    .line 13522
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 13523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A03(Lcom/facebook/ads/RewardData;)V

    .line 13524
    return-object p0
.end method

.method public final withRewardedAdListener(Lcom/facebook/ads/RewardedAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .locals 1

    .line 13525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5C;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5B;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    .line 13526
    return-object p0
.end method
