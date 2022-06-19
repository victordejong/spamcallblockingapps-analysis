.class final Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->queryAllPurchases(Lkotlin/w/b/l;Lkotlin/w/b/l;)V
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
.field final synthetic $onReceivePurchaseHistory:Lkotlin/w/b/l;

.field final synthetic $onReceivePurchaseHistoryError:Lkotlin/w/b/l;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->$onReceivePurchaseHistory:Lkotlin/w/b/l;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->$onReceivePurchaseHistoryError:Lkotlin/w/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subsPurchasesList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;

    invoke-direct {v1, p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryAllPurchases$1;->$onReceivePurchaseHistoryError:Lkotlin/w/b/l;

    const-string v2, "inapp"

    .line 5
    invoke-virtual {v0, v2, v1, p1}, Lcom/revenuecat/purchases/common/BillingWrapper;->queryPurchaseHistoryAsync(Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method
