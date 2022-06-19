.class public abstract Lcom/razorpay/BaseCheckoutOtpelfActivity;
.super Lcom/razorpay/b__J_;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/b__J_;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "isGooglePayPluginIntegrated"

    const-string v1, "isAmazonPluginIntegrated"

    .line 1
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getAllPluginsFromManifest(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v4, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;

    invoke-direct {v4, p0, p0, v2}, Lcom/razorpay/PluginOtpElfCheckoutPresenterImpl;-><init>(Landroid/app/Activity;Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;Ljava/util/HashMap;)V

    iput-object v4, p0, Lcom/razorpay/b__J_;->presenter:Lcom/razorpay/CheckoutPresenter;

    .line 4
    new-instance v5, Lcom/razorpay/PluginCheckoutBridge;

    check-cast v4, Lcom/razorpay/PluginCheckoutInteractor;

    invoke-direct {v5, v4, v3}, Lcom/razorpay/PluginCheckoutBridge;-><init>(Lcom/razorpay/PluginCheckoutInteractor;I)V

    iput-object v5, p0, Lcom/razorpay/b__J_;->checkoutBridgeObject:Ljava/lang/Object;

    .line 5
    invoke-super {p0, p1}, Lcom/razorpay/b__J_;->onCreate(Landroid/os/Bundle;)V

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "com.razorpay.RazorpayAmazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "com.razorpay.RzpGpayMerged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    :cond_2
    const-class v6, Lcom/razorpay/RzpPlugin;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/razorpay/RzpPlugin;

    .line 15
    sget-object v6, Lcom/razorpay/Y_$H_;->a:Ljava/lang/String;

    sget v7, Lcom/razorpay/Y_$H_;->c:I

    sget-object v8, Lcom/razorpay/Y_$H_;->b:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lcom/razorpay/RzpPlugin;->isCompatible(Ljava/lang/String;ILjava/lang/String;)Lcom/razorpay/RzpPluginCompatibilityResponse;

    move-result-object v6

    .line 16
    invoke-virtual {v6}, Lcom/razorpay/RzpPluginCompatibilityResponse;->isCompatible()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v5, 0x7

    .line 17
    invoke-virtual {v6}, Lcom/razorpay/RzpPluginCompatibilityResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/razorpay/b__J_;->destroy(ILjava/lang/String;)V

    return-void

    .line 18
    :cond_3
    new-instance v6, Lcom/razorpay/B$$W$;

    invoke-direct {v6, p0}, Lcom/razorpay/B$$W$;-><init>(Lcom/razorpay/BaseCheckoutOtpelfActivity;)V

    invoke-interface {v5, p0, v6}, Lcom/razorpay/RzpPlugin;->isRegistered(Landroid/content/Context;Lcom/razorpay/RzpPluginRegisterCallback;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_1

    :catch_4
    move-exception v5

    .line 19
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    return-void

    .line 20
    :cond_5
    :goto_2
    new-instance v0, Lcom/razorpay/S__Z$;

    invoke-direct {v0, p0, p0}, Lcom/razorpay/S__Z$;-><init>(Landroid/app/Activity;Lcom/razorpay/CheckoutPresenterImpl$CheckoutView;)V

    iput-object v0, p0, Lcom/razorpay/b__J_;->presenter:Lcom/razorpay/CheckoutPresenter;

    .line 21
    new-instance v1, Lcom/razorpay/CheckoutBridge;

    check-cast v0, Lcom/razorpay/CheckoutInteractor;

    invoke-direct {v1, v0, v3}, Lcom/razorpay/CheckoutBridge;-><init>(Lcom/razorpay/CheckoutInteractor;I)V

    iput-object v1, p0, Lcom/razorpay/b__J_;->checkoutBridgeObject:Ljava/lang/Object;

    .line 22
    invoke-super {p0, p1}, Lcom/razorpay/b__J_;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
