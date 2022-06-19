.class public final Lcom/revenuecat/purchases/common/ProductInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final currency:Ljava/lang/String;

.field private final duration:Ljava/lang/String;

.field private final introDuration:Ljava/lang/String;

.field private final offeringIdentifier:Ljava/lang/String;

.field private final price:Ljava/lang/Double;

.field private final productID:Ljava/lang/String;

.field private final skuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private final trialDuration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 4

    const-string v0, "productID"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/revenuecat/purchases/common/ProductInfo;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p3}, Lcom/revenuecat/purchases/common/UtilsKt;->getPriceAmount(Lcom/android/billingclient/api/SkuDetails;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->price:Ljava/lang/Double;

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->currency:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "it"

    if-eqz p3, :cond_3

    .line 4
    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p1

    :goto_3
    iput-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->duration:Ljava/lang/String;

    if-eqz p3, :cond_5

    .line 5
    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p1

    :goto_5
    iput-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->introDuration:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 6
    invoke-virtual {p3}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-static {p3, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_7

    move-object p1, p3

    :cond_7
    iput-object p1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->trialDuration:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;ILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/revenuecat/purchases/common/ProductInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/revenuecat/purchases/common/ProductInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.revenuecat.purchases.common.ProductInfo"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/revenuecat/purchases/common/ProductInfo;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->price:Ljava/lang/Double;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->price:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->a(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->duration:Ljava/lang/String;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->duration:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->introDuration:Ljava/lang/String;

    iget-object v3, p1, Lcom/revenuecat/purchases/common/ProductInfo;->introDuration:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_8

    return v2

    .line 9
    :cond_8
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->trialDuration:Ljava/lang/String;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/ProductInfo;->trialDuration:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntroDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->introDuration:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferingIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public final getTrialDuration()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->trialDuration:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "productID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->productID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offeringIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->offeringIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "price="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->price:Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->currency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "introDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/revenuecat/purchases/common/ProductInfo;->introDuration:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trialDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/revenuecat/purchases/common/ProductInfo;->trialDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
