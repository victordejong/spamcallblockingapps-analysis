.class public final Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final buildLegacySubscriberAttributes(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttribute;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$buildLegacySubscriberAttributes"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "attributesJSONObject"

    .line 2
    invoke-static {p0, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt;->buildSubscriberAttributesMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSubscriberAttributesMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttribute;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$buildSubscriberAttributesMap"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "this.keys()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/b0/e;->a(Ljava/util/Iterator;)Lkotlin/b0/d;

    move-result-object v0

    new-instance v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt$buildSubscriberAttributesMap$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt$buildSubscriberAttributesMap$1;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lkotlin/b0/e;->h(Lkotlin/b0/d;Lkotlin/w/b/l;)Lkotlin/b0/d;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lkotlin/s/b0;->s(Lkotlin/b0/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final buildSubscriberAttributesMapPerUser(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttribute;",
            ">;>;"
        }
    .end annotation

    const-string v0, "$this$buildSubscriberAttributesMapPerUser"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "attributesJSONObject.keys()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/b0/e;->a(Ljava/util/Iterator;)Lkotlin/b0/d;

    move-result-object v0

    new-instance v1, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt$buildSubscriberAttributesMapPerUser$1;

    invoke-direct {v1, p0}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesFactoriesKt$buildSubscriberAttributesMapPerUser$1;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lkotlin/b0/e;->h(Lkotlin/b0/d;Lkotlin/w/b/l;)Lkotlin/b0/d;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lkotlin/s/b0;->s(Lkotlin/b0/d;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
