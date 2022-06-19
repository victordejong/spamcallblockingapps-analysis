.class final Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->makePurchaseAsync(Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Ljava/lang/String;)V
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $replaceSkuInfo:Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

.field final synthetic $skuDetails:Lcom/android/billingclient/api/SkuDetails;

.field final synthetic this$0:Lcom/revenuecat/purchases/common/BillingWrapper;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$skuDetails:Lcom/android/billingclient/api/SkuDetails;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$replaceSkuInfo:Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    iput-object p4, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$activity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/f;->e()Lcom/android/billingclient/api/f$a;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$skuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/f$a;->d(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/f$a;

    .line 4
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$replaceSkuInfo:Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->getOldPurchase()Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->getOldPurchase()Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/billingclient/api/f$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/f$a;

    .line 6
    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->getProrationMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/f$a;->c(I)Lcom/android/billingclient/api/f$a;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object p1

    const-string v0, "BillingFlowParams.newBui\u2026                }.build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->this$0:Lcom/revenuecat/purchases/common/BillingWrapper;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$makePurchaseAsync$2;->$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/revenuecat/purchases/common/BillingWrapper;->access$launchBillingFlow(Lcom/revenuecat/purchases/common/BillingWrapper;Landroid/app/Activity;Lcom/android/billingclient/api/f;)V

    return-void
.end method
