.class public final Lcom/facebook/ads/redexgen/X/1k;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableWebViewClient"
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/1U;

.field public final A02:Lcom/facebook/ads/redexgen/X/1j;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1j;Z)V
    .locals 1

    .line 4455
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A00:Z

    .line 4457
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1k;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 4458
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:Lcom/facebook/ads/redexgen/X/1j;

    .line 4459
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:Z

    .line 4460
    return-void
.end method

.method private A00()V
    .locals 2

    .line 4461
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A03:Z

    if-eqz v0, :cond_0

    .line 4462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:Lcom/facebook/ads/redexgen/X/1j;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1j;->ABX(Lcom/facebook/ads/AdError;)V

    .line 4463
    :goto_0
    return-void

    .line 4464
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A01()V

    goto :goto_0
.end method

.method private A01()V
    .locals 1

    .line 4465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A02:Lcom/facebook/ads/redexgen/X/1j;

    if-eqz v0, :cond_0

    .line 4466
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1j;->ABY()V

    .line 4467
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 0

    .line 4468
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A00()V

    .line 4469
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1k;)V
    .locals 0

    .line 4470
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A02()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 4471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A00:Z

    .line 4472
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A01()V

    .line 4473
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 4474
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 4475
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/cX;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/cX;-><init>(Lcom/facebook/ads/redexgen/X/1k;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A01:Lcom/facebook/ads/redexgen/X/1U;

    .line 4476
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A08()I

    move-result v0

    int-to-long v0, v0

    .line 4477
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4478
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 4479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1k;->A00:Z

    .line 4480
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A02()V

    .line 4481
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 4482
    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A2R:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nk;->A02(I)V

    .line 4483
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1k;->A00()V

    .line 4484
    const/4 v0, 0x1

    return v0
.end method
