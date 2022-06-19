.class final Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->invoke(Ljava/util/List;)V
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
        "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
        ">;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $subsPurchasesList:Ljava/util/List;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;->$subsPurchasesList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inAppPurchasesList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->$onReceivePurchaseHistory:Lkotlin/w/b/l;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;->$subsPurchasesList:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 7
    new-instance v5, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    .line 8
    sget-object v6, Lcom/revenuecat/purchases/common/PurchaseType;->SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

    .line 9
    invoke-direct {v5, v4, v6}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;-><init>(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 13
    new-instance v4, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    .line 14
    sget-object v5, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    .line 15
    invoke-direct {v4, v3, v5}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;-><init>(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v2, v1}, Lkotlin/s/k;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
