.class final Lcom/revenuecat/purchases/Purchases$postToBackend$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->postToBackend$purchases_release(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/q<",
        "Lcom/revenuecat/purchases/PurchasesError;",
        "Ljava/lang/Boolean;",
        "Lorg/json/JSONObject;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $appUserID:Ljava/lang/String;

.field final synthetic $consumeAllTransactions:Z

.field final synthetic $onError:Lkotlin/w/b/p;

.field final synthetic $purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

.field final synthetic $unsyncedSubscriberAttributesByKey:Ljava/util/Map;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Ljava/util/Map;ZLcom/revenuecat/purchases/common/PurchaseWrapper;Lkotlin/w/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$appUserID:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$consumeAllTransactions:Z

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    iput-object p6, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$onError:Lkotlin/w/b/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;ZLorg/json/JSONObject;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;ZLorg/json/JSONObject;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2}, Lcom/revenuecat/purchases/Purchases;->access$getSubscriberAttributesManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$appUserID:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    .line 5
    invoke-static {p3}, Lcom/revenuecat/purchases/subscriberattributes/BackendHelpersKt;->getAttributeErrors(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p3

    .line 6
    invoke-virtual {p2, v0, v1, p3}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->markAsSynced(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    iget-boolean p3, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$consumeAllTransactions:Z

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    invoke-static {p2, p3, v0}, Lcom/revenuecat/purchases/Purchases;->access$consumeAndSave(Lcom/revenuecat/purchases/Purchases;ZLcom/revenuecat/purchases/common/PurchaseWrapper;)V

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$onError:Lkotlin/w/b/p;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/revenuecat/purchases/Purchases$postToBackend$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    invoke-interface {p2, p3, p1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
