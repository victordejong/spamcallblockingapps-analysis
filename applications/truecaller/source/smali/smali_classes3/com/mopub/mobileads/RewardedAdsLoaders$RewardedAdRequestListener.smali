.class public Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/AdLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/RewardedAdsLoaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RewardedAdRequestListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/RewardedAdsLoaders;

.field public final adUnitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/RewardedAdsLoaders;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->adUnitId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->b:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 3
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->adUnitId:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 6
    instance-of v3, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v3, :cond_2

    .line 7
    move-object v3, p1

    check-cast v3, Lcom/mopub/network/MoPubNetworkError;

    .line 8
    invoke-virtual {v3}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->TOO_MANY_REQUESTS:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 11
    :cond_2
    :goto_0
    instance-of p1, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz p1, :cond_3

    .line 12
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 13
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;->a:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 2
    iget-object v2, v2, Lcom/mopub/mobileads/RewardedAdsLoaders;->b:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7530

    .line 5
    invoke-virtual {v1, v4}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getBaseAdClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 7
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Couldn\'t create base ad, class name was null."

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v3, v1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_3

    .line 9
    :cond_0
    iget-object v9, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    invoke-virtual {v9, v3}, Le/n/b/p0;->a(Ljava/lang/String;)Lcom/mopub/mobileads/AdAdapter;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {v9}, Lcom/mopub/mobileads/AdAdapter;->d()V

    .line 11
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedCurrencies()Ljava/lang/String;

    move-result-object v9

    .line 12
    iget-object v10, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 13
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    iget-object v10, v10, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-eqz v10, :cond_2

    .line 16
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 17
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 18
    :cond_2
    iget-object v10, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 19
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 21
    invoke-virtual {v10, v3, v11, v11}, Le/n/b/p0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 23
    iget-object v9, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyAmount()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {v9, v3, v10, v11}, Le/n/b/p0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    :try_start_0
    invoke-virtual {v2, v3, v9}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    :goto_0
    iget-object v9, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCompletionUrl()Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    iget-object v9, v9, Le/n/b/p0;->d:Ljava/util/Map;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v9, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    if-nez v9, :cond_4

    .line 34
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Could not load base ad because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads."

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 35
    iget-object v1, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 36
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v9

    .line 37
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object v12

    .line 40
    invoke-virtual {v1, v4}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 41
    sget-object v13, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v6, v15, v8

    const/16 v16, 0x1

    aput-object v10, v15, v16

    const-string v0, "Updating init settings for base ad %s with params %s"

    invoke-static {v14, v0, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v13, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "html-response-body"

    .line 46
    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    new-instance v7, Lcom/mopub/mobileads/AdData$Builder;

    invoke-direct {v7}, Lcom/mopub/mobileads/AdData$Builder;-><init>()V

    .line 48
    invoke-virtual {v7, v3}, Lcom/mopub/mobileads/AdData$Builder;->adUnit(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v7

    const/4 v10, 0x1

    .line 49
    invoke-virtual {v7, v10}, Lcom/mopub/mobileads/AdData$Builder;->isRewarded(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v7

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/mopub/mobileads/AdData$Builder;->adType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v7

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, ""

    .line 51
    :goto_1
    invoke-virtual {v7, v0}, Lcom/mopub/mobileads/AdData$Builder;->adPayload(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mopub/mobileads/AdData$Builder;->currencyName(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v11}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleDips(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v12}, Lcom/mopub/mobileads/AdData$Builder;->impressionMinVisibleMs(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mopub/mobileads/AdData$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/mopub/mobileads/AdData$Builder;->broadcastIdentifier(J)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->timeoutDelayMillis(I)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    iget-object v4, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 58
    iget-object v4, v4, Le/n/b/p0;->i:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->customerId(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v8}, Lcom/mopub/mobileads/AdData$Builder;->allowCustomClose(Z)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->viewabilityVendors(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->fullAdType(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v9}, Lcom/mopub/mobileads/AdData$Builder;->extras(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;

    move-result-object v0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedDuration()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mopub/mobileads/AdData$Builder;->rewardedDurationSeconds(I)Lcom/mopub/mobileads/AdData$Builder;

    .line 66
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mopub/network/AdResponse;->getRewardedAdCurrencyAmount()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 68
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 69
    :catch_0
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to convert currency amount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Using the default reward amount: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v4, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_7
    move v1, v8

    .line 70
    :goto_2
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdData$Builder;->currencyAmount(I)Lcom/mopub/mobileads/AdData$Builder;

    .line 71
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v8

    const-string v10, "Loading base ad with class name %s"

    invoke-static {v9, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v1, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :try_start_2
    const-string v1, "com.mopub.mobileads.FullscreenAdAdapter"

    .line 72
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/mopub/mobileads/AdAdapter;

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    .line 74
    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    const-class v9, Lcom/mopub/mobileads/AdData;

    const/4 v11, 0x2

    aput-object v9, v7, v11

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    sget-object v7, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v7, v7, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v8

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 78
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData$Builder;->build()Lcom/mopub/mobileads/AdData;

    move-result-object v0

    const/4 v7, 0x2

    aput-object v0, v4, v7

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAdapter;

    .line 80
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedAdManager$m;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$m;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    .line 81
    new-instance v4, Le/n/b/z;

    invoke-direct {v4, v0}, Le/n/b/z;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    .line 82
    iget-object v7, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h:Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v9, v5

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-object v5, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V

    .line 85
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    iput-object v1, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 87
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->c()Ljava/lang/String;

    .line 88
    iget-object v1, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    invoke-virtual {v1, v3, v0}, Le/n/b/p0;->d(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 89
    :catch_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v8

    const-string v6, "Couldn\'t create base ad with class name %s"

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v3, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_3

    .line 91
    :catch_2
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v4, "Error parsing rewarded currencies JSON header: "

    invoke-static {v4, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v2, v3, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_3
    return-void
.end method
