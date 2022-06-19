.class final Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->findPurchaseInPurchaseHistory(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/p;)V
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
.field final synthetic $completion:Lkotlin/w/b/p;

.field final synthetic $sku:Ljava/lang/String;

.field final synthetic $skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/w/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$skuType:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$completion:Lkotlin/w/b/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/c;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->invoke(Lcom/android/billingclient/api/c;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/c;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[QueryPurchases] Querying Purchase with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$skuType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;->$skuType:Ljava/lang/String;

    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$findPurchaseInPurchaseHistory$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/c;->h(Ljava/lang/String;Lcom/android/billingclient/api/j;)V

    return-void
.end method
