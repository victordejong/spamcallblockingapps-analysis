.class public final Lcom/revenuecat/purchases/common/ReplaceSkuInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

.field private final prorationMode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "oldPurchase"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iput-object p2, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;ILkotlin/w/c/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;-><init>(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/common/ReplaceSkuInfo;Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/revenuecat/purchases/common/ReplaceSkuInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->copy(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)Lcom/revenuecat/purchases/common/ReplaceSkuInfo;
    .locals 1

    const-string v0, "oldPurchase"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;-><init>(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;

    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

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

.method public final getOldPurchase()Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    return-object v0
.end method

.method public final getProrationMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplaceSkuInfo(oldPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->oldPurchase:Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prorationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/ReplaceSkuInfo;->prorationMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
