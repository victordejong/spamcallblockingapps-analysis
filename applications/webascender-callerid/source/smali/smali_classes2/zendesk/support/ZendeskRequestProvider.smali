.class final Lzendesk/support/ZendeskRequestProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/RequestProvider;


# instance fields
.field private final authenticationProvider:Lzendesk/core/AuthenticationProvider;

.field private final blipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final metadata:Lzendesk/support/SupportSdkMetadata;

.field private final requestService:Lzendesk/support/ZendeskRequestService;

.field private final requestSessionCache:Lzendesk/support/RequestSessionCache;

.field private final requestStorage:Lzendesk/support/RequestStorage;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final zendeskTracker:Lzendesk/support/ZendeskTracker;


# direct methods
.method constructor <init>(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/ZendeskRequestService;Lzendesk/core/AuthenticationProvider;Lzendesk/support/RequestStorage;Lzendesk/support/RequestSessionCache;Lzendesk/support/ZendeskTracker;Lzendesk/support/SupportSdkMetadata;Lzendesk/support/SupportBlipsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    .line 4
    iput-object p3, p0, Lzendesk/support/ZendeskRequestProvider;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    .line 5
    iput-object p4, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    .line 6
    iput-object p5, p0, Lzendesk/support/ZendeskRequestProvider;->requestSessionCache:Lzendesk/support/RequestSessionCache;

    .line 7
    iput-object p6, p0, Lzendesk/support/ZendeskRequestProvider;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    .line 8
    iput-object p7, p0, Lzendesk/support/ZendeskRequestProvider;->metadata:Lzendesk/support/SupportSdkMetadata;

    .line 9
    iput-object p8, p0, Lzendesk/support/ZendeskRequestProvider;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/SupportSdkMetadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->metadata:Lzendesk/support/SupportSdkMetadata;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/ZendeskRequestProvider;Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/ZendeskRequestProvider;->addServerTags(Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method static synthetic access$1000(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskRequestService;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    return-object p0
.end method

.method static synthetic access$1100(Lzendesk/support/ZendeskRequestProvider;Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/ZendeskRequestProvider;->addCommentInternal(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/util/List;)Lzendesk/support/RequestUpdates;
    .locals 0

    .line 1
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/core/AuthenticationProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/ZendeskRequestProvider;Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/support/ZendeskRequestProvider;->internalCreateRequest(Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/f;)V

    return-void
.end method

.method static synthetic access$400(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/RequestStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/support/SupportSdkSettings;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->areConversationsEnabled(Lzendesk/support/SupportSdkSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lzendesk/support/ZendeskRequestProvider;Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/ZendeskRequestProvider;->getAllRequestsInternal(Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/f;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->answerCallbackOnConversationsDisabled(Lcom/zendesk/service/f;)V

    return-void
.end method

.method private addCommentInternal(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/EndUserComment;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Comment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$7;

    invoke-direct {v1, p0, p3, p1, p3}, Lzendesk/support/ZendeskRequestProvider$7;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Lcom/zendesk/service/f;)V

    invoke-virtual {v0, p1, p2, v1}, Lzendesk/support/ZendeskRequestService;->addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V

    return-void
.end method

.method private addServerTags(Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/List;

    .line 1
    invoke-virtual {p1}, Lzendesk/support/CreateRequest;->getTags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p2}, Lzendesk/support/SupportSdkSettings;->getContactZendeskTags()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 3
    invoke-static {v0}, Lg/k/d/a;->b([Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ZendeskRequestProvider"

    const-string v2, "Adding tags to feedback..."

    .line 5
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1, p2}, Lzendesk/support/CreateRequest;->setTags(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static answerCallbackOnConversationsDisabled(Lcom/zendesk/service/f;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskRequestProvider"

    const-string v2, "Conversations disabled, this feature is not available on your plan or was disabled."

    .line 1
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/zendesk/service/b;

    const-string v1, "Access Denied"

    invoke-direct {v0, v1}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void
.end method

.method private static areConversationsEnabled(Lzendesk/support/SupportSdkSettings;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;)",
            "Lzendesk/support/RequestUpdates;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestData;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/RequestData;->unreadComments()I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lzendesk/support/RequestUpdates;

    invoke-direct {p0, v0}, Lzendesk/support/RequestUpdates;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private getAllRequestsInternal(Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/core/AuthenticationType;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "new,open,pending,hold,solved,closed"

    .line 2
    :cond_0
    new-instance v0, Lzendesk/support/ZendeskRequestProvider$3;

    invoke-direct {v0, p0, p3, p3}, Lzendesk/support/ZendeskRequestProvider$3;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Lcom/zendesk/service/f;)V

    .line 3
    sget-object v1, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    const-string v2, "public_updated_at,last_commenting_agents,last_comment,first_comment"

    if-ne p2, v1, :cond_3

    .line 4
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {p2}, Lzendesk/support/RequestStorage;->getRequestData()Ljava/util/List;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/RequestData;

    .line 7
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1}, Lg/k/d/a;->g(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ZendeskRequestProvider"

    const-string v0, "getAllRequestsInternal: There are no requests to fetch"

    .line 9
    invoke-static {p2, v0, p1}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    .line 12
    invoke-static {v1}, Lg/k/d/f;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v2, v0}, Lzendesk/support/ZendeskRequestService;->getAllRequests(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/f;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    invoke-virtual {p2, p1, v2, v0}, Lzendesk/support/ZendeskRequestService;->getAllRequests(Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/f;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private internalCreateRequest(Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Lzendesk/core/AuthenticationType;",
            "Lzendesk/core/Identity;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lzendesk/support/ZendeskRequestProvider$2;

    invoke-direct {v0, p0, p4, p4}, Lzendesk/support/ZendeskRequestProvider$2;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Lcom/zendesk/service/f;)V

    .line 2
    sget-object p4, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne p2, p4, :cond_0

    if-eqz p3, :cond_0

    instance-of p2, p3, Lzendesk/core/AnonymousIdentity;

    if-eqz p2, :cond_0

    .line 3
    check-cast p3, Lzendesk/core/AnonymousIdentity;

    .line 4
    invoke-virtual {p3}, Lzendesk/core/AnonymousIdentity;->getSdkGuid()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object p3, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    invoke-virtual {p3, p2, p1, v0}, Lzendesk/support/ZendeskRequestService;->createRequest(Ljava/lang/String;Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lzendesk/support/ZendeskRequestService;->createRequest(Ljava/lang/String;Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/EndUserComment;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Comment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v7, Lzendesk/support/ZendeskRequestProvider$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lzendesk/support/ZendeskRequestProvider$8;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v7}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ZendeskRequestProvider"

    const-string v1, "configuration is invalid: request null"

    .line 1
    invoke-static {v0, v1, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 2
    new-instance p1, Lcom/zendesk/service/b;

    invoke-direct {p1, v1}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_1
    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$1;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$1;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getAllRequests(Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lzendesk/support/ZendeskRequestProvider;->getRequests(Ljava/lang/String;Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getComments(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$5;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$5;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v8, Lzendesk/support/ZendeskRequestProvider$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lzendesk/support/ZendeskRequestProvider$6;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/f;)V

    invoke-interface {v0, v8}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getRequest(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$9;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$9;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getRequests(Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$4;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$4;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Ljava/lang/String;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    return-void
.end method

.method public getUpdatesForDevice(Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/RequestUpdates;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0}, Lzendesk/support/RequestStorage;->isRequestDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0}, Lzendesk/support/RequestStorage;->getRequestData()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lzendesk/support/ZendeskRequestProvider;->calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$11;

    invoke-direct {v1, p0, p1}, Lzendesk/support/ZendeskRequestProvider$11;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/f;)V

    :goto_0
    return-void
.end method

.method public markRequestAsRead(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0, p1, p2}, Lzendesk/support/RequestStorage;->markRequestAsRead(Ljava/lang/String;I)V

    return-void
.end method

.method public markRequestAsUnread(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0, p1}, Lzendesk/support/RequestStorage;->markRequestAsUnread(Ljava/lang/String;)V

    return-void
.end method
