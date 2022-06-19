.class public Lcom/mopub/mraid/MraidBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView;,
        Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/mopub/mraid/PlacementType;

.field public b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field public c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field public d:Lcom/mopub/mobileads/ViewGestureDetector;

.field public e:Z

.field public f:Z

.field public final g:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/PlacementType;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/mopub/mraid/MraidBridge$d;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$d;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->g:Landroid/webkit/WebViewClient;

    .line 4
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/PlacementType;

    .line 5
    iput-boolean p2, p0, Lcom/mopub/mraid/MraidBridge;->f:Z

    return-void
.end method

.method public static k(Ljava/util/Map;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    const-string v0, "shouldUseCustomClose"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/mopub/mraid/MraidBridge;->l(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    and-int/2addr p0, p1

    return p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    const-string v0, "true"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "false"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    new-instance v0, Le/n/c/a;

    const-string v1, "Invalid boolean parameter: "

    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 6
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 9
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$a;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$a;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    new-instance p1, Lcom/mopub/mobileads/ViewGestureDetector;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->d:Lcom/mopub/mobileads/ViewGestureDetector;

    .line 12
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$b;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$b;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$c;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$c;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V

    return-void
.end method

.method public final b(III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return p1

    .line 1
    :cond_0
    new-instance p2, Le/n/c/a;

    const-string p3, "Integer parameter out of range: "

    invoke-static {p3, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :cond_0
    return-void
.end method

.method public final d(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 1

    const-string v0, "window.mraidbridge.notifyErrorEvent("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/mopub/mraid/MraidJavascriptCommand;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-static {v3, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-static {v3, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lcom/mopub/mraid/PlacementType;)V
    .locals 2

    const-string v0, "mraidbridge.setPlacementType("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public h(ZZZZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/mopub/mraid/ViewState;)V
    .locals 1

    const-string v0, "mraidbridge.setState("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/mopub/mraid/ViewState;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    new-instance v0, Le/n/c/a;

    const-string v1, "Invalid numeric parameter: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Le/n/c/a;

    const-string v1, "Invalid URL parameter: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance p1, Le/n/c/a;

    const-string v0, "Parameter cannot be null"

    invoke-direct {p1, v0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyScreenMetrics(Le/n/c/f;)V
    .locals 3

    const-string v0, "mraidbridge.setScreenSize("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p1, Le/n/c/f;->c:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidBridge;->q(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p1, Le/n/c/f;->e:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidBridge;->q(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p1, Le/n/c/f;->g:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidBridge;->p(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p1, Le/n/c/f;->i:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidBridge;->p(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p1, p1, Le/n/c/f;->g:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->q(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public o(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
    .locals 10
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mraid/MraidJavascriptCommand;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidJavascriptCommand;->a(Lcom/mopub/mraid/PlacementType;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->d:Lcom/mopub/mobileads/ViewGestureDetector;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/ViewGestureDetector;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Le/n/c/a;

    const-string p2, "Cannot execute this command unless the user clicks"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v0, :cond_11

    .line 6
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_10

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "url"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 8
    :pswitch_0
    new-instance p1, Le/n/c/a;

    const-string p2, "Unspecified MRAID Javascript command"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_1
    new-instance p1, Le/n/c/a;

    const-string p2, "Unsupported MRAID Javascript command"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const-string p1, "allowOrientationChange"

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->l(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "forceOrientation"

    .line 11
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "portrait"

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object p2, Le/n/c/e;->PORTRAIT:Le/n/c/e;

    goto :goto_2

    :cond_3
    const-string v0, "landscape"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object p2, Le/n/c/e;->LANDSCAPE:Le/n/c/e;

    goto :goto_2

    :cond_4
    const-string v0, "none"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object p2, Le/n/c/e;->NONE:Le/n/c/e;

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onSetOrientationProperties(ZLe/n/c/e;)V

    goto/16 :goto_8

    .line 19
    :cond_5
    new-instance p1, Le/n/c/a;

    const-string v0, "Invalid orientation: "

    invoke-static {v0, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const-string p1, "width"

    .line 20
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->m(Ljava/lang/String;)I

    move-result v4

    const p1, 0x186a0

    invoke-virtual {p0, v4, v2, p1}, Lcom/mopub/mraid/MraidBridge;->b(III)I

    const-string v0, "height"

    .line 21
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->m(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5, v2, p1}, Lcom/mopub/mraid/MraidBridge;->b(III)I

    const-string v0, "offsetX"

    .line 22
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->m(Ljava/lang/String;)I

    move-result v6

    const v0, -0x186a0

    invoke-virtual {p0, v6, v0, p1}, Lcom/mopub/mraid/MraidBridge;->b(III)I

    const-string v2, "offsetY"

    .line 23
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mopub/mraid/MraidBridge;->m(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7, v0, p1}, Lcom/mopub/mraid/MraidBridge;->b(III)I

    const-string p1, "customClosePosition"

    .line 24
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "top-left"

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_7
    const-string v2, "top-right"

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_3
    move-object v8, v0

    goto :goto_5

    :cond_8
    const-string v0, "center"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_9
    const-string v0, "bottom-left"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_a
    const-string v0, "bottom-right"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_b
    const-string v0, "top-center"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    goto :goto_4

    :cond_c
    const-string v0, "bottom-center"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    :goto_4
    move-object v8, p1

    :goto_5
    const-string p1, "allowOffscreen"

    .line 39
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_d

    goto :goto_6

    .line 40
    :cond_d
    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->l(Ljava/lang/String;)Z

    move-result v1

    :goto_6
    move v9, v1

    .line 41
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface/range {v3 .. v9}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    .line 42
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean p2, p0, Lcom/mopub/mraid/MraidBridge;->f:Z

    invoke-interface {p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto :goto_8

    .line 43
    :cond_e
    new-instance p2, Le/n/c/a;

    const-string v0, "Invalid close position: "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p2

    .line 44
    :pswitch_4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->n(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p2, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onOpen(Ljava/net/URI;)V

    goto :goto_8

    .line 46
    :pswitch_5
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->f:Z

    invoke-static {p2, v0}, Lcom/mopub/mraid/MraidBridge;->k(Ljava/util/Map;Z)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto :goto_8

    .line 47
    :pswitch_6
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_f

    goto :goto_7

    .line 48
    :cond_f
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->n(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 49
    :goto_7
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->f:Z

    invoke-static {p2, v1}, Lcom/mopub/mraid/MraidBridge;->k(Ljava/util/Map;Z)Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onExpand(Ljava/net/URI;Z)V

    goto :goto_8

    .line 50
    :pswitch_7
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onClose()V

    :goto_8
    return-void

    .line 51
    :cond_10
    new-instance p1, Le/n/c/a;

    const-string p2, "The current WebView is being destroyed"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_11
    new-instance p1, Le/n/c/a;

    const-string p2, "Invalid state to execute this command"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setContentHtml(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MRAID bridge called setContentHtml before WebView was attached"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->e:Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    const-string v3, "/"

    invoke-static {v1, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MRAID bridge called setContentHtml while WebView was not attached"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->e:Z

    .line 4
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
