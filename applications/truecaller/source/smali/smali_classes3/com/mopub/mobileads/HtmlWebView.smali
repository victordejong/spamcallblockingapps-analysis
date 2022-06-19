.class public Lcom/mopub/mobileads/HtmlWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->init()V

    .line 2
    new-instance v0, Le/n/b/j0;

    invoke-direct {v0, p0, p1, p2}, Le/n/b/j0;-><init>(Lcom/mopub/mobileads/BaseHtmlWebView;Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
