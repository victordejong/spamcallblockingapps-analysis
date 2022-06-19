.class public Lcom/mopub/mraid/MraidController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$e;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    }
.end annotation


# instance fields
.field public final i:Lcom/mopub/mraid/PlacementType;

.field public final j:Lcom/mopub/common/CloseableLayout;

.field public k:Landroid/view/ViewGroup;

.field public final l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

.field public final m:Le/n/c/f;

.field public n:Lcom/mopub/mraid/ViewState;

.field public o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field public p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field public final q:Lcom/mopub/mraid/MraidBridge;

.field public final r:Lcom/mopub/mraid/MraidBridge;

.field public s:Lcom/mopub/mraid/MraidController$e;

.field public t:Ljava/lang/Integer;

.field public u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field public v:Z

.field public w:Le/n/c/e;

.field public final x:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field public final y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field public final z:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v0, p3, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance v1, Lcom/mopub/mraid/MraidBridge;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v1, v2, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance p4, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-direct {p4}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    .line 4
    new-instance p2, Lcom/mopub/mraid/MraidController$e;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$e;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$e;

    .line 5
    new-instance p2, Lcom/mopub/mraid/MraidController$a;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$a;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/mopub/mraid/MraidController;->v:Z

    .line 7
    sget-object p2, Le/n/c/e;->NONE:Le/n/c/e;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->w:Le/n/c/e;

    .line 8
    new-instance p2, Lcom/mopub/mraid/MraidController$b;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$b;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->y:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 9
    new-instance v2, Lcom/mopub/mraid/MraidController$c;

    invoke-direct {v2, p0}, Lcom/mopub/mraid/MraidController$c;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->z:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 10
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    .line 11
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 12
    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 13
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    .line 14
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    .line 15
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 16
    new-instance p3, Le/n/c/f;

    iget-object p4, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p3, p4, p1}, Le/n/c/f;-><init>(Landroid/content/Context;F)V

    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 17
    new-instance p1, Lcom/mopub/common/CloseableLayout;

    iget-object p3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    .line 18
    new-instance p3, Le/n/c/b;

    invoke-direct {p3, p0}, Le/n/c/b;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 19
    new-instance p3, Landroid/view/View;

    iget-object p4, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p4, Le/n/c/c;

    invoke-direct {p4, p0}, Le/n/c/c;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$e;

    iget-object p3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/mopub/mraid/MraidController$e;->register(Landroid/content/Context;)V

    .line 23
    iput-object p2, v0, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 24
    iput-object v2, v1, Lcom/mopub/mraid/MraidBridge;->b:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 25
    new-instance p1, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$e;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$e;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->c()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    .line 8
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->c()V

    .line 9
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 10
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->p()V

    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    check-cast v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->h:Z

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_1
    return-void
.end method

.method public createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 2

    .line 1
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->h:Z

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->w:Le/n/c/e;

    sget-object v1, Le/n/c/e;->NONE:Le/n/c/e;

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->v:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->p()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->m(I)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Le/n/c/a;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    iget v0, v0, Le/n/c/e;->a:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->m(I)V

    :goto_0
    return-void
.end method

.method public final f()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public g()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    sget-object v2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v3, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v3, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->p()V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v2, :cond_7

    .line 7
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/ViewState;)V

    goto :goto_2

    .line 9
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_6

    .line 10
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->c()V

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 12
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 17
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->n(Lcom/mopub/mraid/ViewState;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0
.end method

.method public h(Z)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Uri scheme %s is not allowed."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Le/n/c/a;

    const-string v2, "Unsupported MRAID Javascript command"

    invoke-direct {v0, v2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v3

    .line 7
    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 11
    :cond_2
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/mopub/common/UrlAction;

    sget-object v6, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v6, v5, v4

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v5, v3

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/util/ManifestUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    invoke-virtual {v0, v2}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    .line 15
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(ZLe/n/c/e;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->o(Le/n/c/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->v:Z

    .line 3
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->w:Le/n/c/e;

    .line 4
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object p2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object p2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->h:Z

    if-nez p1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Le/n/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Z
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method

.method public m(I)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/n/c/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->w:Le/n/c/e;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->o(Le/n/c/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Le/n/c/a;

    const-string v0, "Attempted to lock orientation to unsupported value: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->w:Le/n/c/e;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/n/c/a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lcom/mopub/mraid/ViewState;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRAID state set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    .line 3
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    .line 4
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v2, p1}, Lcom/mopub/mraid/MraidBridge;->i(Lcom/mopub/mraid/ViewState;)V

    .line 5
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 6
    iget-boolean v3, v2, Lcom/mopub/mraid/MraidBridge;->e:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2, p1}, Lcom/mopub/mraid/MraidBridge;->i(Lcom/mopub/mraid/ViewState;)V

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v2, :cond_5

    .line 9
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    sget-object v3, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v3, :cond_1

    .line 13
    invoke-interface {v2}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onExpand()V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 14
    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v3, :cond_2

    .line 15
    invoke-interface {v2}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    goto :goto_0

    .line 16
    :cond_2
    sget-object v3, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v3, :cond_3

    .line 17
    invoke-interface {v2}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    goto :goto_0

    .line 18
    :cond_3
    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v3, :cond_4

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_4

    .line 19
    invoke-interface {v2, v1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_5

    .line 20
    invoke-interface {v2, v4}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->q(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Le/n/c/e;)Z
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Le/n/c/e;->NONE:Le/n/c/e;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 7
    iget p1, p1, Le/n/c/e;->a:I

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 8
    :cond_3
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 9
    invoke-static {p1, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 11
    invoke-static {p1, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method public onShow(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->e()V
    :try_end_0
    .catch Le/n/c/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to apply orientation."

    .line 6
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    return-void
.end method

.method public final q(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$d;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$d;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    return-void
.end method
