.class public final Lcom/revenuecat/purchases/common/PurchaseType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/common/PurchaseType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/revenuecat/purchases/common/PurchaseType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSKUType(Ljava/lang/String;)Lcom/revenuecat/purchases/common/PurchaseType;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x360a33

    if-eq v0, v1, :cond_2

    const v1, 0x5fb1edc

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "inapp"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->INAPP:Lcom/revenuecat/purchases/common/PurchaseType;

    goto :goto_1

    :cond_2
    const-string v0, "subs"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->SUBS:Lcom/revenuecat/purchases/common/PurchaseType;

    goto :goto_1

    .line 4
    :cond_3
    :goto_0
    sget-object p1, Lcom/revenuecat/purchases/common/PurchaseType;->UNKNOWN:Lcom/revenuecat/purchases/common/PurchaseType;

    :goto_1
    return-object p1
.end method
