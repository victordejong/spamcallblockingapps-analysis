.class public final Lcom/revenuecat/purchases/ListenerConversionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ON_ERROR_STUB:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/ListenerConversionsKt$ON_ERROR_STUB$1;->INSTANCE:Lcom/revenuecat/purchases/ListenerConversionsKt$ON_ERROR_STUB$1;

    sput-object v0, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    .line 2
    sget-object v0, Lcom/revenuecat/purchases/ListenerConversionsKt$ON_PURCHASE_ERROR_STUB$1;->INSTANCE:Lcom/revenuecat/purchases/ListenerConversionsKt$ON_PURCHASE_ERROR_STUB$1;

    sput-object v0, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;

    return-void
.end method

.method public static final createAliasWith(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Ljava/lang/String;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$createAliasWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newAppUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->createAlias(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static synthetic createAliasWith$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    sget-object p2, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->createAliasWith(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final getNonSubscriptionSkusWith(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$getNonSubscriptionSkusWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiveSkus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getSkusResponseListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->getNonSubscriptionSkus(Ljava/util/List;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    return-void
.end method

.method public static final getOfferingsWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/Offerings;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$getOfferingsWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receiveOfferingsListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->getOfferings(Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    return-void
.end method

.method public static synthetic getOfferingsWith$default(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getOfferingsWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final getPurchaserInfoWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$getPurchaserInfoWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->getPurchaserInfo(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static synthetic getPurchaserInfoWith$default(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getPurchaserInfoWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final getSkusResponseListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)",
            "Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;"
        }
    .end annotation

    const-string v0, "onReceived"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/ListenerConversionsKt$getSkusResponseListener$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt$getSkusResponseListener$1;-><init>(Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-object v0
.end method

.method public static final getSubscriptionSkusWith(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$getSubscriptionSkusWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skus"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onReceiveSkus"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getSkusResponseListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->getSubscriptionSkus(Ljava/util/List;Lcom/revenuecat/purchases/interfaces/GetSkusResponseListener;)V

    return-void
.end method

.method public static synthetic getSubscriptionSkusWith$default(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    sget-object p2, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->getSubscriptionSkusWith(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final identifyWith(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Ljava/lang/String;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$identifyWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appUserID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p3, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases;->identify(Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static synthetic identifyWith$default(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    sget-object p2, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->identifyWith(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final productChangeCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;)",
            "Lcom/revenuecat/purchases/interfaces/ProductChangeListener;"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/ListenerConversionsKt$productChangeCompletedListener$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt$productChangeCompletedListener$1;-><init>(Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-object v0
.end method

.method public static final purchaseCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;)",
            "Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt$purchaseCompletedListener$1;-><init>(Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-object v0
.end method

.method public static final purchasePackageWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Landroid/app/Activity;",
            "Lcom/revenuecat/purchases/Package;",
            "Lcom/revenuecat/purchases/UpgradeInfo;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$purchasePackageWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageToPurchase"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p5, p4}, Lcom/revenuecat/purchases/ListenerConversionsKt;->productChangeCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/Purchases;->purchasePackage(Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public static final purchasePackageWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Landroid/app/Activity;",
            "Lcom/revenuecat/purchases/Package;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$purchasePackageWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageToPurchase"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p4, p3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchaseCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->purchasePackage(Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V

    return-void
.end method

.method public static synthetic purchasePackageWith$default(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 1
    sget-object p4, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchasePackageWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static synthetic purchasePackageWith$default(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 2
    sget-object p3, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchasePackageWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/revenuecat/purchases/Package;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static final purchaseProductWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Landroid/app/Activity;",
            "Lcom/android/billingclient/api/SkuDetails;",
            "Lcom/revenuecat/purchases/UpgradeInfo;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$purchaseProductWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeInfo"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p5, p4}, Lcom/revenuecat/purchases/ListenerConversionsKt;->productChangeCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/ProductChangeListener;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/Purchases;->purchaseProduct(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lcom/revenuecat/purchases/interfaces/ProductChangeListener;)V

    return-void
.end method

.method public static final purchaseProductWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Landroid/app/Activity;",
            "Lcom/android/billingclient/api/SkuDetails;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/p<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$purchaseProductWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p4, p3}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchaseCompletedListener(Lkotlin/w/b/p;Lkotlin/w/b/p;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->purchaseProduct(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;)V

    return-void
.end method

.method public static synthetic purchaseProductWith$default(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 2
    sget-object p4, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchaseProductWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lcom/revenuecat/purchases/UpgradeInfo;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static synthetic purchaseProductWith$default(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lkotlin/w/b/p;Lkotlin/w/b/p;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 1
    sget-object p3, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_PURCHASE_ERROR_STUB:Lkotlin/w/b/p;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/revenuecat/purchases/ListenerConversionsKt;->purchaseProductWith(Lcom/revenuecat/purchases/Purchases;Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method

.method public static final receiveOfferingsListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/Offerings;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)",
            "Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/ListenerConversionsKt$receiveOfferingsListener$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt$receiveOfferingsListener$1;-><init>(Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-object v0
.end method

.method public static final receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;)",
            "Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;

    invoke-direct {v0, p0, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt$receivePurchaserInfoListener$1;-><init>(Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-object v0
.end method

.method public static final resetWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$resetWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->reset(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static synthetic resetWith$default(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->resetWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method

.method public static final restorePurchasesWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/revenuecat/purchases/Purchases;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchasesError;",
            "Lkotlin/r;",
            ">;",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/revenuecat/purchases/PurchaserInfo;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$restorePurchasesWith"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Lcom/revenuecat/purchases/ListenerConversionsKt;->receivePurchaserInfoListener(Lkotlin/w/b/l;Lkotlin/w/b/l;)Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases;->restorePurchases(Lcom/revenuecat/purchases/interfaces/ReceivePurchaserInfoListener;)V

    return-void
.end method

.method public static synthetic restorePurchasesWith$default(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/revenuecat/purchases/ListenerConversionsKt;->ON_ERROR_STUB:Lkotlin/w/b/l;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/revenuecat/purchases/ListenerConversionsKt;->restorePurchasesWith(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    return-void
.end method
