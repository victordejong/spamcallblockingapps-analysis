.class final Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->getSkuDetails(Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
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
.field final synthetic $onCompleted:Lkotlin/w/b/l;

.field final synthetic $onError:Lkotlin/w/b/l;

.field final synthetic $skus:Ljava/util/List;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$skus:Ljava/util/List;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$onCompleted:Lkotlin/w/b/l;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$onError:Lkotlin/w/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriptionsSKUDetails"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$skus:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    .line 7
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0, v2}, Lkotlin/s/b0;->m(Ljava/util/Map;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lkotlin/l;

    .line 12
    invoke-virtual {v3}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "skuToDetails.first"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v1, p1}, Lkotlin/s/k;->W(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1}, Lcom/revenuecat/purchases/Purchases;->access$getBillingWrapper$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/BillingWrapper;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;

    invoke-direct {v2, p0, v0}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;-><init>(Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;Ljava/util/HashMap;)V

    .line 17
    new-instance v0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$2;

    invoke-direct {v0, p0}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$2;-><init>(Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;)V

    const-string v3, "inapp"

    .line 18
    invoke-virtual {v1, v3, p1, v2, v0}, Lcom/revenuecat/purchases/common/BillingWrapper;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$onCompleted:Lkotlin/w/b/l;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
