.class public Lcom/appnext/nativeads/NativeAdData;
.super Lcom/appnext/core/AppnextAd;
.source "SourceFile"


# instance fields
.field private selectedVideo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/AppnextAd;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/core/AppnextAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/nativeads/NativeAdData;->selectedVideo:Ljava/lang/String;

    .line 3
    instance-of v0, p1, Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdData;->getSelectedVideo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/nativeads/NativeAdData;->selectedVideo:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAdData;->selectedVideo:Ljava/lang/String;

    return-void
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignGoal()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCptList()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getCptList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevenueType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAdData;->selectedVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getWebview()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/appnext/core/AppnextAd;->getWebview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextAd;->setAppURL(Ljava/lang/String;)V

    return-void
.end method

.method public setImpressionURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/appnext/core/AppnextAd;->setImpressionURL(Ljava/lang/String;)V

    return-void
.end method
