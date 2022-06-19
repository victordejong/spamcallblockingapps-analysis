.class public final Lcom/razorpay/l_$w$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/razorpay/RzpJSONCallback;


# direct methods
.method public constructor <init>(Lcom/razorpay/RzpJSONCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/l_$w$;->a:Lcom/razorpay/RzpJSONCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "warning"

    const-string v1, "error"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://approvals-api.getsimpl.com/my-ip"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "GET"

    .line 3
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x96

    .line 4
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/16 v2, 0xfa

    .line 5
    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 7
    invoke-static {v3}, Lcom/razorpay/BaseUtils;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    iget-object v4, p0, Lcom/razorpay/l_$w$;->a:Lcom/razorpay/RzpJSONCallback;

    invoke-interface {v4, v2}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/razorpay/l_$w$;->a:Lcom/razorpay/RzpJSONCallback;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    .line 11
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 12
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 13
    :catch_3
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/razorpay/l_$w$;->a:Lcom/razorpay/RzpJSONCallback;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "timeout"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/razorpay/RzpJSONCallback;->onResponse(Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    return-void

    :goto_4
    if-eqz v2, :cond_2

    .line 14
    :try_start_6
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 15
    :cond_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
