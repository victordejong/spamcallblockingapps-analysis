.class public final Lcom/revenuecat/purchases/common/Backend$createAlias$1;
.super Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/Backend;->createAlias(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/a;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $appUserID:Ljava/lang/String;

.field final synthetic $newAppUserID:Ljava/lang/String;

.field final synthetic $onErrorHandler:Lkotlin/w/b/l;

.field final synthetic $onSuccessHandler:Lkotlin/w/b/a;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/Backend;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/w/b/l;",
            "Lkotlin/w/b/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$appUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$newAppUserID:Ljava/lang/String;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$onErrorHandler:Lkotlin/w/b/l;

    iput-object p5, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$onSuccessHandler:Lkotlin/w/b/a;

    invoke-direct {p0}, Lcom/revenuecat/purchases/common/Dispatcher$AsyncCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/revenuecat/purchases/common/HTTPClient$Result;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0}, Lcom/revenuecat/purchases/common/Backend;->access$getHttpClient$p(Lcom/revenuecat/purchases/common/Backend;)Lcom/revenuecat/purchases/common/HTTPClient;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subscribers/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$appUserID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/revenuecat/purchases/common/Backend;->access$encode(Lcom/revenuecat/purchases/common/Backend;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/alias"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$newAppUserID:Ljava/lang/String;

    const-string v3, "new_app_user_id"

    invoke-static {v3, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    invoke-static {v2}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-virtual {v3}, Lcom/revenuecat/purchases/common/Backend;->getAuthenticationHeaders$common_release()Ljava/util/Map;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/revenuecat/purchases/common/HTTPClient;->performRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/revenuecat/purchases/common/HTTPClient$Result;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcom/revenuecat/purchases/common/HTTPClient$Result;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->this$0:Lcom/revenuecat/purchases/common/Backend;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/common/Backend;->access$isSuccessful(Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/HTTPClient$Result;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$onSuccessHandler:Lkotlin/w/b/a;

    invoke-interface {p1}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$onErrorHandler:Lkotlin/w/b/l;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/ErrorsKt;->toPurchasesError(Lcom/revenuecat/purchases/common/HTTPClient$Result;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v1, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onError(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/Backend$createAlias$1;->$onErrorHandler:Lkotlin/w/b/l;

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
