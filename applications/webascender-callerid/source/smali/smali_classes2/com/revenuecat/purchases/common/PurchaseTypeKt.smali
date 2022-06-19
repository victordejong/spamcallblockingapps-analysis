.class public final Lcom/revenuecat/purchases/common/PurchaseTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toSKUType(Lcom/revenuecat/purchases/common/PurchaseType;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$toSKUType"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/common/PurchaseTypeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "subs"

    goto :goto_0

    :cond_2
    const-string p0, "inapp"

    :goto_0
    return-object p0
.end method
