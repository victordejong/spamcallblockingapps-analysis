.class final Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lorg/json/JSONObject;

.field final synthetic $network:Lcom/revenuecat/purchases/Purchases$AttributionNetwork;

.field final synthetic $networkUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$data:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$network:Lcom/revenuecat/purchases/Purchases$AttributionNetwork;

    iput-object p3, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$networkUserId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 5

    .line 2
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getPostponedAttributionData$purchases_release()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/common/attribution/AttributionData;

    .line 4
    iget-object v2, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$data:Lorg/json/JSONObject;

    .line 5
    iget-object v3, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$network:Lcom/revenuecat/purchases/Purchases$AttributionNetwork;

    invoke-static {v3}, Lcom/revenuecat/purchases/PurchasesKt;->convert(Lcom/revenuecat/purchases/Purchases$AttributionNetwork;)Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;->$networkUserId:Ljava/lang/String;

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/common/attribution/AttributionData;-><init>(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
