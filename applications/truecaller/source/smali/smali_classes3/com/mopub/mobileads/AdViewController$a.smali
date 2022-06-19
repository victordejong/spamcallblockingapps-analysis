.class public Lcom/mopub/mobileads/AdViewController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdViewController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController$a;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController$a;->a:Lcom/mopub/mobileads/AdViewController;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    .line 5
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/AdViewController;->z:Ljava/lang/Integer;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    .line 8
    iget-object v2, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 9
    instance-of v3, p1, Lcom/mopub/network/MoPubNetworkError;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 10
    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 11
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 12
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    .line 15
    invoke-static {v1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 17
    :cond_5
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 18
    :cond_6
    iget p1, v2, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt p1, v1, :cond_7

    .line 19
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 20
    :cond_7
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 21
    :goto_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne p1, v1, :cond_8

    .line 22
    iget v1, v0, Lcom/mopub/mobileads/AdViewController;->n:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/mopub/mobileads/AdViewController;->n:I

    .line 23
    :cond_8
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/mopub/mobileads/AdViewController$a;->a:Lcom/mopub/mobileads/AdViewController;

    const/4 v3, 0x1

    .line 2
    iput v3, v2, Lcom/mopub/mobileads/AdViewController;->n:I

    move-object/from16 v0, p1

    .line 3
    iput-object v0, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/String;

    .line 5
    iget-object v0, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/mopub/mobileads/AdViewController;->z:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 6
    iput-object v0, v2, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    .line 7
    iget-object v0, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v4, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v4}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v4

    .line 9
    iget-object v5, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v5}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v6}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v7}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object v8, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v8}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v8

    .line 13
    iget-object v9, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v9}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v9

    .line 14
    iget-object v10, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v10}, Lcom/mopub/network/AdResponse;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v10

    .line 15
    invoke-static {v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    .line 17
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v4, v3, v12

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto/16 :goto_5

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 20
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Couldn\'t invoke base ad because the server did not specify one."

    aput-object v4, v3, v12

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto/16 :goto_5

    .line 22
    :cond_1
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->d()V

    .line 23
    sget-object v13, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v14, v3, [Ljava/lang/Object;

    const-string v15, "Loading ad adapter."

    aput-object v15, v14, v12

    invoke-static {v13, v14}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 24
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 25
    iget-object v14, v2, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 26
    iget-object v3, v2, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {v13, v15}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v15, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {v11}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v3

    sget-object v14, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    if-ne v3, v14, :cond_4

    const-string v3, "com.mopub.mobileads.InlineAdAdapter"

    goto :goto_1

    :cond_4
    const-string v3, "com.mopub.mobileads.FullscreenAdAdapter"

    :goto_1
    const-string v15, "html-response-body"

    .line 30
    invoke-interface {v4, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 31
    new-instance v15, Lcom/mopub/mobileads/AdData$Builder;

    invoke-direct {v15}, Lcom/mopub/mobileads/AdData$Builder;-><init>()V

    .line 32
    invoke-virtual {v15, v13}, Lcom/mopub/mobileads/AdData$Builder;->extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v13

    move-object/from16 p1, v0

    .line 33
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 34
    invoke-interface {v11}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v1

    if-ne v1, v14, :cond_5

    const/16 v1, 0x2710

    goto :goto_2

    :cond_5
    const/16 v1, 0x7530

    .line 35
    :goto_2
    iget-object v11, v2, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-nez v11, :cond_6

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    .line 37
    :cond_6
    invoke-virtual {v11, v1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v1

    .line 38
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v7}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v8}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    const-string v4, ""

    .line 42
    :goto_4
    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getAdWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->adWidth(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->getAdHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->adHeight(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v5}, Lcom/mopub/mobileads/AdData$Builder;->adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/AdData$Builder;->fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v9}, Lcom/mopub/mobileads/AdData$Builder;->allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v10}, Lcom/mopub/mobileads/AdData$Builder;->viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData$Builder;->build()Lcom/mopub/mobileads/AdData;

    move-result-object v0

    .line 50
    invoke-static {v3}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_8

    .line 51
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/mopub/mobileads/AdAdapter;

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Class;

    .line 53
    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v12

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-class v6, Lcom/mopub/mobileads/AdData;

    aput-object v6, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 55
    iget-object v4, v2, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    aput-object v4, v3, v12

    aput-object p1, v3, v7

    aput-object v0, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAdapter;

    iput-object v0, v2, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/mobileads/AdAdapter;

    .line 56
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/AdAdapter;->load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Error loading ad adapter"

    aput-object v4, v3, v12

    const/4 v6, 0x1

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    .line 59
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "Could not load adapter"

    aput-object v3, v1, v12

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v3, v1, v6

    .line 60
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    .line 61
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    .line 63
    :goto_5
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdViewController;->g()V

    return-void
.end method
