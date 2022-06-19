.class Lzendesk/support/request/ActionCreateComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$AsyncAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ActionCreateComment$CreateCommentResult;
    }
.end annotation


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private attachmentCallback:Lcom/zendesk/service/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private final attachmentUploader:Lzendesk/support/request/AttachmentUploadService;

.field private final message:Lzendesk/support/request/StateMessage;

.field private final requestProvider:Lzendesk/support/RequestProvider;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionCreateComment;->af:Lzendesk/support/request/ActionFactory;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionCreateComment;->requestProvider:Lzendesk/support/RequestProvider;

    .line 4
    iput-object p4, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/ActionCreateComment;->attachmentUploader:Lzendesk/support/request/AttachmentUploadService;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/StateMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ActionCreateComment;Lzendesk/support/request/StateConversation;Lzendesk/support/request/StateConfig;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lzendesk/support/request/ActionCreateComment;->createMessage(Lzendesk/support/request/StateConversation;Lzendesk/support/request/StateConfig;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionCreateComment;->af:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/RequestProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionCreateComment;->requestProvider:Lzendesk/support/RequestProvider;

    return-object p0
.end method

.method private addComment(Lzendesk/support/request/AsyncMiddleware$Callback;Lt/a/f;Lzendesk/support/request/StateConversation;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V
    .locals 11

    .line 1
    new-instance v0, Lzendesk/support/EndUserComment;

    invoke-direct {v0}, Lzendesk/support/EndUserComment;-><init>()V

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/EndUserComment;->setValue(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;->getRequestAttachments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lzendesk/support/request/ActionCreateComment;->getAttachmentToken(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/EndUserComment;->setAttachments(Ljava/util/List;)V

    .line 4
    invoke-virtual {p3}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v9, p0, Lzendesk/support/request/ActionCreateComment;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v10, Lzendesk/support/request/ActionCreateComment$2;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, v1

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lzendesk/support/request/ActionCreateComment$2;-><init>(Lzendesk/support/request/ActionCreateComment;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;Lt/a/f;Ljava/lang/String;Lzendesk/support/request/StateConversation;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    invoke-interface {v9, v1, v0, v10}, Lzendesk/support/RequestProvider;->addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/f;)V

    return-void
.end method

.method private createMessage(Lzendesk/support/request/StateConversation;Lzendesk/support/request/StateConfig;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RequestActivity"

    if-eqz v0, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    .line 3
    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Adding a comment to an existing request. Message Id %s"

    .line 4
    invoke-static {v3, v0, p2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p4, p3, p1, p5}, Lzendesk/support/request/ActionCreateComment;->addComment(Lzendesk/support/request/AsyncMiddleware$Callback;Lt/a/f;Lzendesk/support/request/StateConversation;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Creating a new request. Message Id %s"

    invoke-static {v3, v0, p1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p4, p3, p5, p2}, Lzendesk/support/request/ActionCreateComment;->createRequest(Lzendesk/support/request/AsyncMiddleware$Callback;Lt/a/f;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;Lzendesk/support/request/StateConfig;)V

    :goto_0
    return-void
.end method

.method private createRequest(Lzendesk/support/request/AsyncMiddleware$Callback;Lt/a/f;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;Lzendesk/support/request/StateConfig;)V
    .locals 6

    .line 1
    new-instance v0, Lzendesk/support/CreateRequest;

    invoke-direct {v0}, Lzendesk/support/CreateRequest;-><init>()V

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setDescription(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;->getRequestAttachments()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lzendesk/support/request/ActionCreateComment;->getAttachmentToken(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setAttachments(Ljava/util/List;)V

    .line 4
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setTags(Ljava/util/List;)V

    .line 6
    :cond_0
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setSubject(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestTicketForm;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestTicketForm;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setTicketFormId(Ljava/lang/Long;)V

    .line 11
    :cond_2
    invoke-virtual {p4}, Lzendesk/support/request/StateConfig;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object p4

    invoke-virtual {p4}, Lzendesk/support/request/StateRequestTicketForm;->getTicketFieldsForApi()Ljava/util/List;

    move-result-object p4

    invoke-virtual {v0, p4}, Lzendesk/support/CreateRequest;->setCustomFields(Ljava/util/List;)V

    .line 12
    :cond_3
    iget-object p4, p0, Lzendesk/support/request/ActionCreateComment;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v1, Lzendesk/support/request/ActionCreateComment$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lzendesk/support/request/ActionCreateComment$3;-><init>(Lzendesk/support/request/ActionCreateComment;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    invoke-interface {p4, v0, v1}, Lzendesk/support/RequestProvider;->createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/f;)V

    return-void
.end method

.method private getAttachmentToken(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestAttachment;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private waitForAttachments(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Lt/a/j;->getState()Lt/a/o;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/StateConversation;->fromState(Lt/a/o;)Lzendesk/support/request/StateConversation;

    move-result-object v3

    .line 2
    invoke-interface {p2}, Lt/a/j;->getState()Lt/a/o;

    move-result-object p2

    invoke-static {p2}, Lzendesk/support/request/StateConfig;->fromState(Lt/a/o;)Lzendesk/support/request/StateConfig;

    move-result-object v4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "RequestActivity"

    const-string v1, "Waiting for attachments to be uploaded. Message Id: %s"

    invoke-static {v0, v1, p2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lzendesk/support/request/ActionCreateComment$1;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lzendesk/support/request/ActionCreateComment$1;-><init>(Lzendesk/support/request/ActionCreateComment;Lzendesk/support/request/StateConversation;Lzendesk/support/request/StateConfig;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    iput-object p2, p0, Lzendesk/support/request/ActionCreateComment;->attachmentCallback:Lcom/zendesk/service/f;

    .line 5
    iget-object p1, p0, Lzendesk/support/request/ActionCreateComment;->attachmentUploader:Lzendesk/support/request/AttachmentUploadService;

    invoke-virtual {p1, p2}, Lzendesk/support/request/AttachmentUploadService;->setResultListener(Lcom/zendesk/service/f;)V

    return-void
.end method


# virtual methods
.method public actionQueued(Lt/a/f;Lt/a/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lt/a/j;->getState()Lt/a/o;

    move-result-object p2

    invoke-static {p2}, Lzendesk/support/request/StateConversation;->fromState(Lt/a/o;)Lzendesk/support/request/StateConversation;

    move-result-object p2

    invoke-virtual {p2}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    .line 6
    invoke-virtual {v2}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "RequestActivity"

    const-string v2, "Start uploading %d attachments. Message Id: %s"

    .line 7
    invoke-static {v0, v2, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->attachmentUploader:Lzendesk/support/request/AttachmentUploadService;

    invoke-virtual {v0, p2}, Lzendesk/support/request/AttachmentUploadService;->start(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lzendesk/support/request/ActionCreateComment;->af:Lzendesk/support/request/ActionFactory;

    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->withPending()Lzendesk/support/request/StateMessage;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzendesk/support/request/ActionFactory;->createComment(Lzendesk/support/request/StateMessage;)Lt/a/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lt/a/f;->c(Lt/a/a;)V

    return-void
.end method

.method public execute(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/ActionCreateComment;->waitForAttachments(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    return-void
.end method
