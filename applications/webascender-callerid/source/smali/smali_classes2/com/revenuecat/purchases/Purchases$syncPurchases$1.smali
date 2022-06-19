.class final Lcom/revenuecat/purchases/Purchases$syncPurchases$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->syncPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/util/List<",
        "+",
        "Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;",
        ">;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "allPurchases"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v6, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getIdentityManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v15

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    .line 5
    iget-object v0, v6, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getSubscriberAttributesManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;->getUnsyncedSubscriberAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 6
    new-instance v14, Lcom/revenuecat/purchases/common/ProductInfo;

    invoke-virtual {v8}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/revenuecat/purchases/common/ProductInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;ILkotlin/w/c/g;)V

    .line 7
    iget-object v0, v6, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getBackend$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/Backend;

    move-result-object v10

    .line 8
    invoke-virtual {v8}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object v11

    .line 9
    iget-object v0, v6, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getAllowSharingPlayStoreAccount()Z

    move-result v12

    .line 10
    iget-object v0, v6, Lcom/revenuecat/purchases/Purchases$syncPurchases$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getFinishTransactions()Z

    move-result v0

    xor-int/lit8 v13, v0, 0x1

    .line 11
    invoke-static {v9}, Lcom/revenuecat/purchases/subscriberattributes/BackendHelpersKt;->toBackendMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16

    .line 12
    new-instance v18, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;

    move-object/from16 v0, v18

    move-object v1, v9

    move-object v2, v8

    move-object v3, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$1;-><init>(Ljava/util/Map;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/String;Lcom/revenuecat/purchases/Purchases$syncPurchases$1;Ljava/util/List;)V

    .line 13
    new-instance v19, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$2;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v5}, Lcom/revenuecat/purchases/Purchases$syncPurchases$1$$special$$inlined$let$lambda$2;-><init>(Ljava/util/Map;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/String;Lcom/revenuecat/purchases/Purchases$syncPurchases$1;Ljava/util/List;)V

    move-object v8, v10

    move-object v9, v11

    move-object v10, v15

    move v11, v12

    move v12, v13

    move-object/from16 v13, v16

    move-object v0, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    .line 14
    invoke-virtual/range {v8 .. v16}, Lcom/revenuecat/purchases/common/Backend;->postReceiptData(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/revenuecat/purchases/common/ProductInfo;Lkotlin/w/b/p;Lkotlin/w/b/q;)V

    move-object v15, v0

    goto :goto_0

    :cond_0
    return-void
.end method
