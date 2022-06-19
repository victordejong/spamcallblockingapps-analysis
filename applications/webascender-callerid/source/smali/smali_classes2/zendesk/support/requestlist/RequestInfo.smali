.class public Lzendesk/support/requestlist/RequestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/requestlist/RequestInfo$LastUpdatedComparator;,
        Lzendesk/support/requestlist/RequestInfo$MessageInfo;,
        Lzendesk/support/requestlist/RequestInfo$AgentInfo;
    }
.end annotation


# instance fields
.field private final agentInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final failedMessageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

.field private final lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

.field private final lastUpdated:Ljava/util/Date;

.field private final localId:Ljava/lang/String;

.field private final remoteId:Ljava/lang/String;

.field private final requestStatus:Lzendesk/support/RequestStatus;

.field private final unread:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/Date;Ljava/util/List;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/support/RequestStatus;",
            "Z",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo$AgentInfo;",
            ">;",
            "Lzendesk/support/requestlist/RequestInfo$MessageInfo;",
            "Lzendesk/support/requestlist/RequestInfo$MessageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    .line 5
    iput-boolean p4, p0, Lzendesk/support/requestlist/RequestInfo;->unread:Z

    .line 6
    iput-object p5, p0, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    .line 7
    iput-object p6, p0, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    .line 8
    iput-object p7, p0, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 9
    iput-object p8, p0, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 10
    iput-object p9, p0, Lzendesk/support/requestlist/RequestInfo;->failedMessageIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 1
    const-class v2, Lzendesk/support/requestlist/RequestInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 2
    :cond_1
    check-cast p1, Lzendesk/support/requestlist/RequestInfo;

    .line 3
    iget-boolean v2, p0, Lzendesk/support/requestlist/RequestInfo;->unread:Z

    iget-boolean v3, p1, Lzendesk/support/requestlist/RequestInfo;->unread:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 6
    :cond_6
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    if-eq v2, v3, :cond_7

    return v1

    .line 7
    :cond_7
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 8
    :cond_9
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 9
    :cond_b
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    invoke-virtual {v2, v3}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_c
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_d

    :goto_4
    return v1

    .line 10
    :cond_d
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    invoke-virtual {v2, v3}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_5

    :cond_e
    iget-object v2, p1, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_f

    :goto_5
    return v1

    .line 11
    :cond_f
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->failedMessageIds:Ljava/util/Set;

    iget-object p1, p1, Lzendesk/support/requestlist/RequestInfo;->failedMessageIds:Ljava/util/Set;

    if-eqz v2, :cond_10

    invoke-interface {v2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_10
    if-nez p1, :cond_11

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_12
    :goto_7
    return v1
.end method

.method public getAgentInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo$AgentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    return-object v0
.end method

.method getFailedMessageIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->failedMessageIds:Ljava/util/Set;

    return-object v0
.end method

.method getFirstMessageInfo()Lzendesk/support/requestlist/RequestInfo$MessageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    return-object v0
.end method

.method getLastMessageInfo()Lzendesk/support/requestlist/RequestInfo$MessageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    return-object v0
.end method

.method getLastUpdated()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestStatus()Lzendesk/support/RequestStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfo;->localId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->remoteId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v2, p0, Lzendesk/support/requestlist/RequestInfo;->unread:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->lastUpdated:Ljava/util/Date;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->agentInfos:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->firstMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->lastMessageInfo:Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfo;->failedMessageIds:Ljava/util/Set;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method isClosed()Z
    .locals 2

    .line 1
    sget-object v0, Lzendesk/support/RequestStatus;->Closed:Lzendesk/support/RequestStatus;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfo;->requestStatus:Lzendesk/support/RequestStatus;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUnread()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/requestlist/RequestInfo;->unread:Z

    return v0
.end method
