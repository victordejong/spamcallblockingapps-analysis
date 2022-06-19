.class public final Le/a/i/c/a/x;
.super Le/a/i/c/a/e;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/ads/adsrouter/ui/AdType;

.field public final b:Lcom/truecaller/ads/adsrouter/model/Ad;

.field public final c:Le/a/i/c/d/j;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/adsrouter/model/Ad;Le/a/i/c/d/j;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterPixelManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/i/c/a/e;-><init>()V

    iput-object p1, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    iput-object p2, p0, Le/a/i/c/a/x;->c:Le/a/i/c/d/j;

    .line 2
    sget-object p1, Lcom/truecaller/ads/adsrouter/ui/AdType;->BANNER:Lcom/truecaller/ads/adsrouter/ui/AdType;

    iput-object p1, p0, Le/a/i/c/a/x;->a:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/ads/adsrouter/ui/AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->a:Lcom/truecaller/ads/adsrouter/ui/AdType;

    return-object v0
.end method

.method public b()Le/a/i/c/a/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdSource()Le/a/i/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->c:Le/a/i/c/d/j;

    invoke-virtual {p0}, Le/a/i/c/a/x;->b()Le/a/i/c/a/u;

    move-result-object v1

    invoke-virtual {p0}, Le/a/i/c/a/x;->j()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/ads/adslogger/AdsPixel;->VIEW:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v3}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getViewImpression()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Le/m/d/y/n;->U0(Le/a/i/c/d/j;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public d()Le/a/i/c/a/a0;
    .locals 5

    .line 1
    new-instance v0, Le/a/i/c/a/a0;

    iget-object v1, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPublisher()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v2}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartner()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v3}, Lcom/truecaller/ads/adsrouter/model/Ad;->getEcpm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Meta;->getCampaignType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/i/c/a/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->c:Le/a/i/c/d/j;

    invoke-virtual {p0}, Le/a/i/c/a/x;->b()Le/a/i/c/a/u;

    move-result-object v1

    invoke-virtual {p0}, Le/a/i/c/a/x;->j()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/ads/adslogger/AdsPixel;->CLICK:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v3}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getClick()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Le/m/d/y/n;->U0(Le/a/i/c/d/j;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLandingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getExternalLandingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getHtmlContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public recordImpression()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/i/c/a/x;->c:Le/a/i/c/d/j;

    invoke-virtual {p0}, Le/a/i/c/a/x;->b()Le/a/i/c/a/u;

    move-result-object v1

    invoke-virtual {p0}, Le/a/i/c/a/x;->j()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/truecaller/ads/adslogger/AdsPixel;->IMPRESSION:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v3}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Le/a/i/c/a/x;->b:Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getImpression()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Le/m/d/y/n;->U0(Le/a/i/c/d/j;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
