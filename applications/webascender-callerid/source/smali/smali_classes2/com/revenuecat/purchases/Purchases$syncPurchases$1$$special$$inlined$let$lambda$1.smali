.class final Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lcom/revenuecat/purchases/PurchaserInfo;",
        "Lorg/json/JSONObject;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $allPurchases$inlined:Ljava/util/List;

.field final synthetic $appUserID$inlined:Ljava/lang/String;

.field final synthetic $purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

.field final synthetic $unsyncedSubscriberAttributesByKey:Ljava/util/Map;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/String;Lcom/revenuecat/purchases/Purchases$syncPurchases$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$appUserID$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$allPurchases$inlined:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchaserInfo;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->invoke(Lcom/revenuecat/purchases/PurchaserInfo;Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchaserInfo;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getSubscriberAttributesManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$appUserID$inlined:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Lcom/revenuecat/purchases/subscriberattributes/BackendHelpersKt;->getAttributeErrors(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-virtual {v0, v1, v2, p2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->markAsSynced(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object p2

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->addSuccessfullyPostedToken(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2, p1}, Lcom/revenuecat/purchases/Purchases;->access$cachePurchaserInfo(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 9
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$syncPurchases$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2, p1}, Lcom/revenuecat/purchases/Purchases;->access$sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " synced"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    return-void
.end method
