.class final Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->invoke(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $offeringsJSON:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->$offeringsJSON:Lorg/json/JSONObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->invoke(Ljava/util/HashMap;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "detailsByID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->$offeringsJSON:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/revenuecat/purchases/common/FactoriesKt;->createOfferings(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/revenuecat/purchases/Offerings;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iget-object v1, v1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1, v0, p1}, Lcom/revenuecat/purchases/Purchases;->access$logMissingProducts(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/Offerings;Ljava/util/HashMap;)Lkotlin/r;

    .line 4
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iget-object p1, p1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iget-object v1, v1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->cacheOfferings(Lcom/revenuecat/purchases/Offerings;)V

    .line 6
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p1

    .line 8
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;->this$0:Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;

    iget-object p1, p1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1$2;

    invoke-direct {v1, p0, v0}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1$2;-><init>(Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;Lcom/revenuecat/purchases/Offerings;)V

    invoke-static {p1, v1}, Lcom/revenuecat/purchases/Purchases;->access$dispatch(Lcom/revenuecat/purchases/Purchases;Lkotlin/w/b/a;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p1

    throw v0
.end method
