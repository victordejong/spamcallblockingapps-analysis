.class public Le/n/b/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


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
    iput-object p1, p0, Le/n/b/j0$b;->a:Le/n/b/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/n/b/j0$b;->a:Le/n/b/j0;

    .line 2
    iget-object p1, p1, Le/n/b/j0;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 3
    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/n/b/j0$b;->a:Le/n/b/j0;

    .line 5
    iget-object p1, p1, Le/n/b/j0;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    .line 7
    :cond_0
    iget-object p1, p0, Le/n/b/j0$b;->a:Le/n/b/j0;

    .line 8
    iget-object p1, p1, Le/n/b/j0;->e:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 9
    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->onResetUserClick()V

    :cond_1
    return-void
.end method
