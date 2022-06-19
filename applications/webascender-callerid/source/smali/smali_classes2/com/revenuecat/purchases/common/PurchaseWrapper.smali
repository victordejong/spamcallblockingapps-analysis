.class public final Lcom/revenuecat/purchases/common/PurchaseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final containedPurchase:Lcom/android/billingclient/api/Purchase;

.field private final isConsumable:Z

.field private final presentedOfferingIdentifier:Ljava/lang/String;

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final type:Lcom/revenuecat/purchases/common/PurchaseType;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V
    .locals 10

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v3

    const-string v0, "purchase.purchaseToken"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->d()J

    move-result-wide v4

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    move-result-object v6

    const-string v0, "purchase.sku"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/revenuecat/purchases/common/PurchaseWrapper;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "purchaseToken"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containedPurchase"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    iput-object p2, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    iput-object p5, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    iput-object p6, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    iput-object p7, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    iput-object p8, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;ILkotlin/w/c/g;)V
    .locals 10

    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 2
    invoke-direct/range {v1 .. v9}, Lcom/revenuecat/purchases/common/PurchaseWrapper;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/common/PurchaseWrapper;ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;ILjava/lang/Object;)Lcom/revenuecat/purchases/common/PurchaseWrapper;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move p1, v1

    move-object p2, v2

    move-wide p3, v3

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/revenuecat/purchases/common/PurchaseWrapper;->copy(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/android/billingclient/api/Purchase;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    return-object v0
.end method

.method public final component6()Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseWrapper;
    .locals 10

    const-string v0, "purchaseToken"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containedPurchase"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    move-object v1, v0

    move v2, p1

    move-wide v4, p3

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/revenuecat/purchases/common/PurchaseWrapper;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/revenuecat/purchases/common/PurchaseType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    iget-boolean v1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    iget-wide v2, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

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

.method public final getContainedPurchase()Lcom/android/billingclient/api/Purchase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    return-object v0
.end method

.method public final getPresentedOfferingIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final isConsumable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseWrapper(isConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->isConsumable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->purchaseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", containedPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->containedPurchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", presentedOfferingIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseWrapper;->presentedOfferingIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
