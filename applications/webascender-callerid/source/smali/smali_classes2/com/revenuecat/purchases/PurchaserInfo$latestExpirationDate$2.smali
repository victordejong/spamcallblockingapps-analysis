.class final Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/PurchaserInfo;-><init>(Lcom/revenuecat/purchases/EntitlementInfos;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Date;Lorg/json/JSONObject;ILjava/util/Date;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revenuecat/purchases/PurchaserInfo;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/PurchaserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2;->this$0:Lcom/revenuecat/purchases/PurchaserInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2;->invoke()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Date;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2;->this$0:Lcom/revenuecat/purchases/PurchaserInfo;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/PurchaserInfo;->getAllExpirationDatesByProduct()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2$$special$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/revenuecat/purchases/PurchaserInfo$latestExpirationDate$2$$special$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/s/k;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Date;

    :cond_1
    return-object v2
.end method
