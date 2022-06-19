.class final Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->replaceOldPurchaseWithNewProduct(Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lcom/android/billingclient/api/g;",
        "Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $appUserID:Ljava/lang/String;

.field final synthetic $listener:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

.field final synthetic $presentedOfferingIdentifier:Ljava/lang/String;

.field final synthetic $product:Lcom/android/billingclient/api/SkuDetails;

.field final synthetic $upgradeInfo:Lcom/revenuecat/purchases/UpgradeInfo;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/UpgradeInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$upgradeInfo:Lcom/revenuecat/purchases/UpgradeInfo;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$appUserID:Ljava/lang/String;

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$product:Lcom/android/billingclient/api/SkuDetails;

    iput-object p6, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$presentedOfferingIdentifier:Ljava/lang/String;

    iput-object p7, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$listener:Lcom/revenuecat/purchases/interfaces/PurchaseErrorListener;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/g;

    check-cast p2, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->invoke(Lcom/android/billingclient/api/g;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/android/billingclient/api/g;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/revenuecat/purchases/common/UtilsKt;->isSuccessful(Lcom/android/billingclient/api/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found existing purchase for sku: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$upgradeInfo:Lcom/revenuecat/purchases/UpgradeInfo;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/UpgradeInfo;->getOldSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {p1}, Lcom/revenuecat/purchases/Purchases;->access$getBillingWrapper$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/BillingWrapper;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$activity:Landroid/app/Activity;

    .line 6
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$appUserID:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$product:Lcom/android/billingclient/api/SkuDetails;

    .line 8
    new-instance v4, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$upgradeInfo:Lcom/revenuecat/purchases/UpgradeInfo;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/UpgradeInfo;->getProrationMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, p2, p1}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;-><init>(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)V

    .line 9
    iget-object v5, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$presentedOfferingIdentifier:Ljava/lang/String;

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/revenuecat/purchases/common/BillingWrapper;->makePurchaseAsync(Landroid/app/Activity;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t find existing purchase for sku: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->$upgradeInfo:Lcom/revenuecat/purchases/UpgradeInfo;

    invoke-virtual {p2}, Lcom/revenuecat/purchases/UpgradeInfo;->getOldSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance p2, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;

    invoke-direct {p2, p0}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$1;-><init>(Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;)V

    invoke-static {p1, p2}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There was an error trying to upgrade. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BillingResponseCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/ErrorsKt;->getBillingResponseCodeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1$2;-><init>(Lcom/revenuecat/purchases/Purchases$replaceOldPurchaseWithNewProduct$1;Lcom/android/billingclient/api/g;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    :goto_0
    return-void
.end method
