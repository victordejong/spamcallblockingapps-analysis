.class final Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;->invoke(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchaserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

.field final synthetic $purchaseCallback:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

.field final synthetic $purchaseWrapper$inlined:Lcom/revenuecat/purchases/common/PurchaseWrapper;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$purchaseCallback:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$purchaseWrapper$inlined:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$purchaseCallback:Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$purchaseWrapper$inlined:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getContainedPurchase()Lcom/android/billingclient/api/Purchase;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;->$info$inlined:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-interface {v0, v1, v2}, Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;->onCompleted(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/PurchaserInfo;)V

    return-void
.end method
