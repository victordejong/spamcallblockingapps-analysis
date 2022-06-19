.class final Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;
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
        "Lcom/revenuecat/purchases/PurchasesError;",
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

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-boolean p3, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$allowSharingPlayStoreAccount$inlined:Z

    iput-boolean p4, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$consumeAllTransactions$inlined:Z

    iput-object p5, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$appUserID$inlined:Ljava/lang/String;

    iput-object p6, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$onSuccess$inlined:Lkotlin/w/b/p;

    iput-object p7, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$onError$inlined:Lkotlin/w/b/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/PurchasesError;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->invoke(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/PurchasesError;)V
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->this$0:Lcom/revenuecat/purchases/Purchases;

    .line 3
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$purchase:Lcom/revenuecat/purchases/common/PurchaseWrapper;

    .line 4
    iget-boolean v4, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$allowSharingPlayStoreAccount$inlined:Z

    .line 5
    iget-boolean v5, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$consumeAllTransactions$inlined:Z

    .line 6
    iget-object v6, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$appUserID$inlined:Ljava/lang/String;

    .line 7
    iget-object v7, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$onSuccess$inlined:Lkotlin/w/b/p;

    .line 8
    iget-object v8, p0, Lcom/revenuecat/purchases/Purchases$postPurchases$$inlined$forEach$lambda$2;->$onError$inlined:Lkotlin/w/b/p;

    const/4 v3, 0x0

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/revenuecat/purchases/Purchases;->postToBackend$purchases_release(Lcom/revenuecat/purchases/common/PurchaseWrapper;Lcom/android/billingclient/api/SkuDetails;ZZLjava/lang/String;Lkotlin/w/b/p;Lkotlin/w/b/p;)V

    return-void
.end method
