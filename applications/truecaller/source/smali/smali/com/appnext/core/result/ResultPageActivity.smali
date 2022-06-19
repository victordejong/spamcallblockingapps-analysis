.class public Lcom/appnext/core/result/ResultPageActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/result/ResultPageActivity$CustomAd;,
        Lcom/appnext/core/result/ResultPageActivity$a;,
        Lcom/appnext/core/result/ResultPageActivity$b;
    }
.end annotation


# instance fields
.field private aA:Z

.field private ay:Ljava/lang/String;

.field private cA:Ljava/lang/String;

.field private fg:Lcom/appnext/core/AppnextAd;

.field private fh:Ljava/lang/String;

.field private fi:Lcom/appnext/core/result/a;

.field private fj:Lcom/appnext/core/result/c;

.field private j:Lcom/appnext/core/AppnextAd;

.field private placementID:Ljava/lang/String;

.field private userAction:Lcom/appnext/core/q;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/AppnextAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->j:Lcom/appnext/core/AppnextAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/result/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    return-object p0
.end method

.method public static synthetic b(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->j:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method public static synthetic b(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->f(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->getFallbackScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    invoke-virtual {p0}, Lcom/appnext/core/result/a;->getFallbackScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/appnext/core/result/b;

    invoke-direct {p0}, Lcom/appnext/core/result/b;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/core/result/b;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method public static synthetic e(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->fh:Ljava/lang/String;

    return-object p0
.end method

.method private f(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;
    .locals 1

    .line 2
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    invoke-direct {v0, p0, p1}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;-><init>(Lcom/appnext/core/result/ResultPageActivity;Lcom/appnext/core/AppnextAd;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/appnext/core/result/ResultPageActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/appnext/core/result/ResultPageActivity;->aA:Z

    return p0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$a;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$a;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 4
    :catchall_0
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$a;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$a;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    return-object v0
.end method

.method public static synthetic h(Lcom/appnext/core/result/ResultPageActivity;)Lcom/appnext/core/AppnextAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->fg:Lcom/appnext/core/AppnextAd;

    return-object p0
.end method

.method public static synthetic i(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->ay:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/appnext/core/result/ResultPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/result/ResultPageActivity;->cA:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final loadJS(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading js "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:(function() { try { "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " } catch(err){ Appnext.jsError(err.message); }})()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "ResultPageActivity$loadJS"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/appnext/core/result/d;->aX()Lcom/appnext/core/result/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/result/d;->aY()Lcom/appnext/core/result/c;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    .line 4
    invoke-interface {p1}, Lcom/appnext/core/result/c;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->placementID:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fh:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "shouldClose"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appnext/core/result/ResultPageActivity;->aA:Z

    .line 7
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->getSelectedAd()Lcom/appnext/core/AppnextAd;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fg:Lcom/appnext/core/AppnextAd;

    .line 8
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->u()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->cA:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->ay:Ljava/lang/String;

    .line 10
    new-instance p1, Lcom/appnext/core/q;

    new-instance v1, Lcom/appnext/core/result/ResultPageActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/result/ResultPageActivity$1;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    invoke-direct {p1, p0, v1}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    .line 11
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fj:Lcom/appnext/core/result/c;

    invoke-interface {p1}, Lcom/appnext/core/result/c;->y()Lcom/appnext/core/result/a;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 14
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 21
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 22
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 23
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 24
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 25
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$2;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$2;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 26
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/appnext/core/result/ResultPageActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 27
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    invoke-virtual {p1}, Lcom/appnext/core/result/a;->getJSurl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js"

    .line 29
    :goto_0
    invoke-static {p0}, Lcom/appnext/core/webview/AppnextWebView;->t(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/result/ResultPageActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/result/ResultPageActivity$3;-><init>(Lcom/appnext/core/result/ResultPageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    .line 30
    iget-object p1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    .line 31
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->z()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/appnext/core/result/ResultPageActivity;->fi:Lcom/appnext/core/result/a;

    invoke-virtual {v0}, Lcom/appnext/core/result/a;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Lcom/appnext/core/result/ResultPageActivity$b;

    invoke-direct {v0, p0}, Lcom/appnext/core/result/ResultPageActivity$b;-><init>(Lcom/appnext/core/result/ResultPageActivity;)V

    :goto_1
    const-string v1, "Appnext"

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    :catchall_1
    move-exception p1

    const-string v0, "ResultPageActivity$onCreate"

    .line 35
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ResultPageActivity$onDestroy"

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v0, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v1}, Lcom/appnext/core/q;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<html><body><script>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</script></body></html>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v1, p0, Lcom/appnext/core/result/ResultPageActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "ResultPageActivity$loadWebview"

    .line 5
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public parseAd(Ljava/lang/String;)Lcom/appnext/core/h;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    const-class p1, Lcom/appnext/core/AppnextAd;

    invoke-static {p1, v0}, Lcom/appnext/core/k;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->f(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->setAdJSON(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/appnext/core/result/ResultPageActivity;->f(Lcom/appnext/core/AppnextAd;)Lcom/appnext/core/result/ResultPageActivity$CustomAd;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/appnext/core/result/ResultPageActivity$CustomAd;->setStoreRating(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "ResultPageActivity$parseAd"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
