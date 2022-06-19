.class final Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->invoke(Ljava/util/List;)V
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
.field final synthetic $appUserID$inlined:Ljava/lang/String;

.field final synthetic $purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

.field final synthetic $sortedByTime$inlined:Ljava/util/List;

.field final synthetic $unsyncedSubscriberAttributesByKey:Ljava/util/Map;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/String;Ljava/util/List;Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$appUserID$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$sortedByTime$inlined:Ljava/util/List;

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

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

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->invoke(Lcom/revenuecat/purchases/PurchaserInfo;Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchaserInfo;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getSubscriberAttributesManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$appUserID$inlined:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$unsyncedSubscriberAttributesByKey:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Lcom/revenuecat/purchases/subscriberattributes/BackendHelpersKt;->getAttributeErrors(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-virtual {v0, v1, v2, p2}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->markAsSynced(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 7
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    iget-object v0, p2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iget-boolean p2, p2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->$finishTransactions:Z

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-static {v0, p2, v1}, Lcom/revenuecat/purchases/Purchases;->access$consumeAndSave(Lcom/revenuecat/purchases/Purchases;ZLcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V

    .line 8
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2, p1}, Lcom/revenuecat/purchases/Purchases;->access$cachePurchaserInfo(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 9
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p2, p1}, Lcom/revenuecat/purchases/Purchases;->access$sendUpdatedPurchaserInfoToDelegateIfChanged(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchaserInfo;)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " restored"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$sortedByTime$inlined:Ljava/util/List;

    invoke-static {p2}, Lkotlin/s/k;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;->this$0:Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v0, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2$1;-><init>(Lcom/revenuecat/purchases/Purchases$restorePurchases$$inlined$let$lambda$1$2;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-static {p2, v0}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    :cond_0
    return-void
.end method
