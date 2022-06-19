.class public Lcom/mopub/mobileads/HtmlController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlController$a;
    }
.end annotation


# instance fields
.field public i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/mopub/mobileads/HtmlController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/HtmlController$a;-><init>(Lcom/mopub/mobileads/HtmlController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/HtmlController;->i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    .line 3
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    .line 4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x11

    invoke-direct {p2, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebView;->destroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    move-object v1, v0

    check-cast v1, Lcom/mopub/mobileads/HtmlWebView;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    const-string v3, "/"

    invoke-static {v0, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 3

    .line 1
    new-instance v0, Lcom/mopub/mobileads/HtmlWebView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/HtmlWebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {v0}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Lcom/mopub/mobileads/HtmlController;->i:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/HtmlWebView;->init(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAdContainer()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method

.method public setWebView(Lcom/mopub/mobileads/BaseWebView;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-void
.end method
