.class public Lcom/amazon/device/ads/DTBAdInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTBAdInterstitial"

.field public static theRecent:Lcom/amazon/device/ads/DTBAdInterstitial;


# instance fields
.field public adView:Lcom/amazon/device/ads/DTBAdView;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/amazon/device/ads/DTBAdView;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    .line 4
    sput-object p0, Lcom/amazon/device/ads/DTBAdInterstitial;->theRecent:Lcom/amazon/device/ads/DTBAdInterstitial;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to initialize DTBAdInterstitial class"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {p2, v1, v0, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private getInterstitialController()Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    return-object v0
.end method

.method private getInterstitialListener()Lcom/amazon/device/ads/DTBAdInterstitialListener;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdInterstitial;->getInterstitialController()Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->getInterstitialListener()Lcom/amazon/device/ads/DTBAdInterstitialListener;

    move-result-object v0

    return-object v0
.end method

.method public static getRecent()Lcom/amazon/device/ads/DTBAdInterstitial;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DTBAdInterstitial;->theRecent:Lcom/amazon/device/ads/DTBAdInterstitial;

    return-object v0
.end method

.method public static getWidth(Landroid/content/Context;)I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute getWidth method"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v2, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v0, v2, v1, p0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public fetchAd(Landroid/os/Bundle;)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    const-string v1, "bid_html_template"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute fetchAd method with bundle argument"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v2, "Fail to execute fetchAd method with extraData argument"

    invoke-static {v0, v1, v2, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public fetchAd(Ljava/lang/String;)V
    .locals 3

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fail to execute fetchAd method with bundle argument"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v1, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v2, "Fail to execute fetchAd method with adHtml argument"

    invoke-static {v0, v1, v2, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Fail to execute fetchAd method with adHtml and bundle argument"

    invoke-static {p2, v0}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p2, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v0, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    const-string v1, "Fail to execute fetchAd method with adHtml and  bundle argument"

    invoke-static {p2, v0, v1, p1}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public fetchAd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBAdView;->fetchAd(Ljava/util/Map;)V

    return-void
.end method

.method public getAdView()Lcom/amazon/device/ads/DTBAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    return-object v0
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdInterstitial;->getInterstitialListener()Lcom/amazon/device/ads/DTBAdInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdListener;->onAdClosed(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdInterstitial;->getInterstitialController()Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;->setInterstitialListener(Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/device/ads/DTBInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/amazon/device/ads/DTBAdInterstitial;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute show method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
