.class public final Lcom/razorpay/O_$v$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/O_$v$;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iput-object p2, p0, Lcom/razorpay/O_$v$;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/razorpay/O_$v$;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/razorpay/O_$v$;->b:Lcom/razorpay/CheckoutPresenterImpl;

    invoke-virtual {v1, v0}, Lcom/razorpay/CheckoutPresenterImpl;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/razorpay/O_$v$;->b:Lcom/razorpay/CheckoutPresenterImpl;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/razorpay/CheckoutPresenterImpl;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method
