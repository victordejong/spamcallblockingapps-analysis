.class public Le/i/b/y2;
.super Lcom/criteo/publisher/Criteo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/y2$c;,
        Le/i/b/y2$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/Criteo;-><init>()V

    return-void
.end method


# virtual methods
.method public createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Le/i/b/m2;
    .locals 3

    .line 1
    new-instance v0, Le/i/b/m2;

    .line 2
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v1

    invoke-virtual {v1}, Le/i/b/x2;->p()Le/i/b/f3/c;

    move-result-object v1

    .line 3
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v2

    invoke-direct {v0, p1, p0, v1, v2}, Le/i/b/m2;-><init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Le/i/b/f3/c;Le/i/b/w1/c;)V

    return-object v0
.end method

.method public enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 0

    return-void
.end method

.method public getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V
    .locals 0

    .line 1
    invoke-interface {p3}, Le/i/b/x1;->a()V

    return-void
.end method

.method public getConfig()Le/i/b/u2/x;
    .locals 1

    .line 1
    new-instance v0, Le/i/b/u2/x;

    invoke-direct {v0}, Le/i/b/u2/x;-><init>()V

    return-object v0
.end method

.method public getDeviceInfo()Le/i/b/u2/y;
    .locals 2

    .line 1
    new-instance v0, Le/i/b/y2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/i/b/y2$b;-><init>(Le/i/b/y2$a;)V

    return-object v0
.end method

.method public getInterstitialActivityHelper()Le/i/b/g2/a;
    .locals 1

    .line 1
    new-instance v0, Le/i/b/y2$c;

    invoke-direct {v0}, Le/i/b/y2$c;-><init>()V

    return-object v0
.end method

.method public loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-interface {p3, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method public setMopubConsent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUsPrivacyOptOut(Z)V
    .locals 0

    return-void
.end method

.method public setUserData(Lcom/criteo/publisher/context/UserData;)V
    .locals 0

    return-void
.end method
