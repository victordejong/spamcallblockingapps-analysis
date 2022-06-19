.class final Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/android/billingclient/api/c;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/c;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->invoke(Lcom/android/billingclient/api/c;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/c;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1;->$skuType:Ljava/lang/String;

    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$queryPurchaseHistoryAsync$1$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/c;->h(Ljava/lang/String;Lcom/android/billingclient/api/j;)V

    return-void
.end method
