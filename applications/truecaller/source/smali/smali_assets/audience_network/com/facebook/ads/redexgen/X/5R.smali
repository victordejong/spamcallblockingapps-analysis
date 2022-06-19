.class public final Lcom/facebook/ads/redexgen/X/5R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/AdExperienceType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/5Q;

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;)V
    .locals 0

    .line 14016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14017
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/redexgen/X/5Q;

    .line 14018
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 14019
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/redexgen/X/5Q;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5R;->A02:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/5R;->A03:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A04:Z

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A04(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V

    .line 14020
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 14021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5R;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    .locals 0

    .line 14022
    return-object p0
.end method

.method public final withAdCompanionView(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14023
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A04:Z

    .line 14024
    return-object p0
.end method

.method public final withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A00:Lcom/facebook/ads/AdExperienceType;

    .line 14026
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 14027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->A03(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 14028
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 14029
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5R;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14030
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A02:Ljava/lang/String;

    .line 14031
    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 0

    .line 14032
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5R;->A03:Z

    .line 14033
    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .locals 1

    .line 14034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5R;->A01:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5Q;->A02(Lcom/facebook/ads/RewardData;)V

    .line 14035
    return-object p0
.end method
