.class public final Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;
.super Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/Backend;->postReceiptData(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/revenuecat/purchases/common/ProductInfo;Lkotlin/w/b/p;Lkotlin/w/b/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/util/Map;

.field final synthetic $cacheKey:Ljava/util/List;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/Backend;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/Backend;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->$body:Ljava/util/Map;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->$cacheKey:Ljava/util/List;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/Backend;->access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->$body:Ljava/util/Map;

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v2}, Lcom/revenuecat/purchases/common/Backend;->getAuthenticationHeaders$common_release()Ljava/util/Map;

    move-result-object v2

    const-string v3, "/receipts"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lcom/revenuecat/purchases/common/HTTPClient;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/Backend;->getPostReceiptCallbacks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->$cacheKey:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/w/b/p;

    invoke-virtual {v1}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/w/b/q;

    .line 5
    :try_start_1
    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v3, p1}, Lcom/revenuecat/purchases/common/Backend;->access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/revenuecat/purchases/common/FactoriesKt;->buildPurchaserInfo(Lorg/json/JSONObject;)Lcom/revenuecat/purchases/PurchaserInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getBody()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v3, Lkotlin/r;->a:Lkotlin/r;

    .line 8
    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getResponseCode()I

    move-result v3

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getBody()Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lkotlin/w/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-static {v2}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Ljava/lang/Exception;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v3, Lkotlin/r;->a:Lkotlin/r;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lkotlin/w/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/Backend;->getPostReceiptCallbacks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$postReceiptData$call$1;->$cacheKey:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/w/b/q;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 6
    invoke-interface {v1, p1, v2, v3}, Lkotlin/w/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0

    throw p1
.end method
