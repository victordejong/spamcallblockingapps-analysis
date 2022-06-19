.class final Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->invoke(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchaseHistoryResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    move-object p1, p2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase history retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/PurchaseHistoryRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p1, "Purchase history is empty."

    .line 5
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;->$onReceivePurchaseHistory:Lkotlin/w/b/l;

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p2

    :goto_4
    invoke-interface {p1, p2}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 7
    :cond_6
    iget-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;

    iget-object p2, p2, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;->$onReceivePurchaseHistoryError:Lkotlin/w/b/l;

    .line 8
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error receiving purchase history. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->toHumanReadableDescription(Lcom/android/billingclient/api/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Lcom/revenuecat/purchases/common/ErrorsKt;->billingResponseToPurchasesError(ILjava/lang/String;)Lcom/revenuecat/purchases/PurchasesError;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {p2, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method
