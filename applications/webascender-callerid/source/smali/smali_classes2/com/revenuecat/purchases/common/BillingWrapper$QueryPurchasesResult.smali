.class public final Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryPurchasesResult"
.end annotation


# instance fields
.field private final purchasesByHashedToken:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchasesByHashedToken"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    iput-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;ILjava/util/Map;ILjava/lang/Object;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->copy(ILjava/util/Map;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    return v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(ILjava/util/Map;)Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;)",
            "Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;"
        }
    .end annotation

    const-string v0, "purchasesByHashedToken"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;-><init>(ILjava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;

    iget v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    iget v1, p1, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    iget-object p1, p1, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

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

.method public final getPurchasesByHashedToken()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/common/PurchaseWrapper;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryPurchasesResult(responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", purchasesByHashedToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$QueryPurchasesResult;->purchasesByHashedToken:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
