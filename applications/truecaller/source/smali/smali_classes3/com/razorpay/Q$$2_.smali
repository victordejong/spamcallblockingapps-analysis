.class public final Lcom/razorpay/Q$$2_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iput-object p2, p0, Lcom/razorpay/Q$$2_;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNegativeButtonClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ALERT_PAYMENT_CANCELLED:Lcom/razorpay/AnalyticsEvent;

    iget-object v1, p0, Lcom/razorpay/Q$$2_;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v0}, Lcom/razorpay/CheckoutPresenterImpl;->access$000(Lcom/razorpay/CheckoutPresenterImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v0, v0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->makeWebViewVisible(I)V

    .line 4
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v0, v0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v2, 0x2

    const-string v3, "about:blank"

    invoke-interface {v0, v2, v3}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v0, v0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const-string v2, "javascript: window.onpaymentcancel()"

    invoke-interface {v0, v1, v2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/razorpay/CheckoutPresenterImpl;->access$100(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v0}, Lcom/razorpay/CheckoutPresenterImpl;->access$200(Lcom/razorpay/CheckoutPresenterImpl;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/razorpay/Q$$2_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/razorpay/CheckoutPresenterImpl;->access$002(Lcom/razorpay/CheckoutPresenterImpl;Z)Z

    return-void
.end method

.method public final onPositiveButtonClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ALERT_PAYMENT_CONTINUE:Lcom/razorpay/AnalyticsEvent;

    iget-object v1, p0, Lcom/razorpay/Q$$2_;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    return-void
.end method
