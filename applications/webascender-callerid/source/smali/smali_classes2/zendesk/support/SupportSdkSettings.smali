.class public Lzendesk/support/SupportSdkSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final authenticationType:Lzendesk/core/AuthenticationType;

.field private final helpCenterSettings:Lzendesk/support/HelpCenterSettings;

.field private final mobileSettings:Lzendesk/support/SupportSettings;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    .line 4
    iput-object p3, p0, Lzendesk/support/SupportSdkSettings;->authenticationType:Lzendesk/core/AuthenticationType;

    return-void
.end method

.method private getAttachmentSettings()Lzendesk/support/AttachmentSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getAttachments()Lzendesk/support/AttachmentSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 4
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getAttachments()Lzendesk/support/AttachmentSettings;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private getConversationsSettings()Lzendesk/support/ConversationsSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getConversations()Lzendesk/support/ConversationsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 4
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getConversations()Lzendesk/support/ConversationsSettings;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAuthenticationType()Lzendesk/core/AuthenticationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->authenticationType:Lzendesk/core/AuthenticationType;

    return-object v0
.end method

.method public getContactZendeskTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getContactUs()Lzendesk/support/ContactUsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 3
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getContactUs()Lzendesk/support/ContactUsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/ContactUsSettings;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 5
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getContactUs()Lzendesk/support/ContactUsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/ContactUsSettings;->getTags()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0
.end method

.method public getHelpCenterLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    invoke-virtual {v0}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lzendesk/support/SupportSdkSettings;->getAttachmentSettings()Lzendesk/support/AttachmentSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/AttachmentSettings;->getMaxAttachmentSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "https://www.zendesk.com/embeddables"

    :goto_0
    return-object v0
.end method

.method public getRequestSystemMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getSystemMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->getSystemMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public hasHelpCenterSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachmentsEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/SupportSdkSettings;->getAttachmentSettings()Lzendesk/support/AttachmentSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/AttachmentSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConversationsEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/SupportSdkSettings;->getConversationsSettings()Lzendesk/support/ConversationsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/ConversationsSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHelpCenterArticleVotingEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/SupportSdkSettings;->hasHelpCenterSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    invoke-virtual {v0}, Lzendesk/support/HelpCenterSettings;->isArticleVotingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHelpCenterEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/HelpCenterSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeverAskForEmailEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->isNeverRequestEmailOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowClosedRequests()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->isShowClosedRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowReferrerLogoEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSdkSettings;->mobileSettings:Lzendesk/support/SupportSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/SupportSettings;->isShowReferrerLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
