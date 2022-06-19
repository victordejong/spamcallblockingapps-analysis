.class public final Lcom/razorpay/O$_M$;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    const-wide/16 p1, 0x7d0

    const-wide/16 p3, 0x3e8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 6

    const-string v0, "error"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v1}, Lcom/razorpay/CheckoutPresenterImpl;->access$400(Lcom/razorpay/CheckoutPresenterImpl;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v3, v2, Lcom/razorpay/CheckoutPresenterImpl;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/razorpay/CheckoutPresenterImpl;->access$500(Lcom/razorpay/CheckoutPresenterImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const-string v4, "com.google.android.gms.auth.api.phone.permission.SEND"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v1}, Lcom/razorpay/CheckoutPresenterImpl;->access$600(Lcom/razorpay/CheckoutPresenterImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/AbstractMethodError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/AbstractMethodError;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v0}, Lcom/razorpay/CheckoutPresenterImpl;->access$600(Lcom/razorpay/CheckoutPresenterImpl;)V

    :goto_0
    return-void

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/razorpay/O$_M$;->a:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-static {v0}, Lcom/razorpay/CheckoutPresenterImpl;->access$600(Lcom/razorpay/CheckoutPresenterImpl;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
