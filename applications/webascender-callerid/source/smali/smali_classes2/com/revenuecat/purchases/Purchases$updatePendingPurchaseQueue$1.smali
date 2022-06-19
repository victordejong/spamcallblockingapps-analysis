.class final Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->updatePendingPurchaseQueue$purchases_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getBillingWrapper$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/BillingWrapper;

    move-result-object v0

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryPurchases(Ljava/lang/String;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1}, Lcom/revenuecat/purchases/Purchases;->access$getBillingWrapper$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/BillingWrapper;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryPurchases(Ljava/lang/String;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->isSuccessful()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->isSuccessful()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v2}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->getPurchasesByHashedToken()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 7
    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->getPurchasesByHashedToken()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->cleanPreviouslySentTokens(Ljava/util/Set;Ljava/util/Set;)V

    .line 9
    iget-object v5, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    .line 10
    invoke-static {v5}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->getPurchasesByHashedToken()Ljava/util/Map;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->getPurchasesByHashedToken()Ljava/util/Map;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->getActivePurchasesNotInCache(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 14
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getAllowSharingPlayStoreAccount()Z

    move-result v7

    .line 15
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getFinishTransactions()Z

    move-result v8

    .line 16
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$updatePendingPurchaseQueue$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x30

    const/4 v13, 0x0

    .line 17
    invoke-static/range {v5 .. v13}, Lcom/revenuecat/purchases/Purchases;->postPurchases$default(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
