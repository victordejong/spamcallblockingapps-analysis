.class public Le/n/b/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/b/j0;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/n/b/j0;


# direct methods
.method public constructor <init>(Le/n/b/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 2
    iget-object v0, v0, Le/n/b/j0;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onCrash()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 2
    iget-object v0, v0, Le/n/b/j0;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public onFailLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 2
    iget-object v0, v0, Le/n/b/j0;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->stopLoading()V

    .line 4
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 5
    iget-object v0, v0, Le/n/b/j0;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 6
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->HTML_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onFailedToLoad(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onFinishLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 2
    iget-object v0, v0, Le/n/b/j0;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->setPageLoaded()V

    .line 4
    iget-object v0, p0, Le/n/b/j0$a;->a:Le/n/b/j0;

    .line 5
    iget-object v1, v0, Le/n/b/j0;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Le/n/b/j0;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 7
    invoke-interface {v1, v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method
