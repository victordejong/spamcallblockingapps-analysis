.class public Lcom/amazon/device/ads/DTBAdView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdView$WebBridge;
    }
.end annotation


# static fields
.field public static final AMAZON_AD_INFO:Ljava/lang/String; = "amazon_ad_info"

.field public static final AMAZON_BRIDGE:Ljava/lang/String; = "amzn_bridge"

.field public static final BID_HTML:Ljava/lang/String; = "bid_html_template"

.field public static final BID_IDENTIFIER:Ljava/lang/String; = "bid_identifier"

.field private static final ENV_TEMPLATE:Ljava/lang/String; = "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,impFired:true};"

.field private static final ENV_TEMPLATE_INFO:Ljava/lang/String; = "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};"

.field public static final EVENT_SERVER_PARAMETER:Ljava/lang/String; = "event_server_parameter"

.field public static final EXPECTED_HEIGHT:Ljava/lang/String; = "expected_height"

.field public static final EXPECTED_WIDTH:Ljava/lang/String; = "expected_width"

.field public static final HOSTNAME_IDENTIFIER:Ljava/lang/String; = "hostname_identifier"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MRAID_IDENTIFIER:Ljava/lang/String; = "MRAID_ENV"

.field public static final REQUEST_QUEUE:Ljava/lang/String; = "amazon_request_queue"

.field public static final SMARTBANNER_STATE:Ljava/lang/String; = "smart_banner_state"

.field public static final START_LOAD_TIME:Ljava/lang/String; = "start_load_time"


# instance fields
.field private bidId:Ljava/lang/String;

.field private controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

.field private exposurePercent:I

.field public focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field public globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private hostname:Ljava/lang/String;

.field private ignoreDetachment:Z

.field private isFirstDisplay:Z

.field private isVisible:Z

.field private localOnly:Z

.field public scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private scrollEnabled:Z

.field private startTime:J

.field public supportClient:Lcom/amazon/device/ads/DTBAdViewSupportClient;

.field private timeClicked:J

.field private timePressed:J

