.class public final Lcom/revenuecat/purchases/PurchasesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final convert(Lcom/revenuecat/purchases/Purchases$AttributionNetwork;)Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
    .locals 7

    const-string v0, "$this$convert"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->values()[Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->getServerValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$AttributionNetwork;->getServerValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
