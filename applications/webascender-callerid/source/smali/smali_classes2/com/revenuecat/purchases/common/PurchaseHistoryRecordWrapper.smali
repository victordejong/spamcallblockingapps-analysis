.class public final Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isConsumable:Z

.field private final purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final type:Lcom/revenuecat/purchases/common/PurchaseType;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V
    .locals 9

    const-string v0, "purchaseHistoryRecord"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "purchaseHistoryRecord.purchaseToken"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->b()J

    move-result-wide v4

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    move-result-object v6

    const-string v0, "purchaseHistoryRecord.sku"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    .line 6
    invoke-direct/range {v1 .. v8}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V
    .locals 1

    const-string v0, "purchaseToken"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseHistoryRecord"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    iput-object p2, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    iput-wide p3, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    iput-object p5, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    iput-object p6, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    iput-object p7, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;ILjava/lang/Object;)Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-boolean p1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move-wide p5, v0

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->copy(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/android/billingclient/api/PurchaseHistoryRecord;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    return-object v0
.end method

.method public final component6()Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;
    .locals 9

    const-string v0, "purchaseToken"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseHistoryRecord"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    move-object v1, v0

    move v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;-><init>(ZLjava/lang/String;JLjava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/revenuecat/purchases/common/PurchaseType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    iget-boolean v1, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    iget-wide v2, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    iget-object v1, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

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

.method public final getPurchaseHistoryRecord()Lcom/android/billingclient/api/PurchaseHistoryRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    return-object v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

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

    iget-wide v3, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final isConsumable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseHistoryRecordWrapper(isConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->isConsumable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseHistoryRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->purchaseHistoryRecord:Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/PurchaseHistoryRecordWrapper;->type:Lcom/revenuecat/purchases/common/PurchaseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
