.class public Lcom/mopub/mraid/MraidController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->g()V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/mopub/mraid/WebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onExpand(Ljava/net/URI;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v1, :cond_c

    .line 3
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v1, v2, :cond_1

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v1, v3, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->e()V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->createWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v3

    check-cast v3, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object v3, v0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 7
    invoke-virtual {v3}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 8
    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    iget-object v4, v0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v3, v4}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 9
    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 10
    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v4, v0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    const/4 v5, 0x4

    if-ne v4, v2, :cond_8

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_5

    .line 14
    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 15
    :cond_5
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_6

    .line 19
    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    .line 20
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->f()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    .line 22
    :cond_7
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    .line 23
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 24
    :cond_8
    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v4, v2, :cond_b

    if-eqz v1, :cond_b

    .line 25
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 27
    :cond_9
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 28
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_a

    .line 30
    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    .line 31
    :cond_a
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 32
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_b
    :goto_2
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/mopub/mraid/MraidController;->h(Z)V

    .line 35
    sget-object p1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/ViewState;)V

    :goto_3
    return-void

    .line 36
    :cond_c
    new-instance p1, Le/n/c/a;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/WebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onOpen(Ljava/net/URI;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFailedToLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onPageLoaded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 3
    invoke-virtual {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b()Z

    move-result v2

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 4
    invoke-virtual {v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c()Z

    move-result v3

    iget-object v4, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    .line 5
    invoke-static {v4}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v5

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->l()Z

    move-result v6

    const/4 v4, 0x0

    .line 7
    invoke-virtual/range {v1 .. v6}, Lcom/mopub/mraid/MraidBridge;->h(ZZZZZ)V

    .line 8
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->g(Lcom/mopub/mraid/PlacementType;)V

    .line 9
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 10
    iget-object v2, v1, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->isMraidViewable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->j(Z)V

    .line 13
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Le/n/c/f;)V

    .line 14
    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/ViewState;)V

    .line 15
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    const-string v1, "mraidbridge.notifyReadyEvent();"

    .line 16
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 18
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v1, :cond_1

    .line 19
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    .line 20
    invoke-interface {v1, v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p0

    .line 1
    iget-object v6, v5, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v7, v6, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v7, :cond_c

    .line 3
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v8, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v7, v8, :cond_b

    sget-object v8, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v7, v8, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    sget-object v8, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v7, v8, :cond_a

    .line 5
    iget-object v7, v6, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v8, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-eq v7, v8, :cond_9

    int-to-float v7, v0

    .line 6
    iget-object v8, v6, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v7

    int-to-float v8, v1

    .line 7
    iget-object v9, v6, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    int-to-float v9, v2

    .line 8
    iget-object v10, v6, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    int-to-float v10, v3

    .line 9
    iget-object v11, v6, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v10

    .line 10
    iget-object v11, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 11
    iget-object v11, v11, Le/n/c/f;->h:Landroid/graphics/Rect;

    .line 12
    iget v12, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    .line 13
    iget v9, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    .line 14
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v7, v12

    add-int v11, v9, v8

    invoke-direct {v10, v12, v9, v7, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v7, ")"

    const-string v9, ") and offset ("

    const-string v11, "resizeProperties specified a size ("

    const-string v12, ", "

    if-nez p6, :cond_2

    .line 15
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 16
    iget-object v13, v13, Le/n/c/f;->d:Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-gt v14, v15, :cond_1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-gt v14, v15, :cond_1

    .line 18
    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v5, v5, v16

    .line 19
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 20
    iget v14, v13, Landroid/graphics/Rect;->top:I

    iget v15, v10, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v13, v13, v16

    .line 21
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 22
    invoke-virtual {v10, v5, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance v4, Le/n/c/a;

    invoke-static {v11, v0, v12, v1, v9}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 24
    iget-object v1, v1, Le/n/c/f;->e:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 26
    iget-object v1, v1, Le/n/c/f;->e:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v4

    .line 28
    :cond_2
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v4, v10, v5}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 30
    iget-object v13, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 31
    iget-object v13, v13, Le/n/c/f;->d:Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v13, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 33
    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v4}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 37
    iget-object v2, v2, Le/n/c/f;->d:Landroid/graphics/Rect;

    .line 38
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 39
    iget v1, v10, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_5

    .line 41
    iget-object v1, v6, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_3

    .line 42
    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    .line 43
    :cond_3
    iget-object v1, v6, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v2, v6, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    iget-object v1, v6, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v2, v6, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    .line 47
    invoke-virtual {v6}, Lcom/mopub/mraid/MraidController;->f()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, v6, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    .line 48
    :cond_4
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    .line 49
    iget-object v2, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, v6, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_6

    .line 51
    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    goto :goto_1

    .line 52
    :cond_5
    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_6

    .line 53
    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_6
    :goto_1
    iget-object v0, v6, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, v4}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 55
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {v6, v0}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/ViewState;)V

    goto :goto_2

    .line 56
    :cond_7
    new-instance v1, Le/n/c/a;

    invoke-static {v11, v0, v12, v8, v9}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_8
    new-instance v4, Le/n/c/a;

    invoke-static {v11, v0, v12, v1, v9}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 58
    iget-object v1, v1, Le/n/c/f;->e:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 60
    iget-object v1, v1, Le/n/c/f;->e:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_9
    new-instance v0, Le/n/c/a;

    const-string v1, "Not allowed to resize from an interstitial ad"

    invoke-direct {v0, v1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_a
    new-instance v0, Le/n/c/a;

    const-string v1, "Not allowed to resize from an already expanded ad"

    invoke-direct {v0, v1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    return-void

    .line 64
    :cond_c
    new-instance v0, Le/n/c/a;

    const-string v1, "Unable to resize after the WebView is destroyed"

    invoke-direct {v0, v1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSetOrientationProperties(ZLe/n/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->k(ZLe/n/c/e;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->h(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Lcom/mopub/mraid/MraidController;

    .line 5
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 6
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->j(Z)V

    :cond_0
    return-void
.end method
