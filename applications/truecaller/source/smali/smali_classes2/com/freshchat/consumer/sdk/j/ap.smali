.class public Lcom/freshchat/consumer/sdk/j/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V
    .locals 4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->isAccountActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->setAccountActive(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getSessionTimeoutInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->setSessionTimeoutInterval(J)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvFetchBackoffRatio()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvFetchBackoffRatio(D)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvWindow(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->shouldLaunchDeeplinkFromNotification()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->j(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getResolvedMsgTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->a(Ljava/util/Set;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getReopenedMsgtypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->b(Ljava/util/Set;)V

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getCsatConfig()Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->doesCsatAutoExpire()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setCsatAutoExpire(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->getCsatExpiryInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->s(J)V

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setJwtAuthEnabled(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isStrictModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->t(Z)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->getAuthTimeOutInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->u(J)V

    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEnabledFeatures()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getRemoteConfigFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setRemoteConfigFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getResponseTimeExpectationsFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setResponseTimeExpectationsFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMinFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvMinFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getActiveConvMaxFetchInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setActiveConvMaxFetchInterval(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMsgFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getMsgFetchIntervalLaidback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMsgFetchIntervalLaidback(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setFaqFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getFaqFetchIntervalLaidback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setFaqFetchIntervalLaidback(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalNormal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setChannelsFetchIntervalNormal(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getChannelsFetchIntervalLaidback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/b/e;->setChannelsFetchIntervalLaidback(J)V

    :cond_3
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxDelayInMillisUntilUpload()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMaxDelayInMillisUntilUpload(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedEventsPerDay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMaxAllowedEventsPerDay(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxEventsPerBatch()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMaxEventsPerBatch(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxAllowedPropertiesPerEvent()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setMaxAllowedPropertiesPerEvent(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getTriggerUploadOnEventsCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/freshchat/consumer/sdk/b/e;->setTriggerUploadOnEventsCount(J)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxCharsPerEventName()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setMaxCharsPerEventName(I)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxCharsPerEventPropertyName()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/b/e;->setMaxCharsPerEventPropertyName(I)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->getMaxCharsPerEventPropertyValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->setMaxCharsPerEventPropertyValue(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getMessageMaskingConfig()Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/j/bc;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUnsupportedFragmentConfig()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/j/bd;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getLiveTranslationConfig()Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->z(Z)V

    :cond_5
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getAccountConfig()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->getFcFaqApiVersion()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->asInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->X(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getOperatingHoursResponse()Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/freshchat/consumer/sdk/c/p;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getOperatingHoursResponse()Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/c/p;->a(Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;)V

    :cond_7
    const/4 p0, 0x0

    sput-object p0, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    return-void
.end method

.method public static aZ(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string v0, "RC_IS_ACCOUNT_ACTIVE"

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/i;->as(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    if-nez v0, :cond_2

    const-class v0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->bE(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/DefaultRemoteConfig;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    return-object p0
.end method

.method private static bE(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 7

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isAccountActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setAccountActive(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->cg()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setEnabledFeatures(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getSessionTimeoutInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setSessionTimeoutInterval(J)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvWindow()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvWindow(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvFetchBackoffRatio()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setActiveConvFetchBackoffRatio(D)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bU()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setLaunchDeeplinkFromNotification(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->fj()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setResolvedMsgTypes(Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->fk()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->setReopenedMsgtypes(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setConversationConfig(Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->doesCsatAutoExpire()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatAutoExpire(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->cQ()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->setCsatExpiryInterval(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setCsatConfig(Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isJwtAuthEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setJwtAuthEnabled(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gk()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setStrictModeEnabled(Z)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gl()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->setAuthTimeOutInterval(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setUserAuthConfig(Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getRemoteConfigFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setRemoteConfigFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getResponseTimeExpectationsFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setResponseTimeExpectationsFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvMinFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMinFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getActiveConvMaxFetchInterval()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setActiveConvMaxFetchInterval(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMsgFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMsgFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setMsgFetchIntervalLaidback(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getFaqFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getFaqFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setFaqFetchIntervalLaidback(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getChannelsFetchIntervalNormal()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalNormal(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getChannelsFetchIntervalLaidback()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->setChannelsFetchIntervalLaidback(J)V

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setRefreshIntervals(Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bc;->bH(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setMessageMaskingConfig(Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/bd;->bI(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setUnsupportedFragmentConfig(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxAllowedEventsPerDay()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxAllowedEventsPerDay(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxEventsPerBatch()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxEventsPerBatch(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxDelayInMillisUntilUpload()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxDelayInMillisUntilUpload(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxAllowedPropertiesPerEvent()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxAllowedPropertiesPerEvent(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getTriggerUploadOnEventsCount()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setTriggerUploadOnEventsCount(J)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventName()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventName(I)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyName()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventPropertyName(I)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->getMaxCharsPerEventPropertyValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;->setMaxCharsPerEventPropertyValue(I)V

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setEventsConfig(Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->it()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;->setEnabled(Z)V

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setLiveTranslationConfig(Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->iM()I

    move-result v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->fromInt(I)Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->setFcFaqApiVersion(Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;)V

    invoke-virtual {v1, p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->setAccountConfig(Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;)V

    return-object v1
.end method

.method public static jP()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getReopenedMsgtypes()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/j/ap;->lg:Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getResolvedMsgTypes()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method
