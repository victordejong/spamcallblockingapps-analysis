.class public final Lcom/razorpay/d__w$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/d__w$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/razorpay/d__w$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v1, v0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-static {v0}, Lcom/razorpay/CheckoutPresenterImpl;->access$300(Lcom/razorpay/CheckoutPresenterImpl;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/d__w$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v1, v0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->getAnalyticsDataForCheckout(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "javascript: CheckoutBridge.sendAnalyticsData({data: %s})"

    .line 4
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {v1, v2, v0}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    return-void
.end method
