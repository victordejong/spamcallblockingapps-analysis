.class public Lcom/razorpay/RzpGpayMerged;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/razorpay/RzpPlugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/razorpay/RzpPlugin;"
    }
.end annotation


# static fields
.field private static LOAD_PAYMENT_DATA_REQUEST_CODE:I = 0x1


# instance fields
.field private apiResponse:Lorg/json/JSONObject;

.field private cardsTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isUpiOnly:Z

.field private mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

.field private registerCallback:Lcom/razorpay/RzpPluginRegisterCallback;

.field private rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

.field private upiTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/razorpay/RzpGpayMerged;->isUpiOnly:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/razorpay/RzpGpayMerged;->cardsTask:Lcom/google/android/gms/tasks/Task;

    .line 4
    iput-object v0, p0, Lcom/razorpay/RzpGpayMerged;->upiTask:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic access$002(Lcom/razorpay/RzpGpayMerged;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/razorpay/RzpGpayMerged;->isUpiOnly:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/razorpay/RzpGpayMerged;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/razorpay/RzpGpayMerged;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lcom/razorpay/RzpGpayMerged;->LOAD_PAYMENT_DATA_REQUEST_CODE:I

    return v0
.end method

.method public static synthetic access$400(Lcom/razorpay/RzpGpayMerged;)Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    return-object p0
.end method

.method private genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/RzpGpayMerged;->isUpiOnly:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/razorpay/RzpGpayMerged;->rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

    invoke-static {p1, p3}, Lcom/razorpay/RzpGpayUtilMerged;->makeErrorPayload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/razorpay/RzpInternalCallback;->onPaymentError(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/razorpay/RzpGpayMerged;->rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

    iget-object v0, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    invoke-static {v0, p2, p3}, Lcom/razorpay/RzpGpayUtilMerged;->makeMergedExternalSDKErrorPayload(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/razorpay/RzpInternalCallback;->onPaymentError(ILjava/lang/String;)V

    return-void
.end method

.method private genericOnPaymentSuccess()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/RzpGpayMerged;->isUpiOnly:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/razorpay/RzpGpayMerged;->rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

    iget-object v1, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/RzpGpayUtilMerged;->makeExternalSDKPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/razorpay/RzpInternalCallback;->onPaymentSuccess(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/razorpay/RzpGpayMerged;->rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

    iget-object v1, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/razorpay/RzpGpayUtilMerged;->makeMergedExternalSDKPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/razorpay/RzpInternalCallback;->onPaymentSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private handleResultStatusCode(I)V
    .locals 3

    const/16 v0, 0x195

    const/4 v1, 0x1

    const-string v2, "BAD_REQUEST_ERROR"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x199

    if-eq p1, v0, :cond_0

    const-string p1, "An internal error has occurred"

    .line 1
    invoke-direct {p0, v2, v1, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "There is a problem with your Google Pay account."

    .line 2
    invoke-direct {p0, v2, v1, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "There is a problem with merchant\'s account."

    .line 3
    invoke-direct {p0, v2, v1, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private processPaymentResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_VERIFY_PAYMENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2
    invoke-static {p1}, Lcom/razorpay/RzpGpayMerged;->verifyPaymentResponse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_VERIFY_PAYMENT_SUCCESS_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 4
    invoke-direct {p0}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentSuccess()V

    return-void

    .line 5
    :cond_0
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_VERIFY_PAYMENT_ERROR_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    const/4 p1, 0x1

    const-string v0, "BAD_REQUEST_ERROR"

    const-string v1, "Payment was not successful."

    .line 6
    invoke-direct {p0, v0, p1, v1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static verifyPaymentResponse(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "paymentMethodData"

    .line 2
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "tokenizationData"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_VERIFY_PAYMENT_EXCEPTION:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return v0

    .line 5
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lorg/json/JSONObject;

    const-string v2, "signedMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "paymentMethodDetails"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "SUCCESS"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    .line 9
    :catch_0
    sget-object p0, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_VERIFY_PAYMENT_EXCEPTION:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return v0
.end method


# virtual methods
.method public doesHandlePayload(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;)Z
    .locals 3

    const-string p1, "type"

    const-string p3, "method"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "upi"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "_[app]"

    .line 3
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "application"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "application_name"

    .line 6
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "google_pay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;
    .locals 4

    const-string p3, "customui"

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    if-le p2, v0, :cond_0

    .line 2
    new-instance p1, Lcom/razorpay/RzpPluginCompatibilityResponse;

    invoke-direct {p1, v2, v1}, Lcom/razorpay/RzpPluginCompatibilityResponse;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "checkout"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x12

    if-le p2, v3, :cond_1

    .line 4
    new-instance p1, Lcom/razorpay/RzpPluginCompatibilityResponse;

    invoke-direct {p1, v2, v1}, Lcom/razorpay/RzpPluginCompatibilityResponse;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "Razorpay\'s GooglePay plugin requires a min SDK Version 3.8.8 Please update."

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Razorpay\'s GooglePay plugin requires a min SDK Version 1.5.6 Please update."

    goto :goto_0

    :cond_3
    const-string p1, "Incompatible Razorpay sdk version. Please update the base sdk"

    .line 7
    :goto_0
    new-instance p2, Lcom/razorpay/RzpPluginCompatibilityResponse;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/razorpay/RzpPluginCompatibilityResponse;-><init>(ZLjava/lang/String;)V

    return-object p2
.end method

.method public isRegistered(Landroid/content/Context;)V
    .locals 4

    .line 10
    invoke-static {}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/Wallet;->getPaymentsClient()Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    .line 11
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_CHECK_REGISTER_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    const/4 v0, 0x0

    .line 12
    :try_start_0
    sget-object v1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PAYMENT_IS_REGISTERED_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 13
    iget-object v1, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-static {}, Lcom/razorpay/RzpGpayUtilMerged;->getIsReadyToPayRequest()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isReadyToPay(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-static {}, Lcom/razorpay/RzpGpayUtilMerged;->getCardsIsReadyToPayRequest()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isReadyToPay(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 15
    :goto_0
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error:exception"

    invoke-static {p1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    new-instance p1, Lcom/razorpay/e;

    invoke-direct {p1, p0}, Lcom/razorpay/e;-><init>(Lcom/razorpay/RzpGpayMerged;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    new-instance p1, Lcom/razorpay/f;

    invoke-direct {p1, p0}, Lcom/razorpay/f;-><init>(Lcom/razorpay/RzpGpayMerged;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/razorpay/RzpGpayMerged;->registerCallback:Lcom/razorpay/RzpPluginRegisterCallback;

    .line 2
    sget-object p2, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_CHECK_REGISTER_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/Wallet;->getPaymentsClient()Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object p2

    iput-object p2, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    .line 4
    sget-object p2, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PAYMENT_IS_REGISTERED_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p2}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 5
    iget-object p2, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-static {}, Lcom/razorpay/RzpGpayUtilMerged;->getIsReadyToPayRequest()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isReadyToPay(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    iput-object p2, p0, Lcom/razorpay/RzpGpayMerged;->upiTask:Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object p2, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-static {}, Lcom/razorpay/RzpGpayUtilMerged;->getCardsIsReadyToPayRequest()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isReadyToPay(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/RzpGpayMerged;->cardsTask:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "error:exception"

    invoke-static {p1, v0, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/razorpay/RzpGpayMerged;->cardsTask:Lcom/google/android/gms/tasks/Task;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 9
    iget-object p1, p0, Lcom/razorpay/RzpGpayMerged;->upiTask:Lcom/google/android/gms/tasks/Task;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0

    .line 1
    sget p1, Lcom/razorpay/RzpGpayMerged;->LOAD_PAYMENT_DATA_REQUEST_CODE:I

    if-ne p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    const-string p2, "errorCode"

    .line 2
    invoke-virtual {p4, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    invoke-direct {p0, p1}, Lcom/razorpay/RzpGpayMerged;->handleResultStatusCode(I)V

    return-void

    .line 4
    :cond_1
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PAYMENT_CALLBACK_CANCELLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    const/4 p1, 0x0

    const-string p2, "BAD_REQUEST_ERROR"

    const-string p3, "Payment canceled."

    .line 5
    invoke-direct {p0, p2, p1, p3}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PAYMENT_CALLBACK_SUCCESS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 7
    invoke-static {p4}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/WalletUtils;->getPaymentDataFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/razorpay/RzpGpayMerged;->processPaymentResponse(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/razorpay/RzpGpayMerged;->cardsTask:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/razorpay/BaseUtils;->setIsGpayCardsUpiRegistered(Z)V

    .line 4
    iget-object p1, p0, Lcom/razorpay/RzpGpayMerged;->registerCallback:Lcom/razorpay/RzpPluginRegisterCallback;

    invoke-interface {p1, v0}, Lcom/razorpay/RzpPluginRegisterCallback;->onResponse(Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/razorpay/BaseUtils;->setCompatibleWithGooglePay(Z)V

    return-void
.end method

.method public processPayment(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/razorpay/RzpInternalCallback;)V
    .locals 5

    const-string p1, "An internal error has occurred"

    const-string v0, "url_data"

    const-string v1, "type"

    const-string v2, "error:exception"

    const-string v3, "BAD_REQUEST_ERROR"

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iput-object p4, p0, Lcom/razorpay/RzpGpayMerged;->rzpInternalCallback:Lcom/razorpay/RzpInternalCallback;

    .line 2
    invoke-static {}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/Wallet;->getPaymentsClient()Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object p4

    iput-object p4, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    .line 3
    sget-object p4, Lcom/razorpay/AnalyticsEvent;->GOOGLEPAY_PROCESS_PAYMENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p4}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 4
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "application"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 5
    iput-object p2, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    const-string p1, "request"

    .line 6
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "content"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    :try_start_1
    iget-object p2, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget p4, Lcom/razorpay/RzpGpayMerged;->LOAD_PAYMENT_DATA_REQUEST_CODE:I

    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->loadPaymentData(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "critical"

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BAD_REQUEST"

    const-string p2, "An internal error has occured"

    .line 9
    invoke-direct {p0, p1, v4, p2}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 11
    iput-boolean v4, p0, Lcom/razorpay/RzpGpayMerged;->isUpiOnly:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 12
    :try_start_3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 13
    :try_start_4
    invoke-static {p4}, Lcom/razorpay/RzpGpayUtilMerged;->getUpiData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/RzpGpayMerged;->apiResponse:Lorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lcom/razorpay/RzpGpayMerged;->mPaymentClient:Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    invoke-static {p4, p2}, Lcom/razorpay/RzpGpayUtilMerged;->getPaymentRequestData(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    sget p4, Lcom/razorpay/RzpGpayMerged;->LOAD_PAYMENT_DATA_REQUEST_CODE:I

    invoke-virtual {v0, p3, p2, p4}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->loadPaymentData(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 15
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-direct {p0, v3, v4, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catch_2
    move-exception p2

    .line 17
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v2, p3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v3, v4, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p4, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded"

    .line 20
    invoke-virtual {p1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "https://api.razorpay.com/v1/payments/create/ajax"

    .line 21
    invoke-static {p2}, Lcom/razorpay/RzpGpayUtilMerged;->makeApiPayload(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/razorpay/d;

    invoke-direct {v1, p0, p3, p2}, Lcom/razorpay/d;-><init>(Lcom/razorpay/RzpGpayMerged;Landroid/app/Activity;Lorg/json/JSONObject;)V

    invoke-static {p4, v0, p1, v1}, Lcom/razorpay/p$_5$;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "An internal error has occurred."

    .line 23
    invoke-direct {p0, v3, v4, p1}, Lcom/razorpay/RzpGpayMerged;->genericOnPaymentFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
