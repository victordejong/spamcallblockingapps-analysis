.class final Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->postPurchases(Ljava/util/List;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
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
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $allowSharingPlayStoreAccount$inlined:Z

.field final synthetic $appUserID$inlined:Ljava/lang/String;

.field final synthetic $consumeAllTransactions$inlined:Z

.field final synthetic $onError$inlined:Lkotlin/w/b/p;

.field final synthetic $onSuccess$inlined:Lkotlin/w/b/p;

.field final synthetic $purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/revenuecat/purchases/Purchases;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-boolean p3, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$allowSharingPlayStoreAccount$inlined:Z

    iput-boolean p4, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$consumeAllTransactions$inlined:Z

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$appUserID$inlined:Ljava/lang/String;

    iput-object p6, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$onSuccess$inlined:Lkotlin/w/b/p;

    iput-object p7, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$onError$inlined:Lkotlin/w/b/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skuDetailsList"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 5
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    invoke-virtual {v4}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    .line 7
    iget-boolean v4, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$allowSharingPlayStoreAccount$inlined:Z

    .line 8
    iget-boolean v5, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$consumeAllTransactions$inlined:Z

    .line 9
    iget-object v6, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$appUserID$inlined:Ljava/lang/String;

    .line 10
    iget-object v7, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$onSuccess$inlined:Lkotlin/w/b/p;

    .line 11
    iget-object v8, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$1;->$onError$inlined:Lkotlin/w/b/p;

    .line 12
    invoke-virtual/range {v1 .. v8}, Lcom/revenuecat/purchases/Purchases;->postToBackend$purchases_release(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method
