.class public final Lcom/revenuecat/purchases/common/Backend$performRequest$1;
.super Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/Backend;->performRequest(Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/l;Lkotlin/w/b/a;Lkotlin/w/b/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/util/Map;

.field final synthetic $onCompletedSuccessfully:Lkotlin/w/b/a;

.field final synthetic $onCompletedWithErrors:Lkotlin/w/b/q;

.field final synthetic $onError:Lkotlin/w/b/l;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/Backend;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/l;Lkotlin/w/b/a;Lkotlin/w/b/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "Lkotlin/w/b/l;",
            "Lkotlin/w/b/a;",
            "Lkotlin/w/b/q;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$body:Ljava/util/Map;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onError:Lkotlin/w/b/l;

    iput-object p5, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onCompletedSuccessfully:Lkotlin/w/b/a;

    iput-object p6, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onCompletedWithErrors:Lkotlin/w/b/q;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/Backend;->access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$path:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$body:Ljava/util/Map;

    .line 4
    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/common/Backend;->getAuthenticationHeaders$common_release()Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/revenuecat/purchases/common/HTTPClient;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/common/Backend;->access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onCompletedSuccessfully:Lkotlin/w/b/a;

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    .line 4
    iget-object v1, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onCompletedWithErrors:Lkotlin/w/b/q;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/HTTPClient$Result;->getBody()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lkotlin/w/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$performRequest$1;->$onError:Lkotlin/w/b/l;

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
