.class public Lcom/razorpay/CheckoutPresenterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/CheckoutInteractor;
.implements Lcom/razorpay/CheckoutPresenter;


# instance fields
.field public activity:Landroid/app/Activity;

.field private allowRotation:Z

.field private autoReadOtpHelper:Lcom/razorpay/AutoReadOtpHelper;

.field private checkoutContent:Ljava/lang/String;

.field private checkoutLoadStartAt:J

.field public checkoutMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public checkoutOptions:Lcom/razorpay/x_$Q_;

.field private checkoutUrl:Ljava/lang/String;

.field private clearHistory:Z

.field private dashOptions:Ljava/lang/String;

.field private dashOptionsJSON:Lorg/json/JSONObject;

.field private isActivityCreated:Z

.field private isCheckoutLoaded:Z

.field private isMagic:Z

.field private isPaymentSuccessful:Z

.field private isTwoWebViewFlow:Z

.field private loginOtpSmsTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private magicBase:Lcom/razorpay/M$$8$;

.field public merchantKey:Ljava/lang/String;

.field private merchantLogoResourceId:I

.field private otpAutoReadBroadcast:Landroid/content/BroadcastReceiver;

.field private paymentAttempts:I

.field private payment_id:Ljava/lang/String;

.field private preloadAbortDuration:J

.field private preloadCompleteDuration:J

.field private sendSmsHash:Z

.field public view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "{}"

    .line 2
    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutContent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    .line 4
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isPaymentSuccessful:Z

    .line 5
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    .line 6
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isMagic:Z

    .line 7
    iput v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantLogoResourceId:I

    .line 8
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isActivityCreated:Z

    .line 9
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->sendSmsHash:Z

    .line 10
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->allowRotation:Z

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    .line 13
    new-instance v1, Lcom/razorpay/n__T$;

    invoke-direct {v1, p0}, Lcom/razorpay/n__T$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;)V

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->otpAutoReadBroadcast:Landroid/content/BroadcastReceiver;

    .line 14
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    .line 15
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isCheckoutLoaded:Z

    .line 16
    iput-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    return-void
.end method

