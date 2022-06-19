.class public Lcom/mopub/mraid/MraidController$c;
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
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->g()V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

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
    .locals 0

    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

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
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFailedToLoad()V
    .locals 0

    return-void
.end method

.method public onPageLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    new-instance v1, Le/n/c/d;

    invoke-direct {v1, v0}, Le/n/c/d;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    new-instance p1, Le/n/c/a;

    const-string p2, "Not allowed to resize from an expanded state"

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSetOrientationProperties(ZLe/n/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/mraid/MraidController;->k(ZLe/n/c/e;)V

    return-void
.end method

.method public onUseCustomClose(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->h(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 3
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->j(Z)V

    .line 4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$c;->a:Lcom/mopub/mraid/MraidController;

    .line 5
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 6
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->j(Z)V

    return-void
.end method
