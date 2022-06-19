.class public final Lcom/revenuecat/purchases/common/attribution/AttributionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:Lorg/json/JSONObject;

.field private final network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field private final networkUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/common/attribution/AttributionData;Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;ILjava/lang/Object;)Lcom/revenuecat/purchases/common/attribution/AttributionData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/common/attribution/AttributionData;->copy(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)Lcom/revenuecat/purchases/common/attribution/AttributionData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final component2()Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)Lcom/revenuecat/purchases/common/attribution/AttributionData;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/common/attribution/AttributionData;

    invoke-direct {v0, p1, p2, p3}, Lcom/revenuecat/purchases/common/attribution/AttributionData;-><init>(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/common/attribution/AttributionData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/common/attribution/AttributionData;

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getNetwork()Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    return-object v0
.end method

.method public final getNetworkUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributionData(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->network:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/attribution/AttributionData;->networkUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
