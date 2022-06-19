.class public Lcom/mopub/mobileads/MoPubInline;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "MoPubInline"


# instance fields
.field public d:Landroid/content/Context;

.field public e:Lcom/mopub/mobileads/AdData;

.field public f:Lcom/mopub/mobileads/MoPubWebViewController;

.field public g:Lcom/mopub/mraid/WebViewDebugListener;

.field public h:Landroid/os/Handler;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Lcom/mopub/common/LifecycleListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->loadJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubInline;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->d:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->h:Landroid/os/Handler;

    .line 7
    new-instance v0, Le/n/b/y;

    invoke-direct {v0, p0}, Le/n/b/y;-><init>(Lcom/mopub/mobileads/MoPubInline;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->i:Ljava/lang/Runnable;

    .line 8
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "html-response-body"

    .line 10
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-nez v0, :cond_0

    .line 11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v3, p2, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 12
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    aput-object v0, p2, v5

    .line 13
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mraid"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->d:Landroid/content/Context;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    .line 17
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v1

    .line 18
    invoke-static {p1, v2, v0, v1}, Lcom/mopub/mobileads/factories/MraidControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)Lcom/mopub/mraid/MraidController;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "html"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-static {p1, v2}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->g:Lcom/mopub/mraid/WebViewDebugListener;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/MoPubWebViewController;->setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V

    .line 22
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    new-instance v0, Lcom/mopub/mobileads/MoPubInline$a;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubInline$a;-><init>(Lcom/mopub/mobileads/MoPubInline;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 23
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->e:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object p2

    new-instance v1, Lcom/mopub/mobileads/MoPubInline$b;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubInline$b;-><init>(Lcom/mopub/mobileads/MoPubInline;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    return-void

    .line 24
    :cond_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v3, p2, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 25
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    aput-object v0, p2, v5

    .line 26
    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onInvalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInline;->i:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->i:Ljava/lang/Runnable;

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->h:Landroid/os/Handler;

    .line 5
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 7
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    .line 8
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInline;->g:Lcom/mopub/mraid/WebViewDebugListener;

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInline;->f:Lcom/mopub/mobileads/MoPubWebViewController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V

    :cond_0
    return-void
.end method
