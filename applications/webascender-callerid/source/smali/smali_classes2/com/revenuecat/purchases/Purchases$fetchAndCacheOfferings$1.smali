.class final Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/Purchases;->fetchAndCacheOfferings(Ljava/lang/String;ZLcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lorg/json/JSONObject;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $completion:Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;

.field final synthetic this$0:Lcom/revenuecat/purchases/Purchases;


# direct methods
.method constructor <init>(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    iput-object p2, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->$completion:Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "offeringsJSON"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "offerings"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 5
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "packages"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    .line 7
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "platform_product_identifier"

    .line 8
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "jsonPackagesArray.getJSO\u2026form_product_identifier\")"

    invoke-static {v8, v9}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    new-instance v2, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;

    invoke-direct {v2, p0, p1}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$1;-><init>(Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;Lorg/json/JSONObject;)V

    .line 11
    new-instance p1, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;

    invoke-direct {p1, p0}, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1$2;-><init>(Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;)V

    .line 12
    invoke-static {v0, v1, v2, p1}, Lcom/revenuecat/purchases/Purchases;->access$getSkuDetails(Lcom/revenuecat/purchases/Purchases;Ljava/util/List;Lkotlin/w/b/l;Lkotlin/w/b/l;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException when building Offerings object. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->this$0:Lcom/revenuecat/purchases/Purchases;

    .line 15
    new-instance v1, Lcom/revenuecat/purchases/PurchasesError;

    .line 16
    sget-object v2, Lcom/revenuecat/purchases/PurchasesErrorCode;->UnexpectedBackendResponseError:Lcom/revenuecat/purchases/PurchasesErrorCode;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {v1, v2, p1}, Lcom/revenuecat/purchases/PurchasesError;-><init>(Lcom/revenuecat/purchases/PurchasesErrorCode;Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, Lcom/revenuecat/purchases/common/LogUtilsKt;->errorLog(Lcom/revenuecat/purchases/PurchasesError;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    .line 20
    iget-object p1, p0, Lcom/revenuecat/purchases/Purchases$fetchAndCacheOfferings$1;->$completion:Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;

    .line 21
    invoke-static {v0, v1, p1}, Lcom/revenuecat/purchases/Purchases;->access$handleErrorFetchingOfferings(Lcom/revenuecat/purchases/Purchases;Lcom/revenuecat/purchases/PurchasesError;Lcom/revenuecat/purchases/interfaces/ReceiveOfferingsListener;)V

    :goto_2
    return-void
.end method
