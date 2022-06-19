.class public final Lcom/revenuecat/purchases/common/FactoriesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final buildEntitlementInfo(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;)Lcom/revenuecat/purchases/EntitlementInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "expires_date"

    .line 1
    invoke-static {v0, v2}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    const-string v2, "unsubscribe_detected_at"

    .line 2
    invoke-static {v1, v2}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    const-string v2, "billing_issues_detected_at"

    .line 3
    invoke-static {v1, v2}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 4
    new-instance v2, Lcom/revenuecat/purchases/EntitlementInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v10, :cond_2

    if-eqz p3, :cond_0

    move-object/from16 v5, p3

    goto :goto_0

    .line 5
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    :goto_0
    invoke-virtual {v10, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v10, :cond_4

    if-nez v14, :cond_3

    if-nez v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v6, 0x1

    :goto_4
    const-string v3, "period_type"

    .line 6
    invoke-static {v1, v3}, Lcom/revenuecat/purchases/common/FactoriesKt;->optPeriodType(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/revenuecat/purchases/PeriodType;

    move-result-object v7

    const-string v3, "purchase_date"

    .line 7
    invoke-static {v0, v3}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string v3, "original_purchase_date"

    .line 8
    invoke-static {v1, v3}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->getDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const-string v3, "store"

    .line 9
    invoke-static {v1, v3}, Lcom/revenuecat/purchases/common/FactoriesKt;->getStore(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/revenuecat/purchases/Store;

    move-result-object v11

    const-string v3, "product_identifier"

    .line 10
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "getString(\"product_identifier\")"

    invoke-static {v12, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_sandbox"

    .line 11
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object v3, v2

    move-object/from16 v4, p1

    .line 12
    invoke-direct/range {v3 .. v15}, Lcom/revenuecat/purchases/EntitlementInfo;-><init>(Ljava/lang/String;ZZLcom/revenuecat/purchases/PeriodType;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/revenuecat/purchases/Store;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;)V

    return-object v2
.end method

.method private static final buildEntitlementInfos(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Date;)Lcom/revenuecat/purchases/EntitlementInfos;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "product_identifier"

    .line 5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "entitlement"

    const-string v7, "entitlementId"

    if-eqz v5, :cond_3

    .line 7
    invoke-static {v2, v7}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "subscriptions.getJSONObject(productIdentifier)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v3, v2, v4, p3}, Lcom/revenuecat/purchases/common/FactoriesKt;->buildEntitlementInfo(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;)Lcom/revenuecat/purchases/EntitlementInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-static {v2, v7}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "nonSubscriptionsLatestPu\u2026Object(productIdentifier)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v3, v2, v4, p3}, Lcom/revenuecat/purchases/common/FactoriesKt;->buildEntitlementInfo(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;)Lcom/revenuecat/purchases/EntitlementInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    new-instance p0, Lcom/revenuecat/purchases/EntitlementInfos;

    invoke-direct {p0, v0}, Lcom/revenuecat/purchases/EntitlementInfos;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static final buildPurchaserInfo(Lorg/json/JSONObject;)Lcom/revenuecat/purchases/PurchaserInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "$this$buildPurchaserInfo"

    invoke-static {v6, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    .line 1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "non_subscriptions"

    .line 2
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "nonSubscriptions.keys()"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    add-int/lit8 v9, v9, -0x1

    .line 8
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 9
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v4, "subscriptions"

    .line 10
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 11
    invoke-static {v7, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->parseExpirations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 12
    invoke-static {v7}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->parsePurchaseDates(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v3}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->parsePurchaseDates(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/s/b0;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "entitlements"

    .line 13
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "request_date"

    .line 14
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/revenuecat/purchases/utils/Iso8601Utils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    const-string v11, "first_seen"

    .line 15
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/revenuecat/purchases/utils/Iso8601Utils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    if-eqz v9, :cond_2

    .line 16
    invoke-static {v9, v7, v3, v10}, Lcom/revenuecat/purchases/common/FactoriesKt;->buildEntitlementInfos(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Date;)Lcom/revenuecat/purchases/EntitlementInfos;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    new-instance v3, Lcom/revenuecat/purchases/EntitlementInfos;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-string v9, "emptyMap()"

    invoke-static {v7, v9}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lcom/revenuecat/purchases/EntitlementInfos;-><init>(Ljava/util/Map;)V

    .line 18
    :goto_1
    invoke-static {v1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "management_url"

    invoke-static {v1, v0}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->optNullableString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "original_purchase_date"

    .line 19
    invoke-static {v1, v7}, Lcom/revenuecat/purchases/utils/JSONObjectExtensionsKt;->optNullableString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    .line 20
    invoke-static {v7}, Lcom/revenuecat/purchases/utils/Iso8601Utils;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v9

    :goto_2
    move-object v12, v7

    goto :goto_3

    :cond_4
    move-object v12, v9

    .line 21
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/b0/e;->a(Ljava/util/Iterator;)Lkotlin/b0/d;

    move-result-object v2

    invoke-static {v2}, Lkotlin/b0/e;->l(Lkotlin/b0/d;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "requestDate"

    .line 22
    invoke-static {v10, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "schema_version"

    .line 23
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v5, "firstSeen"

    .line 24
    invoke-static {v11, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "original_app_user_id"

    .line 25
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "subscriber.optString(\"original_app_user_id\")"

    invoke-static {v13, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v14, v0

    goto :goto_4

    :cond_5
    move-object v14, v9

    .line 27
    :goto_4
    new-instance v15, Lcom/revenuecat/purchases/PurchaserInfo;

    move-object v0, v15

    move-object v1, v3

    move-object v3, v4

    move-object v4, v8

    move-object v5, v10

    move-object/from16 v6, p0

    move-object v8, v11

    move-object v9, v13

    move-object v10, v14

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/revenuecat/purchases/PurchaserInfo;-><init>(Lcom/revenuecat/purchases/EntitlementInfos;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Date;Lorg/json/JSONObject;ILjava/util/Date;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;)V

    return-object v15
.end method

.method public static final createOffering(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/revenuecat/purchases/Offering;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)",
            "Lcom/revenuecat/purchases/Offering;"
        }
    .end annotation

    const-string v0, "$this$createOffering"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packages"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const-string v5, "offeringIdentifier"

    if-ge v4, v3, :cond_1

    .line 5
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "jsonPackages.getJSONObject(i)"

    invoke-static {v6, v7}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p1, v0}, Lcom/revenuecat/purchases/common/FactoriesKt;->createPackage(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Lcom/revenuecat/purchases/Package;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/revenuecat/purchases/Offering;

    invoke-static {v0, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(\"description\")"

    invoke-static {p0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p0, v2}, Lcom/revenuecat/purchases/Offering;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static final createOfferings(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/revenuecat/purchases/Offerings;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)",
            "Lcom/revenuecat/purchases/Offerings;"
        }
    .end annotation

    const-string v0, "$this$createOfferings"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offerings"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "current_offering_id"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "jsonOfferings.getJSONObject(i)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lcom/revenuecat/purchases/common/FactoriesKt;->createOffering(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/revenuecat/purchases/Offering;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Lcom/revenuecat/purchases/Offering;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/revenuecat/purchases/Offerings;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/Offering;

    invoke-direct {p1, p0, v1}, Lcom/revenuecat/purchases/Offerings;-><init>(Lcom/revenuecat/purchases/Offering;Ljava/util/Map;)V

    return-object p1
.end method

.method public static final createPackage(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)Lcom/revenuecat/purchases/Package;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/revenuecat/purchases/Package;"
        }
    .end annotation

    const-string v0, "$this$createPackage"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offeringIdentifier"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform_product_identifier"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz p1, :cond_0

    const-string v0, "identifier"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/revenuecat/purchases/common/FactoriesKt;->toPackageType(Ljava/lang/String;)Lcom/revenuecat/purchases/PackageType;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/revenuecat/purchases/Package;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/revenuecat/purchases/Package;-><init>(Ljava/lang/String;Lcom/revenuecat/purchases/PackageType;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getStore(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/revenuecat/purchases/Store;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "play_store"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/revenuecat/purchases/Store;->PLAY_STORE:Lcom/revenuecat/purchases/Store;

    goto :goto_1

    :sswitch_1
    const-string p1, "app_store"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/revenuecat/purchases/Store;->APP_STORE:Lcom/revenuecat/purchases/Store;

    goto :goto_1

    :sswitch_2
    const-string p1, "promotional"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/revenuecat/purchases/Store;->PROMOTIONAL:Lcom/revenuecat/purchases/Store;

    goto :goto_1

    :sswitch_3
    const-string p1, "mac_app_store"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/revenuecat/purchases/Store;->MAC_APP_STORE:Lcom/revenuecat/purchases/Store;

    goto :goto_1

    :sswitch_4
    const-string p1, "stripe"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/revenuecat/purchases/Store;->STRIPE:Lcom/revenuecat/purchases/Store;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/revenuecat/purchases/Store;->UNKNOWN_STORE:Lcom/revenuecat/purchases/Store;

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x352a9fb3 -> :sswitch_4
        0x219e8253 -> :sswitch_3
        0x2d106c0e -> :sswitch_2
        0x6dd2f943 -> :sswitch_1
        0x72cbb016 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final optPeriodType(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/revenuecat/purchases/PeriodType;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x3df94319

    if-eq p1, v0, :cond_3

    const v0, 0x5fb666c

    if-eq p1, v0, :cond_2

    const v0, 0x6980f16

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "trial"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/revenuecat/purchases/PeriodType;->TRIAL:Lcom/revenuecat/purchases/PeriodType;

    goto :goto_1

    :cond_2
    const-string p1, "intro"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/revenuecat/purchases/PeriodType;->INTRO:Lcom/revenuecat/purchases/PeriodType;

    goto :goto_1

    :cond_3
    const-string p1, "normal"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/revenuecat/purchases/PeriodType;->NORMAL:Lcom/revenuecat/purchases/PeriodType;

    goto :goto_1

    .line 5
    :cond_4
    :goto_0
    sget-object p0, Lcom/revenuecat/purchases/PeriodType;->NORMAL:Lcom/revenuecat/purchases/PeriodType;

    :goto_1
    return-object p0
.end method

.method public static final toPackageType(Ljava/lang/String;)Lcom/revenuecat/purchases/PackageType;
    .locals 7

    const-string v0, "$this$toPackageType"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/PackageType;->values()[Lcom/revenuecat/purchases/PackageType;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    invoke-virtual {v5}, Lcom/revenuecat/purchases/PackageType;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    const-string v1, "$rc_"

    .line 4
    invoke-static {p0, v1, v2, v0, v4}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v5, Lcom/revenuecat/purchases/PackageType;->UNKNOWN:Lcom/revenuecat/purchases/PackageType;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/revenuecat/purchases/PackageType;->CUSTOM:Lcom/revenuecat/purchases/PackageType;

    :goto_2
    return-object v5
.end method
