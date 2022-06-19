.class public final Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;
.super Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/Backend;->getOfferings(Ljava/lang/String;ZLkotlin/w/b/l;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/Backend;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->$path:Ljava/lang/String;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/Backend;->access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->$path:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v2}, Lcom/revenuecat/purchases/common/Backend;->getAuthenticationHeaders$common_release()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v3, v2}, Lcom/revenuecat/purchases/common/HTTPClient;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/Backend;->getOfferingsCallbacks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->$path:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/w/b/l;

    invoke-virtual {v1}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/w/b/l;

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v3, p1}, Lcom/revenuecat/purchases/common/Backend;->access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lkotlin/w/c/k;->d(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-static {v2}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Ljava/lang/Exception;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v3, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {v1, v2}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v2

    invoke-static {v2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v3, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {v1, v2}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/Backend;->getOfferingsCallbacks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$getOfferings$call$1;->$path:Ljava/lang/String;

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

    check-cast v1, Lkotlin/w/b/l;

    .line 5
    invoke-interface {v1, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1
.end method
