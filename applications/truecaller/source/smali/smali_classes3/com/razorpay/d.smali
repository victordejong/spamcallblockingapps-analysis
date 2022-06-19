.class public final Lcom/razorpay/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/Callback;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lorg/json/JSONObject;

.field private synthetic c:Lcom/razorpay/RzpGpayMerged;


# direct methods
.method public constructor <init>(Lcom/razorpay/RzpGpayMerged;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    iput-object p2, p0, Lcom/razorpay/d;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/razorpay/d;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/razorpay/ResponseObject;)V
    .locals 5

    const-string v0, "BAD_REQUEST_ERROR"

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    invoke-static {v2, v1}, Lcom/razorpay/RzpGpayMerged;->access$002(Lcom/razorpay/RzpGpayMerged;Z)Z

    .line 2
    iget-object v2, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/razorpay/RzpGpayMerged;->access$102(Lcom/razorpay/RzpGpayMerged;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_0

    .line 5
    iget-object v3, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    const-string v4, "An error occurred while fetching payment details from API."

    invoke-static {v3, v0, v1, v4}, Lcom/razorpay/RzpGpayMerged;->access$200(Lcom/razorpay/RzpGpayMerged;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string v3, "error"

    .line 6
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PROCESS_PAYMENT_PAYLOAD_ERROR:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 8
    iget-object p1, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/razorpay/RzpGpayMerged;->access$200(Lcom/razorpay/RzpGpayMerged;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1
    sget-object v2, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PROCESS_PAYMENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 10
    iget-object v2, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    invoke-static {v2}, Lcom/razorpay/RzpGpayMerged;->access$400(Lcom/razorpay/RzpGpayMerged;)Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object v2

    iget-object v3, p0, Lcom/razorpay/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/razorpay/ResponseObject;->getResponseResult()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/razorpay/d;->b:Lorg/json/JSONObject;

    invoke-static {p1, v4}, Lcom/razorpay/RzpGpayUtilMerged;->getPaymentRequestData(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/razorpay/RzpGpayMerged;->access$300()I

    move-result v4

    .line 12
    invoke-virtual {v2, v3, p1, v4}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->loadPaymentData(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "critical"

    invoke-static {p1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/razorpay/d;->c:Lcom/razorpay/RzpGpayMerged;

    const-string v2, "An internal error has occurred."

    invoke-static {p1, v0, v1, v2}, Lcom/razorpay/RzpGpayMerged;->access$200(Lcom/razorpay/RzpGpayMerged;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
