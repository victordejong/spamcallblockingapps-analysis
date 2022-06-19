.class public final Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->getPurchasesUpdatedListener()Lcom/revenuecat/purchases/common/BillingWrapper$PurchasesUpdatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesFailedToUpdate(Ljava/util/List;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p3}, Lcom/revenuecat/purchases/common/ErrorsKt;->billingResponseToPurchasesError(ILjava/lang/String;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    .line 2
    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {p3}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/revenuecat/purchases/PurchasesState;->getProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x77

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 5
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0, p3, p1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {p3}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/revenuecat/purchases/PurchasesState;->getPurchaseCallbacks()Ljava/util/Map;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "emptyMap()"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7b

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/revenuecat/purchases/PurchasesState;->copy$default(Lcom/revenuecat/purchases/PurchasesState;Ljava/lang/Boolean;Lcom/revenuecat/purchases/interfaces/UpdatedPurchaserInfoListener;Ljava/util/Map;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;Lcom/revenuecat/purchases/PurchaserInfo;ZZILjava/lang/Object;)Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revenuecat/purchases/Purchases;->setState$purchases_release(Lcom/revenuecat/purchases/PurchasesState;)V

    .line 8
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    .line 9
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    .line 10
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1, v0, p1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;Lcom/revenuecat/purchases/PurchasesError;)V

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    sget-object p1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public onPurchasesUpdated(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchases"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->getState$purchases_release()Lcom/revenuecat/purchases/PurchasesState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/revenuecat/purchases/PurchasesState;->getProductChangeCallback()Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v4}, Lcom/revenuecat/purchases/Purchases;->access$getAndClearProductChangeCallback(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v5, v4}, Lcom/revenuecat/purchases/Purchases;->access$getProductChangeCompletedCallbacks(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)Lkotlin/l;

    move-result-object v5

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v4}, Lcom/revenuecat/purchases/Purchases;->access$getPurchaseCompletedCallbacks(Lcom/revenuecat/purchases/Purchases;)Lkotlin/l;

    move-result-object v5

    move-object v4, v3

    .line 6
    :goto_1
    sget-object v6, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/Purchases;->invalidatePurchaserInfoCache()V

    .line 10
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;

    invoke-direct {v0, p0, v4}, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1$onPurchasesUpdated$2;-><init>(Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    invoke-static {p1, v3, v0, v2, v3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getPurchaserInfoWith$default(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    .line 12
    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases;->getAllowSharingPlayStoreAccount()Z

    move-result v7

    .line 13
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->getFinishTransactions()Z

    move-result v8

    .line 14
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchasesUpdatedListener$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->getAppUserID()Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-virtual {v5}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/w/b/p;

    .line 16
    invoke-virtual {v5}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/w/b/p;

    move-object v5, v0

    move-object v6, p1

    .line 17
    invoke-static/range {v5 .. v11}, Lcom/revenuecat/purchases/Purchases;->access$postPurchases(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    throw p1
.end method
