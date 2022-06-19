.class Lzendesk/support/requestlist/RequestListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final requestInfo:Lzendesk/support/requestlist/RequestInfo;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    return-void
.end method


# virtual methods
.method configure(Lzendesk/support/request/RequestUiConfig$Builder;)Lzendesk/support/request/RequestUiConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {p1, v0}, Lzendesk/support/request/RequestUiConfig$Builder;->withRequestInfo(Lzendesk/support/requestlist/RequestInfo;)Lzendesk/support/request/RequestUiConfig$Builder;

    return-object p1
.end method

.method getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListItem;->hasAgentReplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getAgentInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/requestlist/RequestInfo$AgentInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo$AgentInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getFirstMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getFirstMessageInfo()Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getItemId()J
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getLocalId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v1}, Lzendesk/support/requestlist/RequestInfo;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    return-wide v0
.end method

.method getLastCommentingAgentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getAgentInfos()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lzendesk/support/requestlist/RequestListItem$1;

    invoke-direct {v1, p0}, Lzendesk/support/requestlist/RequestListItem$1;-><init>(Lzendesk/support/requestlist/RequestListItem;)V

    invoke-static {v0, v1}, Lg/k/d/a;->k(Ljava/util/Collection;Lg/k/a/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getLastMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getLastMessageInfo()Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method hasAgentReplied()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getAgentInfos()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->isClosed()Z

    move-result v0

    return v0
.end method

.method isFailed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->getFailedMessageIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method isUnread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListItem;->requestInfo:Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestInfo;->isUnread()Z

    move-result v0

    return v0
.end method