.method public static synthetic access$000(Lcom/razorpay/CheckoutPresenterImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/razorpay/CheckoutPresenterImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->handleRetry(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/razorpay/CheckoutPresenterImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->markPaymentCancelled()V

    return-void
.end method

.method public static synthetic access$300(Lcom/razorpay/CheckoutPresenterImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->getHandleMessageFormattedString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/razorpay/CheckoutPresenterImpl;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/razorpay/CheckoutPresenterImpl;->loginOtpSmsTask:Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/razorpay/CheckoutPresenterImpl;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/razorpay/CheckoutPresenterImpl;->otpAutoReadBroadcast:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/razorpay/CheckoutPresenterImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->startSmsRetrieverForSavedCardsOTP()V

    return-void
.end method

.method public static synthetic access$700(Lcom/razorpay/CheckoutPresenterImpl;ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/razorpay/CheckoutPresenterImpl;->executeWebViewCallback(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method private executeWebViewCallback(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v0, 0x2

    :goto_0
    invoke-interface {p1, v0}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->getWebView(I)Landroid/webkit/WebView;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "razorpay.com"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p2}, Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;->secure()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p2}, Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;->unSecure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {p2}, Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;->unSecure()V

    :goto_1
    return-void
.end method

.method private getHandleMessageFormattedString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/razorpay/CheckoutPresenterImpl;->getOptionsForHandleMessage()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "javascript: handleMessage(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleRetry(Ljava/lang/String;)V
    .locals 6

    const-string v0, "?"

    const-string v1, "error"

    .line 1
    iget v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    .line 2
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/Y_$H_;->f()I

    move-result v3

    .line 3
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v4

    invoke-virtual {v4}, Lcom/razorpay/Y_$H_;->e()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-le v3, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-eqz v2, :cond_4

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "&"

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/razorpay/CheckoutPresenterImpl;->helpersReset()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->loadForm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {p0, v5, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "critical"

    invoke-static {v0, v1, p1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    invoke-virtual {p0, v5, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method private loadResultToWebView(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->NATIVE_INTENT_ONACTIVITY_RESULT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 4
    iget-boolean p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->isCheckoutLoaded:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private markPaymentCancelled()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isPaymentSuccessful:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->constructBasicAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Authorization"

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Basic "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://api.razorpay.com/v1/payments/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cancel?platform=android_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/razorpay/c__h$;

    invoke-direct {v2, p0}, Lcom/razorpay/c__h$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;)V

    invoke-static {v0, v1, v2}, Lcom/razorpay/p$_5$;->a(Ljava/lang/String;Ljava/util/Map;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private savePrefillData(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "email"

    const-string v1, "contact"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/razorpay/CheckoutUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v2, v1, v4}, Lcom/razorpay/x_$Q_;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/razorpay/CheckoutUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/razorpay/x_$Q_;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error parsing JSON"

    .line 11
    invoke-static {v0, p1}, Lcom/razorpay/d__1_;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private sendQueuedMessagesToCheckout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method

.method private startSmsRetrieverForSavedCardsOTP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/zzu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzu;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzu;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->loginOtpSmsTask:Lcom/google/android/gms/tasks/Task;

    .line 4
    new-instance v0, Lcom/razorpay/AutoReadOtpHelper;

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/razorpay/AutoReadOtpHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->autoReadOtpHelper:Lcom/razorpay/AutoReadOtpHelper;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->autoReadOtpHelper:Lcom/razorpay/AutoReadOtpHelper;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addAnalyticsData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V

    return-void
.end method

.method public addOnFlowEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/razorpay/M$$8$;->b:Lcom/razorpay/i;

    invoke-virtual {v1, v0}, Lcom/razorpay/i;->b(Lcom/razorpay/SmsAgentInterface;)V

    .line 3
    iget-object v1, v0, Lcom/razorpay/M$$8$;->b:Lcom/razorpay/i;

    iget-object v0, v0, Lcom/razorpay/M$$8$;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/razorpay/i;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public backPressed(Ljava/util/Map;)V
    .locals 5
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
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_HARD_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->getWebView(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/BaseConfig;->getCheckoutEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v2, 0x2

    .line 6
    invoke-interface {v0, v2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->isWebViewVisible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const-string v2, "javascript: window.backPressed ? window.backPressed(\'onCheckoutBackPress\') : CheckoutBridge.onCheckoutBackPress();"

    invoke-interface {v0, v1, v2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    const-string v0, "in_checkout"

    const-string v1, "true"

    .line 8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/Y_$H_;->k()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    const-string v0, "BackPressed"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/Y_$H_;->l()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/razorpay/Y_$H_;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/Y_$H_;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/razorpay/Q$$2_;

    invoke-direct {v4, p0, p1}, Lcom/razorpay/Q$$2_;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/util/Map;)V

    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lcom/razorpay/CheckoutUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/razorpay/CheckoutUtils$BackButtonDialogCallback;)V

    return-void
.end method

.method public callNativeIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/razorpay/BaseUtils;->startActivityForResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "null"

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "url"

    .line 3
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "package_name"

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->NATIVE_INTENT_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1, v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    return-void
.end method

.method public checkSmsPermission()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v0}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->checkSmsPermission()V

    return-void
.end method

.method public cleanUpOnDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->markPaymentCancelled()V

    .line 2
    invoke-virtual {p0}, Lcom/razorpay/CheckoutPresenterImpl;->addOnFlowEnd()V

    .line 3
    invoke-static {}, Lcom/razorpay/d__B_;->a()V

    return-void
.end method

.method public destroyActivity(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, v1, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v1, "destroy_resultCode"

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 2
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    invoke-direct {v0, p2, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v1, "destroy_result"

    invoke-static {v1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 3
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->INTERNAL_DESTROY_METHOD_CALLED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 4
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v0, p1, p2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->destroy(ILjava/lang/String;)V

    return-void
.end method

.method public enableAddon(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "magic"

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->isMagic:Z

    .line 3
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    if-eqz v0, :cond_0

    .line 4
    iput-boolean p1, v0, Lcom/razorpay/M$$8$;->c:Z

    :cond_0
    const-string v0, "is_magic"

    .line 5
    new-instance v1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v1, p1, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(ZLcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public fetchCondfig()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/razorpay/CheckoutPresenterImpl;->isMagicPresent()Z

    move-result v0

    sput-boolean v0, Lcom/razorpay/Y_$H_;->d:Z

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/razorpay/Y_$H_;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getCheckoutOptions()Lcom/razorpay/x_$Q_;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    return-object v0
.end method

.method public getOptionsForHandleMessage()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "options"

    .line 2
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v2}, Lcom/razorpay/x_$Q_;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 3
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 4
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getLocalOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "key_id"

    .line 5
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "externalSDKs"

    .line 6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v1}, Lcom/razorpay/x_$Q_;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/razorpay/AppSignatureHelper;

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/razorpay/AppSignatureHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "sms_hash"

    .line 9
    invoke-virtual {v1}, Lcom/razorpay/AppSignatureHelper;->getAppSignatures()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "upi_intents_data"

    .line 10
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/CheckoutUtils;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri_data"

    .line 11
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/CheckoutUtils;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "openedAt"

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "metadata"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/razorpay/f$_G$;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "device_token"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "sdk_popup"

    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "magic"

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "network_type"

    .line 20
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "activity_recreated"

    .line 21
    iget-boolean v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isActivityCreated:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "warning"

    invoke-static {v1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getProgressBarColor()Ljava/lang/String;
    .locals 6

    const-string v0, "color"

    const-string v1, "theme"

    const-string v2, "error"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v4}, Lcom/razorpay/x_$Q_;->d()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v4}, Lcom/razorpay/x_$Q_;->d()Lorg/json/JSONObject;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "No options defined"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    .line 7
    :try_start_1
    iget-object v5, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptionsJSON:Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No dash options defined"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public getSdkPlugins()Ljava/lang/String;
    .locals 8

    const-string v0, "isGooglePayPluginIntegrated"

    const-string v1, "isAmazonPluginIntegrated"

    .line 1
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_2

    const-string v6, "com.razorpay.RazorpayAmazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "com.razorpay.RzpGpayMerged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCardSaving()V
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CARD_SAVING_START:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/f$_G$;->a(Landroid/content/Context;)V

    return-void
.end method

.method public helpersReset()V
    .locals 0

    return-void
.end method

.method public invokePopup(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/b$_f_;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/b$_f_;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isAllowRotation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->allowRotation:Z

    return v0
.end method

.method public isMagicPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/razorpay/BaseUtils;->checkGpayCardsUpiRegistered(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUserRegisteredOnUPI(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/razorpay/BaseUtils;->checkUpiRegisteredApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isWebViewSafe(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/razorpay/CheckoutPresenterImpl;->executeWebViewCallback(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public isWebViewSafeOnUI(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/z$_w$;

    invoke-direct {v1, p0, p1, p2}, Lcom/razorpay/z$_w$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadForm(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    .line 4
    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, v0, v3}, Lcom/razorpay/AnalyticsProperty;-><init>(ILcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v0, "payment_attempt"

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 5
    iput-boolean v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->clearHistory:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v2, "%20"

    .line 7
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v0, v1, p1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityResultReceived(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "critical"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isCheckoutLoaded:Z

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "sender"

    const-string v3, "razorpay"

    .line 5
    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "message"

    .line 6
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascript: OTPElf.elfBridge.setSms(%s)"

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 8
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {p2, v2, p1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    .line 10
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_OTP_POPULATION_JS:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void

    .line 13
    :cond_1
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_CONSENT_DECLINED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void

    :cond_2
    const/16 v3, 0x63

    if-ne p1, v3, :cond_3

    .line 14
    invoke-static {p3}, Lcom/razorpay/BaseUtils;->getJSONFromIntentData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "javascript: upiIntentResponse(%s)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/razorpay/CheckoutPresenterImpl;->loadResultToWebView(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 p3, 0x14

    if-ne p1, p3, :cond_4

    .line 17
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "{\'data\':"

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "provider"

    const-string p3, "CRED"

    .line 18
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "javascript:externalAppResponse(%s)"

    new-array p3, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/razorpay/CheckoutPresenterImpl;->loadResultToWebView(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCheckoutBackPress()V
    .locals 2

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_SOFT_BACK_PRESSED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method public onCheckoutRendered()V
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_RENDERED_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/O_$v$;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/O_$v$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "razorpay_payment_id"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "error"

    .line 1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "payload"

    const-string v4, "payment_status"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 2
    :try_start_1
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    const-string v2, "fail"

    sget-object v6, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, v2, v6}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v4, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 3
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v3, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 4
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 5
    iget-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v0, v5}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->makeWebViewVisible(I)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->onError(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "razorpay_fund_account_id"

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    const-string v2, "payment_id"

    .line 13
    new-instance v6, Lcom/razorpay/AnalyticsProperty;

    sget-object v7, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v6, v0, v7}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v2, v6}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 14
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    const-string v2, "success"

    invoke-direct {v0, v2, v7}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v4, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 15
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v3, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 16
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAYMENT_COMPLETE:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 17
    iput-boolean v5, p0, Lcom/razorpay/CheckoutPresenterImpl;->isPaymentSuccessful:Z

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "external_wallet"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "Post payment parsing error"

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "critical"

    invoke-static {p1, v2, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    .line 24
    :goto_0
    iput-boolean v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/BaseUtils;->getPaymentCancelledResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method public onDismiss(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutPresenterImpl;->onError(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/razorpay/J__A$;

    invoke-direct {v0, p0}, Lcom/razorpay/J__A$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->isTwoWebViewFlow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "javascript: window.onComplete(%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v1, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/G$_X_;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/G$_X_;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFault(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method public onLoad()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/d__w$;

    invoke-direct {v1, p0}, Lcom/razorpay/d__w$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-static {v0, v1}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->sendSmsHash:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/auth-api-phone/zzu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzu;-><init>(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth-api-phone/zzu;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->loginOtpSmsTask:Lcom/google/android/gms/tasks/Task;

    .line 7
    :try_start_0
    new-instance v0, Lcom/razorpay/O$_M$;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/razorpay/O$_M$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;JJ)V

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->startSmsRetrieverForSavedCardsOTP()V

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->startSmsRetrieverForSavedCardsOTP()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageFinished(ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isMagic:Z

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/razorpay/M$$8$;->a()V

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/razorpay/CheckoutPresenterImpl;->primaryWebviewPageFinished(Ljava/lang/String;Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPageStarted(ILandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isMagic:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p1, Lcom/razorpay/M$$8$;->d:Z

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/razorpay/CheckoutUtils;->e(Landroid/content/Context;)V

    return-void
.end method

.method public onProgressChanges(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {p1, p2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->showProgressBar(I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 6

    const-string v0, "external_wallet"

    const-string v1, "wallet"

    .line 1
    iget v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 2
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->refreshPaymentSession()V

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->autoReadOtpHelper:Lcom/razorpay/AutoReadOtpHelper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->loginOtpSmsTask:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->autoReadOtpHelper:Lcom/razorpay/AutoReadOtpHelper;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error"

    invoke-static {v2, v4, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutContent:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2}, Lcom/razorpay/CheckoutPresenterImpl;->addAnalyticsData(Lorg/json/JSONObject;)V

    .line 9
    invoke-direct {p0, v2}, Lcom/razorpay/CheckoutPresenterImpl;->savePrefillData(Lorg/json/JSONObject;)V

    const-string p1, "method"

    .line 10
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x1d

    const-string v5, "card"

    if-ge v3, v4, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-static {v3, v4}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v1, p1}, Lcom/razorpay/x_$Q_;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    new-instance v2, Lcom/razorpay/AnalyticsProperty;

    sget-object v3, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v2, p1, v3}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    invoke-static {v0, v2}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 19
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->EXTERNAL_WALLET_SELECTED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/razorpay/CheckoutPresenterImpl;->onComplete(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "netbanking"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/auth-api-phone/zzu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzu;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzu;->startSmsUserConsent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 25
    new-instance p1, Lcom/razorpay/AutoReadOtpHelper;

    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/razorpay/AutoReadOtpHelper;-><init>(Landroid/app/Activity;)V

    .line 26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->AUTO_READ_OTP_SMS_RETRIEVER_API_TASK:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 29
    :cond_5
    :goto_2
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_SUBMIT:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    .line 30
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->postData()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "critical"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Error in submit"

    .line 32
    invoke-static {v0, p1}, Lcom/razorpay/d__1_;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public passPrefillToSegment()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v0}, Lcom/razorpay/x_$Q_;->j()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v1, v0, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v0, "email"

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v0}, Lcom/razorpay/x_$Q_;->i()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/razorpay/AnalyticsProperty;

    sget-object v2, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v1, v0, v2}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string v0, "contact"

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    :cond_1
    return-void
.end method

.method public primaryWebviewPageFinished(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/razorpay/CheckoutUtils;->a()V

    .line 3
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {p2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->hideProgressBar()V

    .line 4
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/razorpay/k__c$;

    invoke-direct {v2, p0}, Lcom/razorpay/k__c$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;)V

    invoke-static {p2, v2}, Lcom/razorpay/BaseUtils;->getDeviceParamValues(Landroid/content/Context;Lcom/razorpay/RzpJSONCallback;)V

    .line 5
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 6
    iget p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->paymentAttempts:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 7
    iput-boolean p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isCheckoutLoaded:Z

    .line 8
    invoke-direct {p0}, Lcom/razorpay/CheckoutPresenterImpl;->sendQueuedMessagesToCheckout()V

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-wide v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutLoadStartAt:J

    sub-long/2addr v0, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "checkout_load_duration"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/razorpay/BaseUtils;->nanoTimeToSecondsString(JI)Ljava/lang/String;

    .line 13
    iget-wide v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadCompleteDuration:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preload_finish_duration"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-wide v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadCompleteDuration:J

    .line 16
    invoke-static {v3, v4, v2}, Lcom/razorpay/BaseUtils;->nanoTimeToSecondsString(JI)Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadAbortDuration:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preload_abort_duration"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-wide v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadAbortDuration:J

    .line 20
    invoke-static {v3, v4, v2}, Lcom/razorpay/BaseUtils;->nanoTimeToSecondsString(JI)Ljava/lang/String;

    .line 21
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadCompleteDuration:J

    sub-long/2addr v3, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "time_shaved_off"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v3, v4, v2}, Lcom/razorpay/BaseUtils;->nanoTimeToSecondsString(JI)Ljava/lang/String;

    .line 24
    :cond_2
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_LOADED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 25
    :cond_3
    iget-boolean p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->clearHistory:Z

    if-ne p1, p2, :cond_4

    .line 26
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {p1, p2}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->clearWebViewHistory(I)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->clearHistory:Z

    :cond_4
    return-void
.end method

.method public relay(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestExtraAnalyticsData()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getExtraAnalyticsPayload()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/razorpay/c$_2_;

    invoke-direct {v2, p0, v0}, Lcom/razorpay/c$_2_;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestOtpPermission()V
    .locals 0

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantLogoResourceId:I

    const-string v1, "OPTIONS"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v0}, Lcom/razorpay/x_$Q_;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantLogoResourceId:I

    const-string v1, "IMAGE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v0}, Lcom/razorpay/x_$Q_;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptions:Ljava/lang/String;

    const-string v1, "DASH_OPTIONS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DISABLE_FULL_SCREEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public sendDataToWebView(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/J__n_;

    invoke-direct {v1, p0, p1, p2}, Lcom/razorpay/J__n_;-><init>(Lcom/razorpay/CheckoutPresenterImpl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendOtpPermissionCallback(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/N_$R$;

    invoke-direct {v1, p0, p1}, Lcom/razorpay/N_$R$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lcom/razorpay/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rzp_app_token"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCheckoutLoadStartAt()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutLoadStartAt:J

    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/razorpay/f$_G$;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/razorpay/G_$8_;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/E$_q$;

    invoke-direct {v1, p0, p2, p1}, Lcom/razorpay/E$_q$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMerchantOptions(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptions:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptionsJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error parsing merchant dash options JSON"

    .line 3
    invoke-static {v2, v1}, Lcom/razorpay/d__1_;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptionsJSON:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "critical"

    invoke-static {v1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptionsJSON:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/razorpay/CheckoutUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/razorpay/CheckoutUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOptions(Landroid/os/Bundle;Z)Z
    .locals 7

    .line 1
    iput-boolean p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->isActivityCreated:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/razorpay/R$string;->activity_result_invalid_parameters:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return v0

    .line 5
    :cond_0
    new-instance v1, Lcom/razorpay/x_$Q_;

    const-string v2, "OPTIONS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/razorpay/x_$Q_;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    .line 6
    invoke-virtual {v1}, Lcom/razorpay/x_$Q_;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "retry"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/razorpay/Y_$H_;->a(Lorg/json/JSONObject;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v1}, Lcom/razorpay/x_$Q_;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v1}, Lcom/razorpay/x_$Q_;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->sendSmsHash:Z

    .line 11
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {v1}, Lcom/razorpay/x_$Q_;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->allowRotation:Z

    const-string v1, "IMAGE"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantLogoResourceId:I

    .line 13
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    iget-object v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/razorpay/x_$Q_;->a(Landroid/app/Activity;I)V

    .line 14
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    .line 15
    sget-object v3, Lcom/razorpay/Y_$H_;->a:Ljava/lang/String;

    sget v4, Lcom/razorpay/Y_$H_;->c:I

    sget-object v5, Lcom/razorpay/Y_$H_;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/razorpay/AnalyticsUtil;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    .line 17
    sget-object v2, Lcom/razorpay/Y_$H_;->b:Ljava/lang/String;

    const-string v3, "https://api.razorpay.com/v1/checkout/public"

    const-string v4, "version"

    invoke-static {v3, v4, v2}, Lcom/razorpay/CheckoutUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/Y_$H_;->g()Ljava/util/Map;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 20
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 21
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/razorpay/CheckoutUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/razorpay/Y_$H_;->h()Ljava/util/ArrayList;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v4}, Lcom/razorpay/x_$Q_;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 25
    invoke-virtual {v1, v4}, Lcom/razorpay/x_$Q_;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/razorpay/CheckoutUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 26
    :cond_4
    iput-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutUrl:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v1, 0x3

    .line 27
    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    .line 28
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/razorpay/R$string;->activity_result_invalid_url:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    .line 30
    :cond_5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptions:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptionsJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "critical"

    invoke-static {v1, v3, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v1, "DISABLE_FULL_SCREEN"

    const/4 v2, 0x1

    if-nez p2, :cond_a

    .line 32
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutOptions:Lcom/razorpay/x_$Q_;

    invoke-virtual {p2}, Lcom/razorpay/x_$Q_;->g()V

    .line 33
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/razorpay/CheckoutPresenterImpl;->merchantKey:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/razorpay/h;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pref_merchant_options_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    iput-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptions:Ljava/lang/String;

    const-string p2, "FRAMEWORK"

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 38
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    sget-object v4, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, p2, v4}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string p2, "framework"

    invoke-static {p2, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    :cond_6
    const-string p2, "FRAMEWORK_VERSION"

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 40
    new-instance v3, Lcom/razorpay/AnalyticsProperty;

    sget-object v4, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v3, p2, v4}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string p2, "frameworkVersion"

    invoke-static {p2, v3}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 41
    :cond_7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, v2, :cond_8

    .line 42
    iget-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/razorpay/CheckoutUtils;->a(Landroid/app/Activity;)V

    :cond_8
    const-string p2, "PRELOAD_COMPLETE_DURATION"

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadCompleteDuration:J

    :cond_9
    const-string p2, "PRELOAD_ABORT_DURATION"

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->preloadAbortDuration:J

    goto :goto_3

    :cond_a
    const-string p2, "DASH_OPTIONS"

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/razorpay/CheckoutPresenterImpl;->dashOptions:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v2, :cond_b

    .line 49
    iget-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/razorpay/CheckoutUtils;->a(Landroid/app/Activity;)V

    :cond_b
    :goto_3
    return v2
.end method

.method public setPaymentID(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/razorpay/CheckoutPresenterImpl;->payment_id:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/razorpay/AnalyticsProperty;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    invoke-direct {v0, p1, v1}, Lcom/razorpay/AnalyticsProperty;-><init>(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty$Scope;)V

    const-string p1, "payment_id"

    invoke-static {p1, v0}, Lcom/razorpay/AnalyticsUtil;->addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V

    .line 3
    sget-object p1, Lcom/razorpay/AnalyticsEvent;->PAYMENT_ID_ATTACHED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;)V

    return-void
.end method

.method public setUpAddOn()V
    .locals 4

    .line 1
    new-instance v0, Lcom/razorpay/M$$8$;

    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->getWebView(I)Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/razorpay/M$$8$;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->magicBase:Lcom/razorpay/M$$8$;

    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/T_$Z$;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/razorpay/T_$Z$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/razorpay/L_$k$;

    invoke-direct {v1, p0, p1, p2}, Lcom/razorpay/L_$k$;-><init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyGPaySdkResponse(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "javascript: window.externalSDKResponse(%s)"

    .line 1
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->isCheckoutLoaded:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/razorpay/CheckoutPresenterImpl;->view:Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;

    invoke-interface {v1, v0, p1}, Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;->loadUrl(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/razorpay/CheckoutPresenterImpl;->checkoutMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
