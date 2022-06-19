.class public final Lcom/revenuecat/purchases/Purchases$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revenuecat/purchases/Purchases;
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
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases$Companion;-><init>()V

    return-void
.end method

.method public static synthetic addAttributionData$default(Lcom/revenuecat/purchases/Purchases$Companion;Ljava/util/Map;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Ljava/util/Map;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic addAttributionData$default(Lcom/revenuecat/purchases/Purchases$Companion;Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 1
    invoke-direct {p0}, Lcom/revenuecat/purchases/Purchases$Companion;->createDefaultExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p5

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/revenuecat/purchases/Purchases$Companion;->configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "Executors.newSingleThreadScheduledExecutor()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/Application;

    return-object p1
.end method

.method public static synthetic getDebugLogsEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFrameworkVersion$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPlatformInfo$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProxyURL$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSharedInstance$annotations()V
    .locals 0

    return-void
.end method

.method private final hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final addAttributionData(Ljava/util/Map;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/revenuecat/purchases/Purchases$AttributionNetwork;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to attribution map"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Purchases"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/revenuecat/purchases/Purchases$Companion;->addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    return-void
.end method

.method public final addAttributionData(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/revenuecat/purchases/Purchases$Companion;->getBackingFieldSharedInstance$purchases_release()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/revenuecat/purchases/PurchasesKt;->convert(Lcom/revenuecat/purchases/Purchases$AttributionNetwork;)Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases;->postAttributionData$purchases_release(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/revenuecat/purchases/Purchases$Companion$addAttributionData$1;-><init>(Lorg/json/JSONObject;Lcom/revenuecat/purchases/Purchases$AttributionNetwork;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Lkotlin/w/b/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final configure(Landroid/content/Context;Ljava/lang/String;)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p1

    return-object p1
.end method

.method public final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p1

    return-object p1
.end method

.method public final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/revenuecat/purchases/Purchases;
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/revenuecat/purchases/Purchases$Companion;->configure$default(Lcom/revenuecat/purchases/Purchases$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ILjava/lang/Object;)Lcom/revenuecat/purchases/Purchases;

    move-result-object p1

    return-object p1
.end method

.method public final configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)Lcom/revenuecat/purchases/Purchases;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p5

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "apiKey"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "service"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "android.permission.INTERNET"

    move-object/from16 v7, p0

    .line 1
    invoke-direct {v7, v0, v3}, Lcom/revenuecat/purchases/Purchases$Companion;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2
    invoke-static/range {p2 .. p2}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Application;

    if-eqz v3, :cond_0

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/revenuecat/purchases/Purchases$Companion;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v9

    .line 5
    new-instance v15, Lcom/revenuecat/purchases/common/AppConfig;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases$Companion;->getPlatformInfo()Lcom/revenuecat/purchases/common/PlatformInfo;

    move-result-object v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/revenuecat/purchases/Purchases$Companion;->getProxyURL()Ljava/net/URL;

    move-result-object v4

    move/from16 v5, p4

    .line 8
    invoke-direct {v15, v0, v5, v3, v4}, Lcom/revenuecat/purchases/common/AppConfig;-><init>(Landroid/content/Context;ZLcom/revenuecat/purchases/common/PlatformInfo;Ljava/net/URL;)V

    .line 9
    new-instance v14, Lcom/revenuecat/purchases/common/Dispatcher;

    invoke-direct {v14, v1}, Lcom/revenuecat/purchases/common/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 10
    new-instance v11, Lcom/revenuecat/purchases/common/Backend;

    .line 11
    new-instance v0, Lcom/revenuecat/purchases/common/HTTPClient;

    invoke-direct {v0, v15}, Lcom/revenuecat/purchases/common/HTTPClient;-><init>(Lcom/revenuecat/purchases/common/AppConfig;)V

    .line 12
    invoke-direct {v11, v2, v14, v0}, Lcom/revenuecat/purchases/common/Backend;-><init>(Ljava/lang/String;Lcom/revenuecat/purchases/common/Dispatcher;Lcom/revenuecat/purchases/common/HTTPClient;)V

    .line 13
    new-instance v8, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesPoster;

    invoke-direct {v8, v11}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesPoster;-><init>(Lcom/revenuecat/purchases/common/Backend;)V

    .line 14
    new-instance v12, Lcom/revenuecat/purchases/common/BillingWrapper;

    .line 15
    new-instance v0, Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;

    invoke-direct {v0, v9}, Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    invoke-direct {v12, v0, v1}, Lcom/revenuecat/purchases/common/BillingWrapper;-><init>(Lcom/revenuecat/purchases/common/BillingWrapper$ClientFactory;Landroid/os/Handler;)V

    .line 18
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    new-instance v13, Lcom/revenuecat/purchases/common/caching/DeviceCache;

    const-string v0, "prefs"

    invoke-static {v1, v0}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/revenuecat/purchases/common/caching/DeviceCache;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/revenuecat/purchases/common/caching/InMemoryCachedObject;Lcom/revenuecat/purchases/common/DateProvider;ILkotlin/w/c/g;)V

    .line 20
    new-instance v0, Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;

    invoke-direct {v0, v13}, Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;-><init>(Lcom/revenuecat/purchases/common/caching/DeviceCache;)V

    .line 21
    new-instance v1, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;

    invoke-direct {v1, v14}, Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;-><init>(Lcom/revenuecat/purchases/common/Dispatcher;)V

    .line 22
    new-instance v2, Lcom/revenuecat/purchases/Purchases;

    .line 23
    new-instance v3, Lcom/revenuecat/purchases/identity/IdentityManager;

    invoke-direct {v3, v13, v0, v11}, Lcom/revenuecat/purchases/identity/IdentityManager;-><init>(Lcom/revenuecat/purchases/common/caching/DeviceCache;Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;Lcom/revenuecat/purchases/common/Backend;)V

    .line 24
    new-instance v4, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;

    invoke-direct {v4, v0, v8, v1}, Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;-><init>(Lcom/revenuecat/purchases/subscriberattributes/caching/SubscriberAttributesCache;Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesPoster;Lcom/revenuecat/purchases/subscriberattributes/AttributionFetcher;)V

    move-object v8, v2

    move-object/from16 v10, p3

    move-object v0, v15

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    .line 25
    invoke-direct/range {v8 .. v17}, Lcom/revenuecat/purchases/Purchases;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/revenuecat/purchases/common/Backend;Lcom/revenuecat/purchases/common/BillingWrapper;Lcom/revenuecat/purchases/common/caching/DeviceCache;Lcom/revenuecat/purchases/common/Dispatcher;Lcom/revenuecat/purchases/identity/IdentityManager;Lcom/revenuecat/purchases/subscriberattributes/SubscriberAttributesManager;Lcom/revenuecat/purchases/common/AppConfig;)V

    .line 26
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0, v2}, Lcom/revenuecat/purchases/Purchases$Companion;->setSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V

    return-object v2

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Needs an application context."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API key must be set. Get this from the RevenueCat web app"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Purchases requires INTERNET permission."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBackingFieldSharedInstance$purchases_release()Lcom/revenuecat/purchases/Purchases;
    .locals 1

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/Purchases;->access$getBackingFieldSharedInstance$cp()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    return-object v0
.end method

.method public final getDebugLogsEnabled()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/common/Config;->INSTANCE:Lcom/revenuecat/purchases/common/Config;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/common/Config;->getDebugLogsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getFrameworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/Purchases;->access$getFrameworkVersion$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlatformInfo()Lcom/revenuecat/purchases/common/PlatformInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/Purchases;->access$getPlatformInfo$cp()Lcom/revenuecat/purchases/common/PlatformInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPostponedAttributionData$purchases_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/attribution/AttributionData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/Purchases;->access$getPostponedAttributionData$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProxyURL()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-static {}, Lcom/revenuecat/purchases/Purchases;->access$getProxyURL$cp()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedInstance()Lcom/revenuecat/purchases/Purchases;
    .locals 2

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getBackingFieldSharedInstance$purchases_release()Lcom/revenuecat/purchases/Purchases;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/UninitializedPropertyAccessException;

    const-string v1, "There is no singleton instance. Make sure you configure Purchases before trying to get the default instance."

    invoke-direct {v0, v1}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isBillingSupported(Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/revenuecat/purchases/interfaces/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/c;->g(Landroid/content/Context;)Lcom/android/billingclient/api/c$b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/c$b;->b()Lcom/android/billingclient/api/c$b;

    .line 3
    sget-object v0, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;->INSTANCE:Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$1;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c$b;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$b;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/c$b;->a()Lcom/android/billingclient/api/c;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$$inlined$let$lambda$1;

    invoke-direct {v0, p1, p2}, Lcom/revenuecat/purchases/Purchases$Companion$isBillingSupported$$inlined$let$lambda$1;-><init>(Lcom/android/billingclient/api/c;Lcom/revenuecat/purchases/interfaces/Callback;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/c;->k(Lcom/android/billingclient/api/e;)V

    return-void
.end method

.method public final isFeatureSupported(Ljava/lang/String;Landroid/content/Context;Lcom/revenuecat/purchases/interfaces/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/revenuecat/purchases/interfaces/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/android/billingclient/api/c;->g(Landroid/content/Context;)Lcom/android/billingclient/api/c$b;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/c$b;->b()Lcom/android/billingclient/api/c$b;

    .line 3
    sget-object v0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$1;->INSTANCE:Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$1;

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/c$b;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$b;

    .line 4
    invoke-virtual {p2}, Lcom/android/billingclient/api/c$b;->a()Lcom/android/billingclient/api/c;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/revenuecat/purchases/Purchases$Companion$isFeatureSupported$$inlined$let$lambda$1;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Lcom/revenuecat/purchases/interfaces/Callback;)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/c;->k(Lcom/android/billingclient/api/e;)V

    return-void
.end method

.method public final setBackingFieldSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/revenuecat/purchases/Purchases;->access$setBackingFieldSharedInstance$cp(Lcom/revenuecat/purchases/Purchases;)V

    return-void
.end method

.method public final setDebugLogsEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/common/Config;->INSTANCE:Lcom/revenuecat/purchases/common/Config;

    invoke-virtual {v0, p1}, Lcom/revenuecat/purchases/common/Config;->setDebugLogsEnabled(Z)V

    return-void
.end method

.method public final setPlatformInfo(Lcom/revenuecat/purchases/common/PlatformInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/revenuecat/purchases/Purchases;->access$setPlatformInfo$cp(Lcom/revenuecat/purchases/common/PlatformInfo;)V

    return-void
.end method

.method public final setPostponedAttributionData$purchases_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/revenuecat/purchases/common/attribution/AttributionData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/revenuecat/purchases/Purchases;->access$setPostponedAttributionData$cp(Ljava/util/List;)V

    return-void
.end method

.method public final setProxyURL(Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/revenuecat/purchases/Purchases;->access$setProxyURL$cp(Ljava/net/URL;)V

    return-void
.end method

.method public final setSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/revenuecat/purchases/Purchases;->Companion:Lcom/revenuecat/purchases/Purchases$Companion;

    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getBackingFieldSharedInstance$purchases_release()Lcom/revenuecat/purchases/Purchases;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/revenuecat/purchases/Purchases;->close()V

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/revenuecat/purchases/Purchases$Companion;->setBackingFieldSharedInstance$purchases_release(Lcom/revenuecat/purchases/Purchases;)V

    .line 3
    invoke-virtual {v0}, Lcom/revenuecat/purchases/Purchases$Companion;->getPostponedAttributionData$purchases_release()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/revenuecat/purchases/common/attribution/AttributionData;

    .line 6
    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/attribution/AttributionData;->getData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/attribution/AttributionData;->getNetwork()Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    move-result-object v3

    invoke-virtual {v1}, Lcom/revenuecat/purchases/common/attribution/AttributionData;->getNetworkUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v1}, Lcom/revenuecat/purchases/Purchases;->postAttributionData$purchases_release(Lorg/json/JSONObject;Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
