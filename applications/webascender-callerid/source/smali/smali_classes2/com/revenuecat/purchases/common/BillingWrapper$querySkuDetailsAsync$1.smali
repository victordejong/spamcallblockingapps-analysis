.class final Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/revenuecat/purchases/PurchasesError;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $itemType:Ljava/lang/String;

.field final synthetic $onError:Lkotlin/w/b/l;

.field final synthetic $onReceiveSkuDetails:Lkotlin/w/b/l;

.field final synthetic $skuList:Ljava/util/List;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper;Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$itemType:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$skuList:Ljava/util/List;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$onReceiveSkuDetails:Lkotlin/w/b/l;

    iput-object p5, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$onError:Lkotlin/w/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$itemType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$skuList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object p1

    const-string v0, "SkuDetailsParams.newBuil\u2026SkusList(skuList).build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    new-instance v1, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1$1;

    invoke-direct {v1, p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1$1;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;Lcom/android/billingclient/api/l;)V

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;->access$withConnectedClient(Lcom/revenuecat/purchases/common/BillingWrapper;Lkotlin/w/b/l;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$querySkuDetailsAsync$1;->$onError:Lkotlin/w/b/l;

    invoke-interface {v0, p1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
