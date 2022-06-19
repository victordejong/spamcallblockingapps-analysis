.class public Lcom/appnext/core/AppnextAd;
.super Lcom/appnext/core/h;
.source "SourceFile"


# instance fields
.field private androidPackage:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private bId:Ljava/lang/String;

.field private buttonText:Ljava/lang/String;

.field private campaignGoal:Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private campaignType:Ljava/lang/String;

.field private categories:Ljava/lang/String;

.field private cb:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private cpt_list:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private ecpm:Ljava/lang/String;

.field private gdpr:Ljava/lang/String;

.field private idx:Ljava/lang/String;

.field private market_url:Ljava/lang/String;

.field private pbaBId:Ljava/lang/String;

.field private pbaZId:Ljava/lang/String;

.field private pixelImp:Ljava/lang/String;

.field private revenueRate:Ljava/lang/String;

.field private revenueType:Ljava/lang/String;

.field private specificCategories:Ljava/lang/String;

.field private storeDownloads:Ljava/lang/String;

.field private storeRating:Ljava/lang/String;

.field private supportedVersion:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private urlApp:Ljava/lang/String;

.field private urlImg:Ljava/lang/String;

.field private urlImgWide:Ljava/lang/String;

.field private urlVideo:Ljava/lang/String;

.field private urlVideo30Sec:Ljava/lang/String;

.field private urlVideo30SecHigh:Ljava/lang/String;

.field private urlVideoHigh:Ljava/lang/String;

.field private webview:Ljava/lang/String;

.field private zId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appnext/core/h;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    const-string v0, "0"

    .line 34
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appnext/core/AppnextAd;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/appnext/core/h;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    const-string v0, "0"

    .line 69
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/appnext/core/AppnextAd;->market_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/appnext/core/AppnextAd;->market_url:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/appnext/core/h;->getAdID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/h;->setAdID(I)V

    .line 107
    invoke-virtual {p1}, Lcom/appnext/core/h;->getSession()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/h;->setSession(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/appnext/core/h;->getPlacementID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/core/h;->setPlacementID(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/appnext/core/h;->getAdJSON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appnext/core/h;->setAdJSON(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    return-object v0
.end method

.method public getBpub()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignGoal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getCb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCptList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appnext/core/AppnextAdCreativeType;->STATIC:Lcom/appnext/core/AppnextAdCreativeType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/appnext/core/AppnextAdCreativeType;->VIDEO:Lcom/appnext/core/AppnextAdCreativeType;

    return-object v0
.end method

.method public getECPM()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getEcpm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    return-object v0
.end method

.method public getEpub()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->market_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPPR()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getECPM()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRevenueRate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenueType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreDownloads()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl30Sec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrlHigh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrlHigh30Sec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    return-object v0
.end method

.method public getWebview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    return-object v0
.end method

.method public getWideImageURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    return-object v0
.end method

.method public isGdpr()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAdDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->desc:Ljava/lang/String;

    return-void
.end method

.method public setAdPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    return-void
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->title:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->appSize:Ljava/lang/String;

    return-void
.end method

.method public setAppURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlApp:Ljava/lang/String;

    return-void
.end method

.method public setBannerID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->bId:Ljava/lang/String;

    return-void
.end method

.method public setBpub(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->pbaBId:Ljava/lang/String;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setCampaignGoal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->campaignGoal:Ljava/lang/String;

    return-void
.end method

.method public setCampaignID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->campaignId:Ljava/lang/String;

    return-void
.end method

.method public setCampaignType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->campaignType:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->categories:Ljava/lang/String;

    return-void
.end method

.method public setCb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->cb:Ljava/lang/String;

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->country:Ljava/lang/String;

    return-void
.end method

.method public setCptList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->cpt_list:Ljava/lang/String;

    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->ecpm:Ljava/lang/String;

    return-void
.end method

.method public setEpub(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->pbaZId:Ljava/lang/String;

    return-void
.end method

.method public setGdpr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->gdpr:Ljava/lang/String;

    return-void
.end method

.method public setIdx(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->idx:Ljava/lang/String;

    return-void
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlImg:Ljava/lang/String;

    return-void
.end method

.method public setImpressionURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->pixelImp:Ljava/lang/String;

    return-void
.end method

.method public setMarketUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->market_url:Ljava/lang/String;

    return-void
.end method

.method public setRevenueRate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->revenueRate:Ljava/lang/String;

    return-void
.end method

.method public setRevenueType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->revenueType:Ljava/lang/String;

    return-void
.end method

.method public setSpecificCategories(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->specificCategories:Ljava/lang/String;

    return-void
.end method

.method public setStoreDownloads(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->storeDownloads:Ljava/lang/String;

    return-void
.end method

.method public setStoreRating(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->storeRating:Ljava/lang/String;

    return-void
.end method

.method public setSupportedVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->supportedVersion:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlVideo:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl30Sec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlVideo30Sec:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrlHigh(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlVideoHigh:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrlHigh30Sec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlVideo30SecHigh:Ljava/lang/String;

    return-void
.end method

.method public setWebview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->webview:Ljava/lang/String;

    return-void
.end method

.method public setWideImageURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->urlImgWide:Ljava/lang/String;

    return-void
.end method

.method public setZoneID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/AppnextAd;->zId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppnextAd{androidPackage=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appnext/core/AppnextAd;->androidPackage:Ljava/lang/String;

    const/16 v2, 0x27

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
