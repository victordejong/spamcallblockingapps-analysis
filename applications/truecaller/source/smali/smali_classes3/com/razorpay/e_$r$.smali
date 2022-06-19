.class public final Lcom/razorpay/e_$r$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/RzpInternalCallback;


# instance fields
.field private synthetic a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPaymentError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "provider"

    const-string v1, "response"

    .line 1
    invoke-static {v1, p2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_INTERNAL_CALLBACK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1, v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOOGLE_PAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-virtual {p1, p2}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;->verifyGPayResponse(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_INTERNAL_CALLBACK_ERROR_EXCEPTION:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 10
    iget-object p1, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-virtual {p1, p2}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;->onComplete(Ljava/lang/String;)V

    return-void
.end method

.method public final onPaymentSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "provider"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GOOGLE_PAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-virtual {v0, p1}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;->verifyGPayResponse(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "response"

    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_INTERNAL_CALLBACK_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/razorpay/e_$r$;->a:Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-virtual {v0, p1}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PLUGIN_INTERNAL_CALLBACK_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method
