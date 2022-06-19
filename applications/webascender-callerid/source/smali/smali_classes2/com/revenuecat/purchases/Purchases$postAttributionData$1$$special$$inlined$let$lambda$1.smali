.class final Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->invoke(Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;)V
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
.field final synthetic $adInfo$inlined:Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

.field final synthetic $appUserID:Ljava/lang/String;

.field final synthetic $newCacheValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases$postAttributionData$1;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/revenuecat/purchases/Purchases$postAttributionData$1;Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->$appUserID:Ljava/lang/String;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->$newCacheValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$postAttributionData$1;

    iput-object p4, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->$adInfo$inlined:Lcom/revenuecat/purchases/util/AdvertisingIdClient$AdInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$postAttributionData$1;

    iget-object v0, v0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    invoke-static {v0}, Lcom/revenuecat/purchases/Purchases;->access$getDeviceCache$p(Lcom/revenuecat/purchases/Purchases;)Lcom/revenuecat/purchases/common/caching/DeviceCache;

    move-result-object v0

    iget-object v1, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->this$0:Lcom/revenuecat/purchases/Purchases$postAttributionData$1;

    iget-object v1, v1, Lcom/revenuecat/purchases/Purchases$postAttributionData$1;->$network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->$appUserID:Ljava/lang/String;

    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$postAttributionData$1$$special$$inlined$let$lambda$1;->$newCacheValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/revenuecat/purchases/common/caching/DeviceCache;->cacheAttributionData(Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
