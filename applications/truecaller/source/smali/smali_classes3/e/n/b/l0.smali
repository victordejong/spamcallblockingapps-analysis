.class public final synthetic Le/n/b/l0;
.super Ljava/lang/Object;
.source "MoPubAd.kt"


# direct methods
.method public static $default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static $default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getKeywords()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, v0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    return-object v1
.end method

.method public static $default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getLocation()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static $default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static $default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->resolveAdSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->t:Landroid/graphics/Point;

    .line 4
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    :cond_0
    return-void
.end method

.method public static $default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic $default$onAdCollapsed(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdComplete(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/common/MoPubReward;)V
    .locals 0

    invoke-static {p0, p1}, Le/n/b/c0;->$default$onAdComplete(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public static synthetic $default$onAdDismissed(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Le/n/b/c0;->$default$onAdDismissed(Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdExpanded(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static synthetic $default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public static $default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdViewController;->h(Z)V

    :cond_0
    return-void
.end method

.method public static $default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->f()V

    :cond_0
    return-void
.end method

.method public static $default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V
    .locals 4
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/mopub/mobileads/MoPubView;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    new-instance v3, Le/n/b/g0;

    invoke-direct {v3, v0, v1, p1}, Le/n/b/g0;-><init>(Lcom/mopub/mobileads/AdViewController;Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static $default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setAdUnitId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static $default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V
    .locals 2
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localExtras"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static $default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcom/mopub/mobileads/MoPubAd;

    .line 1
    invoke-interface {p0}, Lcom/mopub/mobileads/MoPubAd;->getAdViewController()Lcom/mopub/mobileads/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setUserDataKeywords(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
