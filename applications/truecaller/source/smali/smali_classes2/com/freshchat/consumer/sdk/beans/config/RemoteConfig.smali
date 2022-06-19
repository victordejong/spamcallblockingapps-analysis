.class public Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accountActive:Z

.field private accountConfig:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

.field private conversationConfig:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

.field private csatConfig:Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;
    .annotation runtime Le/m/e/d0/b;
        value = "csatSettings"
    .end annotation
.end field

.field private enabledFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventsConfig:Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

.field private liveTranslationConfig:Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

.field private messageMaskingConfig:Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

.field private operatingHoursResponse:Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;

.field private refreshIntervals:Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

.field private sessionTimeoutInterval:J

.field private unsupportedFragmentConfig:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

.field private userAuthConfig:Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountConfig()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->accountConfig:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    return-object v0
.end method

.method public getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->conversationConfig:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    return-object v0
.end method

.method public getCsatConfig()Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->csatConfig:Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    return-object v0
.end method

.method public getEnabledFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->enabledFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public getEventsConfig()Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->eventsConfig:Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    return-object v0
.end method

.method public getLiveTranslationConfig()Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->liveTranslationConfig:Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

    return-object v0
.end method

.method public getMessageMaskingConfig()Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->messageMaskingConfig:Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    return-object v0
.end method

.method public getOperatingHoursResponse()Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->operatingHoursResponse:Lcom/freshchat/consumer/sdk/beans/OperatingHoursResponse;

    return-object v0
.end method

.method public getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->refreshIntervals:Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    return-object v0
.end method

.method public getSessionTimeoutInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->sessionTimeoutInterval:J

    return-wide v0
.end method

.method public getUnsupportedFragmentConfig()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->unsupportedFragmentConfig:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    return-object v0
.end method

.method public getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->userAuthConfig:Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    return-object v0
.end method

.method public isAccountActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->accountActive:Z

    return v0
.end method

.method public setAccountActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->accountActive:Z

    return-void
.end method

.method public setAccountConfig(Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->accountConfig:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    return-void
.end method

.method public setConversationConfig(Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->conversationConfig:Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    return-void
.end method

.method public setCsatConfig(Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->csatConfig:Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    return-void
.end method

.method public setEnabledFeatures(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->enabledFeatures:Ljava/util/Set;

    return-void
.end method

.method public setEventsConfig(Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->eventsConfig:Lcom/freshchat/consumer/sdk/beans/UserEventsConfig;

    return-void
.end method

.method public setLiveTranslationConfig(Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->liveTranslationConfig:Lcom/freshchat/consumer/sdk/beans/config/LiveTranslationConfig;

    return-void
.end method

.method public setMessageMaskingConfig(Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->messageMaskingConfig:Lcom/freshchat/consumer/sdk/beans/MessageMaskingConfig;

    return-void
.end method

.method public setRefreshIntervals(Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->refreshIntervals:Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    return-void
.end method

.method public setSessionTimeoutInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->sessionTimeoutInterval:J

    return-void
.end method

.method public setUnsupportedFragmentConfig(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->unsupportedFragmentConfig:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    return-void
.end method

.method public setUserAuthConfig(Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->userAuthConfig:Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    return-void
.end method
