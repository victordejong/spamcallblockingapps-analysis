.class final Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->getPurchaseCompletedCallbacks()Lkotlin/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/p<",
        "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
        "Lcom/revenuecat/purchases/PurchaserInfo;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    check-cast p2, Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;->invoke(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchaserInfo;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 3

    const-string v0, "purchaseWrapper"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/revenuecat/purchases/Purchases;->access$getPurchaseCallback(Lcom/revenuecat/purchases/Purchases;Ljava/lang/String;)Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v2, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1$$special$$inlined$let$lambda$1;-><init>(Lcom/revenuecat/purchases/interfaces/MakePurchaseListener;Lcom/revenuecat/purchases/Purchases$getPurchaseCompletedCallbacks$onSuccess$1;Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/PurchaserInfo;)V

    invoke-static {v1, v2}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    :cond_0
    return-void
.end method
