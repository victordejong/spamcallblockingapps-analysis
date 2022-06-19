.class public Lcom/razorpay/PluginCheckoutBridge;
.super Lcom/razorpay/CheckoutBridge;
.source "SourceFile"


# instance fields
.field private final pluginCheckoutInteractor:Lcom/razorpay/PluginCheckoutInteractor;


# direct methods
.method public constructor <init>(Lcom/razorpay/PluginCheckoutInteractor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/razorpay/CheckoutBridge;-><init>(Lcom/razorpay/CheckoutInteractor;I)V

    .line 2
    iput-object p1, p0, Lcom/razorpay/PluginCheckoutBridge;->pluginCheckoutInteractor:Lcom/razorpay/PluginCheckoutInteractor;

    return-void
.end method

.method public static synthetic access$000(Lcom/razorpay/PluginCheckoutBridge;)Lcom/razorpay/PluginCheckoutInteractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/razorpay/PluginCheckoutBridge;->pluginCheckoutInteractor:Lcom/razorpay/PluginCheckoutInteractor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invokePopup(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/razorpay/CheckoutBridge;->invokePopup(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCheckoutBackPress()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/razorpay/CheckoutBridge;->onCheckoutBackPress()V

    return-void
.end method

.method public processPayment(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "data"

    .line 1
    invoke-static {v0, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_PROCESS_PAYMENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 3
    new-instance v0, Lcom/razorpay/Z$_A_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/Z$_A_;-><init>(Lcom/razorpay/PluginCheckoutBridge;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method
