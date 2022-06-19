.class public final Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;
.super Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/Backend;->postAttributionData(Ljava/lang/String;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Lorg/json/JSONObject;Lkotlin/w/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $appUserID:Ljava/lang/String;

.field final synthetic $body:Ljava/util/Map;

.field final synthetic $onSuccessHandler:Lkotlin/w/b/a;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/Backend;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/util/Map;Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "Lkotlin/w/b/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$appUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$body:Ljava/util/Map;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$onSuccessHandler:Lkotlin/w/b/a;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/Backend;->access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subscribers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$appUserID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/revenuecat/purchases/common/Backend;->access$encode(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/attribution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$body:Ljava/util/Map;

    .line 4
    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/common/Backend;->getAuthenticationHeaders$common_release()Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/revenuecat/purchases/common/HTTPClient;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/common/Backend;->access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/common/Backend$postAttributionData$1;->$onSuccessHandler:Lkotlin/w/b/a;

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
