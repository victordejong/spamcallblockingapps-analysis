.class public final Lcom/facebook/ads/redexgen/X/S4;
.super Lcom/facebook/ads/redexgen/X/Nk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/On;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebView"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/On;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 51386
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S4;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 51387
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Nk;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 51388
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S4;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 51389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S4;->setBackgroundColor(I)V

    .line 51390
    return-void
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 3

    .line 51391
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S4;->A00:Lcom/facebook/ads/redexgen/X/On;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oi;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Oi;-><init>(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/S5;)V

    return-object v0
.end method

.method public final A0E()Landroid/webkit/WebViewClient;
    .locals 3

    .line 51392
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/S4;->A00:Lcom/facebook/ads/redexgen/X/On;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/S5;)V

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 51393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S4;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A05(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/Lz;->A06(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 51394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S4;->requestDisallowInterceptTouchEvent(Z)V

    .line 51395
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nk;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
