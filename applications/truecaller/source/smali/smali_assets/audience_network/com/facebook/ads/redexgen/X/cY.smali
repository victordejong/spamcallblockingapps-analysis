.class public final Lcom/facebook/ads/redexgen/X/cY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/1U;

.field public final A01:Lcom/facebook/ads/redexgen/X/1j;

.field public final A02:Lcom/facebook/ads/redexgen/X/7J;

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1j;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/1U;Z)V
    .locals 0

    .line 71964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cY;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 71966
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cY;->A01:Lcom/facebook/ads/redexgen/X/1j;

    .line 71967
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cY;->A02:Lcom/facebook/ads/redexgen/X/7J;

    .line 71968
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    .line 71969
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/cY;->A04:Z

    .line 71970
    return-void
.end method

.method private final A00()V
    .locals 5

    .line 71971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71972
    .local p0, "precacheWebView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 71973
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cY;->A01:Lcom/facebook/ads/redexgen/X/1j;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/cY;->A04:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/1k;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1k;-><init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1j;Z)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71975
    return-void
.end method

.method private A01(Z)V
    .locals 2

    .line 71976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A09()Lcom/facebook/ads/redexgen/X/1V;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1V;->A05:Lcom/facebook/ads/redexgen/X/1V;

    if-ne v1, v0, :cond_0

    .line 71977
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cY;->A00()V

    .line 71978
    return-void

    .line 71979
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v1

    .line 71980
    .local p0, "markupUrlResult":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 71981
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cY;->A02:Lcom/facebook/ads/redexgen/X/7J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7J;->A0P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71982
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A00:Lcom/facebook/ads/redexgen/X/1U;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1U;->A0H(Ljava/lang/String;)V

    .line 71983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A01:Lcom/facebook/ads/redexgen/X/1j;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1j;->ABY()V

    .line 71984
    return-void
.end method


# virtual methods
.method public final AA5()V
    .locals 2

    .line 71985
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cY;->A04:Z

    if-eqz v0, :cond_0

    .line 71986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cY;->A01:Lcom/facebook/ads/redexgen/X/1j;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->ABX(Lcom/facebook/ads/AdError;)V

    .line 71987
    :goto_0
    return-void

    .line 71988
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/cY;->A01(Z)V

    goto :goto_0
.end method

.method public final AAC()V
    .locals 1

    .line 71989
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/cY;->A01(Z)V

    .line 71990
    return-void
.end method
