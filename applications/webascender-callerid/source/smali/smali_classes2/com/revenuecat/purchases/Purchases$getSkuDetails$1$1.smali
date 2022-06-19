.class final Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->invoke(Ljava/util/List;)V
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
.field final synthetic $detailsByID:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->$detailsByID:Ljava/util/HashMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skuDetails"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->$detailsByID:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    .line 6
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lkotlin/s/b0;->m(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 7
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;

    iget-object p1, p1, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1;->$onCompleted:Lkotlin/w/b/l;

    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$getSkuDetails$1$1;->$detailsByID:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
