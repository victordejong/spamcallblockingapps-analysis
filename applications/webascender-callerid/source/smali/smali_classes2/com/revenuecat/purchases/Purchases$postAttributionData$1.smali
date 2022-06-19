.class final Lcom/revenuecat/purchases/Purchases$postAttributionData$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->postAttributionData$purchases_release(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $jsonObject:Lorg/json/JSONObject;

.field final synthetic $network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field final synthetic $networkUserId:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$networkUserId:Ljava/lang/String;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$jsonObject:Lorg/json/JSONObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->invoke(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getIdentityManager$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/identity/IdentityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revenuecat/purchases/identity/IdentityManager;->getCurrentAppUserID()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v1

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    invoke-virtual {v1, v2, v0}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->getCachedAttributionData(Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$networkUserId:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/revenuecat/purchases/Purchases;->access$generateAttributionDataCacheValue(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Attribution data is the same as latest. Skipping."

    .line 6
    invoke-static {p1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rc_gps_adid"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$jsonObject:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$networkUserId:Ljava/lang/String;

    const-string v4, "rc_attribution_network_id"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v1}, Lcom/revenuecat/purchases/Purchases;->access$getBackend$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/Backend;

    move-result-object v1

    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    iget-object v4, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$jsonObject:Lorg/json/JSONObject;

    new-instance v5, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;

    invoke-direct {v5, v0, v2, p0, p1}, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/revenuecat/purchases/Purchases$postAttributionData$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;)V

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/revenuecat/purchases/common/Backend;->postAttributionData(Ljava/lang/String;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Lorg/json/JSONObject;Lkotlin/w/b/a;)V

    :goto_0
    return-void
.end method
