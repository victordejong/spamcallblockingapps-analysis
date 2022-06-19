.class public final Lcom/facebook/ads/redexgen/X/Sm;
.super Lcom/facebook/ads/redexgen/X/Nk;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ng;,
        Lcom/facebook/ads/redexgen/X/Nh;,
        Lcom/facebook/ads/redexgen/X/Nf;,
        Lcom/facebook/ads/redexgen/X/Ne;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Nb;

.field public A05:Lcom/facebook/ads/redexgen/X/Ne;

.field public final A06:Lcom/facebook/ads/redexgen/X/XT;

.field public final A07:Lcom/facebook/ads/redexgen/X/Nh;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 52517
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sm;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0C:Ljava/lang/String;

    .line 52518
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Ljava/util/Set;

    .line 52519
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Z

    .line 52520
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Z

    .line 52521
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52522
    sget-object v3, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52523
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Ne;)V
    .locals 2

    .line 52524
    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Nk;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52525
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:J

    .line 52526
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    .line 52527
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    .line 52528
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    .line 52529
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:Lcom/facebook/ads/redexgen/X/Ne;

    .line 52530
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    .line 52531
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52532
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A04()Lcom/facebook/ads/redexgen/X/Nh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Lcom/facebook/ads/redexgen/X/Nh;

    .line 52533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52534
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A08()V

    .line 52535
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Ne;)V
    .locals 2

    .line 52536
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nk;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52537
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:J

    .line 52538
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    .line 52539
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    .line 52540
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    .line 52541
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:Lcom/facebook/ads/redexgen/X/Ne;

    .line 52542
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    .line 52543
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52544
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A04()Lcom/facebook/ads/redexgen/X/Nh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Lcom/facebook/ads/redexgen/X/Nh;

    .line 52545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52546
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A08()V

    .line 52547
    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .locals 1

    .line 52548
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A03(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 52549
    sput-object p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/Nh;
    .locals 3

    .line 52550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:Lcom/facebook/ads/redexgen/X/Ne;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sm;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/Set;
    .locals 1

    .line 52551
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .locals 5

    .line 52552
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 52553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A04:Lcom/facebook/ads/redexgen/X/Nb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nb;->A05(Z)V

    .line 52554
    :cond_0
    return-void
.end method

.method private A08()V
    .locals 3

    .line 52555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JE;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Z

    .line 52556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JE;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Z

    .line 52557
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 52558
    .local p0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52559
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 52560
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 52561
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 52562
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 52563
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 52564
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 52565
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 52566
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 52567
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nb;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A04:Lcom/facebook/ads/redexgen/X/Nb;

    .line 52568
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x53t
        0x4ft
        0x4ft
        0x4bt
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
    .end array-data
.end method

.method public static A0A(IILandroid/content/Intent;)V
    .locals 1

    .line 52569
    sget-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 52570
    return-void

    .line 52571
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 52572
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    .line 52573
    sget-object p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    .line 52574
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 52575
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 52576
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    .line 52577
    :cond_1
    return-void

    .line 52578
    :cond_2
    sget-object p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static synthetic A0B()Z
    .locals 1

    .line 52579
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Z

    return v0
.end method

.method public static synthetic A0C()Z
    .locals 1

    .line 52580
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 52581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:Lcom/facebook/ads/redexgen/X/Ne;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A04:Lcom/facebook/ads/redexgen/X/Nb;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ng;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ng;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0E()Landroid/webkit/WebViewClient;
    .locals 1

    .line 52582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A04()Lcom/facebook/ads/redexgen/X/Nh;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(J)V
    .locals 5

    .line 52583
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 52584
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    .line 52585
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A07()V

    .line 52586
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 52587
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 52588
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    .line 52589
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A07()V

    .line 52590
    return-void
.end method

.method public final A0H(J)V
    .locals 5

    .line 52591
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 52592
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:J

    .line 52593
    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 52594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:Lcom/facebook/ads/redexgen/X/Ne;

    .line 52595
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Nq;->A03(Landroid/webkit/WebView;)V

    .line 52596
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nk;->destroy()V

    .line 52597
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 52598
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 52599
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 52600
    .local p0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 52601
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52602
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 52603
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 52604
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 52605
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 52606
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nk;->onDraw(Landroid/graphics/Canvas;)V

    .line 52607
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 52608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:J

    .line 52609
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A07()V

    .line 52610
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/Nf;)V
    .locals 2

    .line 52611
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Lcom/facebook/ads/redexgen/X/Nh;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nh;->A03(Ljava/lang/ref/WeakReference;)V

    .line 52612
    return-void
.end method
