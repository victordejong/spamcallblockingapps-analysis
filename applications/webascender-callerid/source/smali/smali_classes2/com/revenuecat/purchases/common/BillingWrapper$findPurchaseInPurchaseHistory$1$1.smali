.class final Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->invoke(Lcom/android/billingclient/api/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchaseHistoryResponse(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$completion:Lkotlin/w/b/p;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 3
    iget-object v4, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;

    iget-object v4, v4, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$sku:Ljava/lang/String;

    const-string v5, "it"

    invoke-static {v3, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 4
    :goto_0
    check-cast v2, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    if-eqz v2, :cond_2

    .line 5
    new-instance v1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    sget-object p2, Lcom/revenuecat/purchases/common/PurchaseType;->Companion:Lcom/revenuecat/purchases/common/PurchaseType$Companion;

    iget-object v3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;

    iget-object v3, v3, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$skuType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/revenuecat/purchases/common/PurchaseType$Companion;->fromSKUType(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;-><init>(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V

    .line 6
    :cond_2
    invoke-interface {v0, p1, v1}, Lkotlin/w/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
