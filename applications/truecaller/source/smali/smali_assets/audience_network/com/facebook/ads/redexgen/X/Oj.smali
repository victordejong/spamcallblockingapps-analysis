.class public final Lcom/facebook/ads/redexgen/X/Oj;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/On;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicWebViewClient"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/On;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hfMJ0frXuRQdVVGg5HhbkedMp84qvG2m"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "353suYezQm1X4xGGmKd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JSegO1TQToLz4SD5sG2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wzs2neDsiDlXGMSMfb3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "O6PuLNBrYuNMqKQgURK12L6N"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9iUPqfJGnhoj94eJuJeS1Wm6njk1Rmvr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BdwoSzPq3MvWa04biSMwYNzp8DFOBLqT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "enVVpEgx3aC4K8YdK2hdvlOQVko"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A02:[Ljava/lang/String;

    .line 47481
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/On;)V
    .locals 0

    .line 47482
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/On;Lcom/facebook/ads/redexgen/X/S5;)V
    .locals 0

    .line 47483
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;-><init>(Lcom/facebook/ads/redexgen/X/On;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oj;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x4t
        0x12t
        0x2t
        0x11t
        0x8t
        0xft
        0x13t
        0x8t
        0xet
        0xdt
        -0xbt
        -0x6t
        -0xbt
        -0x2ct
        0x3t
        -0xet
        0x4t
        -0x7t
        0xdt
        0x1at
        0x1at
        0x17t
        0x1at
        -0x15t
        0x17t
        0xct
        0xdt
        0x30t
        0x2bt
        0x40t
        0x33t
        0x2dt
        0x39t
        0x38t
        -0x8t
        0x33t
        0x2dt
        0x39t
        0x27t
        0x33t
        0x33t
        0x2ft
        0x1et
        0x24t
        0x31t
        0x31t
        0x2et
        0x31t
        0x47t
        0x49t
        0x40t
        0x46t
        0x49t
        0x40t
        0x4bt
        0x50t
        -0x4t
        -0x7t
        -0xdt
    .end array-data
.end method

.method private A02(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 47484
    if-eqz p4, :cond_0

    .line 47485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0S()V

    .line 47486
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A04(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0Q:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 47487
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 47488
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0x13

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47489
    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47490
    const/16 v2, 0x39

    const/4 v1, 0x3

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47491
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47492
    .local p1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A03(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0R;->A52(Ljava/lang/String;)V

    .line 47493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A06(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Ob;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/8m;->A0w:I

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ob;->A04(ILjava/lang/String;)V

    .line 47494
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 47495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A04(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0R:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 47496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A03(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A00(Lcom/facebook/ads/redexgen/X/On;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A53(J)V

    .line 47497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0S()V

    .line 47498
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0K(Lcom/facebook/ads/redexgen/X/On;Z)Z

    .line 47499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A0H(Lcom/facebook/ads/redexgen/X/On;)V

    .line 47500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A07(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Ol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A07(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Ol;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ol;->ACe()V

    .line 47502
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47503
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 47504
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_0

    .line 47505
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 47506
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 47507
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 47508
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47509
    const/4 v0, 0x1

    invoke-direct {p0, v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 47510
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 47511
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 47512
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0xb

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47513
    return-void

    .line 47514
    :cond_0
    if-eqz p3, :cond_1

    .line 47515
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v5

    .line 47516
    .local p0, "statusCode":I
    .restart local p0    # "statusCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v2, 0x27

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Oj;->A02(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 47517
    return-void

    .line 47518
    .end local p0    # "statusCode":I
    :cond_1
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 47519
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 47520
    .local p0, "error":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47521
    const/16 v2, 0x31

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47522
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47523
    .local p1, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A03(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4y(Ljava/lang/String;)V

    .line 47524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A01(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A03(Ljava/lang/String;)V

    .line 47525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A08(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Om;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A08(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Om;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A02:[Ljava/lang/String;

    const-string v1, "kv0KfCNN1XAdbICEJBZwu3dTiw7XNBbg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Om;->ABi()V

    .line 47527
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 47528
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 47529
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A03(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 47530
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A02(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/7J;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 47531
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A09(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/Oz;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 47532
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A0A(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:Lcom/facebook/ads/redexgen/X/On;

    .line 47533
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/On;->A01(Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0i()Z

    move-result v6

    .line 47534
    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/P2;->A00(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/7J;Landroid/webkit/WebResourceRequest;Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/P1;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method