.field private webBridge:Lcom/amazon/device/ads/DTBAdView$WebBridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdBannerListener;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 16
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 19
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 20
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 21
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdBannerListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 22
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize DTBAdView class with DTBAdBannerListener"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 29
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 30
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 32
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 33
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 34
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    invoke-direct {p1, p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 36
    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->findControllerByIndex(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->setMasterController(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    check-cast p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    invoke-interface {p2, p1}, Lcom/amazon/device/ads/DTBAdExpandedListener;->onCreateExpandedController(Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;)V

    .line 38
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Fail to initialize DTBAdView class with DTBAdExpandedListener"

    invoke-static {p2, p3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v0, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v0, p3, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    .line 4
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    .line 5
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 7
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->isLocalSourcesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    .line 8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 9
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 10
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->commonInit()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize DTBAdView class with DTBAdInterstitialListener"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->verifyIsVisible()V

    return-void
.end method

.method public static synthetic access$100(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-object p0
.end method

.method private commonInit()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 7
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 10
    new-instance v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/DTBAdViewSupportClient;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->supportClient:Lcom/amazon/device/ads/DTBAdViewSupportClient;

    .line 11
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdView;->setScrollEnabled(Z)V

    .line 13
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$WebBridge;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$WebBridge;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->webBridge:Lcom/amazon/device/ads/DTBAdView$WebBridge;

    const-string v1, "amzn_bridge"

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->init()V

    .line 16
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$1;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 17
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$2;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 19
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 20
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$3;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 21
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 22
    new-instance v0, Le/c/b/a/d0;

    invoke-direct {v0, p0}, Le/c/b/a/d0;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private computeExposureInScrollView(Landroid/widget/ScrollView;Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x1020002

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v2, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v3, v5, v7, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v1, [I

    .line 5
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    mul-int/2addr v5, v2

    int-to-float v2, v5

    .line 7
    new-instance v5, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    aget v9, v0, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v9

    add-int/2addr v9, v0

    invoke-direct {v5, v7, v8, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    new-array v0, v1, [I

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    aget v9, v0, v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {v1, v7, v8, v10, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 12
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 13
    :goto_0
    iget p1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    div-float/2addr p1, v2

    float-to-int v4, p1

    .line 14
    :cond_3
    iget p1, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-ne v4, p1, :cond_4

    if-eqz p2, :cond_5

    .line 15
    :cond_4
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 16
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    .line 17
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setCurrentPositionProperty()V

    :cond_5
    return-void
.end method

.method private getScrollViewParent()Landroid/widget/ScrollView;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->localOnly:Z

    const-string v1, "</script>"

    const-string v2, "<script>"

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->getInstance()Lcom/amazon/device/ads/WebResourceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebResourceService;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to read local file"

    invoke-static {v0, v3}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 14
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;)V

    .line 15
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private markAsInvisible()V
    .locals 0

    return-void
.end method

.method private setIsVisible(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 3
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private verifyIsVisible()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_2
    return-void

    :cond_3
    const v2, 0x1020002

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 8
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 11
    :cond_4
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 13
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v1

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v3, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v3, v3, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v4, v5, v7, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v2, [I

    .line 14
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 15
    new-instance v3, Landroid/graphics/Rect;

    aget v5, v0, v1

    aget v7, v0, v6

    aget v8, v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    add-int/2addr v8, v0

    invoke-direct {v3, v5, v7, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 17
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_e

    .line 18
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 20
    :cond_7
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    const-string v0, "SET MRAID Visible false because of root"

    .line 21
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_8
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->getScrollViewParent()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_c

    new-array v2, v2, [I

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 24
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v1

    aget v7, v2, v6

    aget v8, v2, v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v4, v5, v7, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 28
    :cond_9
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    const-string v0, "SET MRAID Visible false because of scroll "

    .line 29
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_a
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez v0, :cond_e

    .line 31
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 33
    :cond_b
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    const-string v0, "SET MRAID Visible true because of scroll "

    .line 34
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_c
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-nez v1, :cond_d

    .line 36
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 37
    :cond_d
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    .line 38
    :cond_e
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->computeExposure()V

    :cond_f
    return-void

    .line 40
    :cond_10
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    if-eqz v0, :cond_12

    .line 41
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onViewabilityChanged(Z)V

    .line 43
    :cond_11
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->setIsVisible(Z)V

    :cond_12
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2
    invoke-static {}, Le/d/c/a/a;->c()J

    move-result-wide v0

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    const-wide/16 v2, 0x0

    if-eq p1, p2, :cond_0

    .line 3
    iput-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p0, Lcom/amazon/device/ads/DTBAdView;->timeClicked:J

    sub-long p1, v0, p1

    const-wide/16 v4, 0x3e8

    cmp-long p1, p1, v4

    if-gez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-wide p1, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    sub-long p1, v0, p1

    const-wide/16 v4, 0x1f4

    cmp-long p1, p1, v4

    if-gez p1, :cond_2

    .line 6
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->timeClicked:J

    .line 7
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdClicked()V

    .line 8
    :cond_2
    iput-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    goto :goto_0

    .line 9
    :cond_3
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->timePressed:J

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public cleanup()V
    .locals 2

    const-string v0, "amzn_bridge"

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->adView:Lcom/amazon/device/ads/DTBAdView;

    .line 3
    iput-object v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDController;->customButtonListener:Lcom/amazon/device/ads/DTBMRAIDCloseButtonListener;

    .line 4
    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-void
.end method

.method public computeExposure()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->computeExposure(Z)V

    return-void
.end method

.method public computeExposure(Z)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->getScrollViewParent()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInScrollView(Landroid/widget/ScrollView;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInRootView(Z)V

    .line 8
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onPositionChanged(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public computeExposureInRootView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->computeExposureInRootView(Z)V

    return-void
.end method

.method public computeExposureInRootView(Z)V
    .locals 10

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/DTBAdUtil;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x1020002

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v2, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {v3, v5, v7, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v1, [I

    .line 7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v5, v0, v6

    aget v7, v0, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    add-int/2addr v8, v7

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-direct {v1, v2, v5, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v0, v2

    .line 10
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v2

    int-to-float v2, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    float-to-double v5, v2

    mul-double/2addr v5, v3

    float-to-double v2, v0

    div-double/2addr v5, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v2

    double-to-int v0, v5

    .line 12
    iget v2, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_6

    .line 13
    :cond_3
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 14
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 15
    :cond_4
    iget v0, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 16
    :cond_5
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->exposurePercent:I

    .line 17
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 18
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v4, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->fireExposureChange(ILandroid/graphics/Rect;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public fetchAd(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public fetchAd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "bid_html_template"

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 19
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    instance-of v1, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->bannerListener:Lcom/amazon/device/ads/DTBAdBannerListener;

    const-string v1, "expected_width"

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "expected_height"

    .line 22
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 23
    instance-of v3, v0, Lcom/amazon/device/ads/DTBExpectedSizeProvider;

    if-eqz v3, :cond_1

    .line 24
    check-cast v0, Lcom/amazon/device/ads/DTBExpectedSizeProvider;

    .line 25
    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBExpectedSizeProvider;->setExpectedWidth(I)V

    .line 26
    invoke-interface {v0, v2}, Lcom/amazon/device/ads/DTBExpectedSizeProvider;->setExpectedHeight(I)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "bid_identifier"

    .line 27
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    const-string v0, "hostname_identifier"

    .line 28
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->hostname:Ljava/lang/String;

    .line 29
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->startTime:J

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!DOCTYPE html><html><head>"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<script>"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/DTBAdView;->getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</script>"

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "aps-mraid"

    .line 36
    invoke-direct {p0, p2, v0}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "dtb-m"

    .line 37
    invoke-direct {p0, p2, v0}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "</head>"

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<body style=\'margin:0;padding:0;\'>"

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "https://c.amazon-adsystem.com/"

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v1, p0

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 44
    :goto_1
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute fetchAd method with bundle"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public fetchAd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    :cond_2
    :goto_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    :cond_3
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    sget-object p2, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute fetchAd method with map bundle"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public fetchAd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fetchAdWithLocation(Ljava/lang/String;)V
    .locals 9

    const-string v0, "</script>"

    const-string v1, "<script>"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/DTBAdView;->getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "aps-mraid"

    .line 6
    invoke-direct {p0, v3, v2}, Lcom/amazon/device/ads/DTBAdView;->loadLocalFile(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.location=\""

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "https://c.amazon-adsystem.com/"

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute fetchAdWithLocation method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v0, v2, v1, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute finalize method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getBidId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->bidId:Ljava/lang/String;

    return-object v0
.end method

.method public getController()Lcom/amazon/device/ads/DTBAdMRAIDController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-object v0
.end method

.method public getEnvironment(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string v2, "amazon_ad_info"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->getIdfa()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/amazon/device/ads/DtbCommonUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "unknown"

    .line 9
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->getInstance()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/DtbSharedPreferences;->getOptOut()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v1

    :cond_2
    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const-string v10, "9.2.1"

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v13, "3.0"

    const/4 v14, 0x0

    if-nez v0, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v13, v0, v14

    .line 10
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->getSDKMRAIDVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v12

    aput-object v10, v0, v11

    aput-object v2, v0, v9

    aput-object v3, v0, v8

    aput-object v4, v0, v7

    aput-object v1, v0, v6

    const-string v1, "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,impFired:true};"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v14

    .line 11
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->getSDKMRAIDVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v12

    aput-object v10, v15, v11

    aput-object v2, v15, v9

    aput-object v3, v15, v8

    aput-object v4, v15, v7

    aput-object v1, v15, v6

    aput-object v0, v15, v5

    const-string v0, "window.MRAID_ENV={version:\'%s\',sdk:\'%s\',sdkVersion:\'%s\',appId:\'%s\',ifa:\'%s\',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};"

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->startTime:J

    return-wide v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->isVisible:Z

    return v0
.end method

.method public onAdRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdRemoved()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->onAdOpened(Lcom/amazon/device/ads/DTBAdView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute onAttachedToWindow method in DTBAdView class"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollChangeListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->focusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/amazon/device/ads/DTBAdView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute onDetachedFromWindow method in DTBAdView class"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->isTestMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    const-string v0, "AD displayed"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/DTBTimeTrace;->addPhase(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->getInstance()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBTimeTrace;->logTrace()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->controller:Lcom/amazon/device/ads/DTBAdMRAIDController;

    instance-of v0, p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    .line 8
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBAdViewDisplayListener;->onInitialDisplay()V

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->isFirstDisplay:Z

    :cond_2
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p4, p3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/webkit/WebView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setIgnoreDetachment()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->ignoreDetachment:Z

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->scrollEnabled:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method
