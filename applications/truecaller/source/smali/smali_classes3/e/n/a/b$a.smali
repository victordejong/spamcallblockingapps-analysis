.class public Le/n/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/n/a/b;


# direct methods
.method public constructor <init>(Le/n/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/b$a;->a:Le/n/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Le/n/a/b$a;->a:Le/n/a/b;

    .line 3
    iget-object p2, p2, Le/n/a/b;->a:Lcom/mopub/common/MoPubBrowser;

    .line 4
    invoke-virtual {p2}, Lcom/mopub/common/MoPubBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/n/a/b$a;->a:Le/n/a/b;

    .line 6
    iget-object p1, p1, Le/n/a/b;->a:Lcom/mopub/common/MoPubBrowser;

    .line 7
    invoke-virtual {p1}, Lcom/mopub/common/MoPubBrowser;->finish()V

    :goto_0
    return-void
.end method
