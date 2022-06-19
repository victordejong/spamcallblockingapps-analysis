.class Lzendesk/support/request/ComponentUpdateActionHandlers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Lzendesk/support/request/StateConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private final context:Landroid/content/Context;

.field private final localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

.field private final queue:Lzendesk/support/request/AsyncMiddleware$Queue;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-direct {v0}, Lzendesk/support/request/AsyncMiddleware$Queue;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    return-void
.end method

.method static synthetic access$100(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->localDataSource:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/AsyncMiddleware$Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/ComponentUpdateActionHandlers;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/core/ActionHandlerRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-object p0
.end method

.method private getLast5AgentInfos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo$AgentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestUser;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v2

    .line 4
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->isAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-static {p1}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateMessage;

    .line 10
    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/StateRequestUser;

    .line 13
    new-instance v4, Lzendesk/support/requestlist/RequestInfo$AgentInfo;

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lzendesk/support/request/StateRequestUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lzendesk/support/request/StateRequestUser;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3}, Lzendesk/support/requestlist/RequestInfo$AgentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 17
    :cond_3
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p2
.end method

.method private hasPendingMessages(Lzendesk/support/request/StateConversation;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateMessage;

    .line 3
    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private map(Lzendesk/support/request/StateConversation;)Lzendesk/support/requestlist/RequestInfo;
    .locals 13

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/k/d/a;->g(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getStatus()Lzendesk/support/RequestStatus;

    move-result-object v3

    const/4 v4, 0x0

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/StateMessage;

    .line 7
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/request/StateMessage;

    .line 9
    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-direct {p0, v8, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->getLast5AgentInfos(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 12
    new-instance v8, Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 13
    invoke-virtual {v4}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v4}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v9, v10, v4}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 14
    new-instance v9, Lzendesk/support/requestlist/RequestInfo$MessageInfo;

    .line 15
    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v4, v10, v5}, Lzendesk/support/requestlist/RequestInfo$MessageInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 16
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/StateMessage;

    .line 18
    invoke-virtual {v4}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v4}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v4

    invoke-virtual {v4}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 20
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    new-instance v11, Lzendesk/support/requestlist/RequestInfo;

    const/4 v4, 0x0

    move-object v0, v11

    move-object v5, v7

    move-object v6, p1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/requestlist/RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/Date;Ljava/util/List;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Lzendesk/support/requestlist/RequestInfo$MessageInfo;Ljava/util/Set;)V

    return-object v11
.end method


# virtual methods
.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/StateConversation;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->update(Lzendesk/support/request/StateConversation;)V

    return-void
.end method

.method public update(Lzendesk/support/request/StateConversation;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->map(Lzendesk/support/request/StateConversation;)Lzendesk/support/requestlist/RequestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->hasPendingMessages(Lzendesk/support/request/StateConversation;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    new-instance v1, Lzendesk/support/request/ComponentUpdateActionHandlers$1;

    invoke-direct {v1, p0, v0}, Lzendesk/support/request/ComponentUpdateActionHandlers$1;-><init>(Lzendesk/support/request/ComponentUpdateActionHandlers;Lzendesk/support/requestlist/RequestInfo;)V

    invoke-virtual {p1, v1}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatch(Lzendesk/support/request/AsyncMiddleware$Item;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    new-instance v1, Lzendesk/support/request/ComponentUpdateActionHandlers$2;

    invoke-direct {v1, p0, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers$2;-><init>(Lzendesk/support/request/ComponentUpdateActionHandlers;Lzendesk/support/request/StateConversation;)V

    invoke-virtual {v0, v1}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatch(Lzendesk/support/request/AsyncMiddleware$Item;)V

    :cond_1
    :goto_0
    return-void
.end method
