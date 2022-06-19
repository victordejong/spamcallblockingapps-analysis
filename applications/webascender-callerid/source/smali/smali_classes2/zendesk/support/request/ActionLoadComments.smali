.class Lzendesk/support/request/ActionLoadComments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$AsyncAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;
    }
.end annotation


# instance fields
.field private final actionFactory:Lzendesk/support/request/ActionFactory;

.field private final belvedere:Lzendesk/belvedere/a;

.field private final handler:Landroid/os/Handler;

.field private final initialLoad:Z

.field private final requestProvider:Lzendesk/support/RequestProvider;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/a;Landroid/os/Handler;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ActionLoadComments;->actionFactory:Lzendesk/support/request/ActionFactory;

    .line 4
    iput-object p2, p0, Lzendesk/support/request/ActionLoadComments;->requestProvider:Lzendesk/support/RequestProvider;

    .line 5
    iput-object p3, p0, Lzendesk/support/request/ActionLoadComments;->belvedere:Lzendesk/belvedere/a;

    .line 6
    iput-object p4, p0, Lzendesk/support/request/ActionLoadComments;->handler:Landroid/os/Handler;

    .line 7
    iput-boolean p5, p0, Lzendesk/support/request/ActionLoadComments;->initialLoad:Z

    return-void
.end method

.method constructor <init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/a;Z)V
    .locals 6

    .line 1
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/a;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ActionLoadComments;)Lzendesk/support/RequestProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionLoadComments;->requestProvider:Lzendesk/support/RequestProvider;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ActionLoadComments;Ljava/lang/String;Lzendesk/support/CommentsResponse;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ActionLoadComments;->findAttachments(Ljava/lang/String;Lzendesk/support/CommentsResponse;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/request/ActionLoadComments;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/support/request/ActionLoadComments;->initialLoad:Z

    return p0
.end method

.method static synthetic access$300(Lzendesk/support/request/ActionLoadComments;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionLoadComments;->actionFactory:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method private find2ndLastDeliveredMessage(Ljava/util/List;)Lzendesk/support/request/StateMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lzendesk/support/request/StateMessage;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateMessage;

    .line 4
    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findAttachments(Ljava/lang/String;Lzendesk/support/CommentsResponse;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/CommentsResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lzendesk/support/CommentsResponse;->getComments()Ljava/util/List;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/CommentResponse;

    .line 4
    invoke-virtual {v1}, Lzendesk/support/CommentResponse;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/Attachment;

    .line 5
    iget-object v3, p0, Lzendesk/support/request/ActionLoadComments;->belvedere:Lzendesk/belvedere/a;

    invoke-virtual {v2}, Lzendesk/support/Attachment;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 6
    invoke-virtual {v2}, Lzendesk/support/Attachment;->getFileName()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v3, p1, v4, v5, v6}, Lzendesk/support/request/UtilsAttachment;->getLocalFile(Lzendesk/belvedere/a;Ljava/lang/String;JLjava/lang/String;)Lzendesk/belvedere/r;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lzendesk/support/Attachment;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 9
    invoke-virtual {v2}, Lzendesk/support/Attachment;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public actionQueued(Lt/a/f;Lt/a/j;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lzendesk/support/request/ActionLoadComments;->actionFactory:Lzendesk/support/request/ActionFactory;

    iget-boolean v0, p0, Lzendesk/support/request/ActionLoadComments;->initialLoad:Z

    invoke-virtual {p2, v0}, Lzendesk/support/request/ActionFactory;->loadComments(Z)Lt/a/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lt/a/f;->c(Lt/a/a;)V

    return-void
.end method

.method public execute(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 11

    .line 1
    invoke-interface {p2}, Lt/a/j;->getState()Lt/a/o;

    move-result-object p2

    invoke-static {p2}, Lzendesk/support/request/StateConversation;->fromState(Lt/a/o;)Lzendesk/support/request/StateConversation;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    new-array p2, v9, [Ljava/lang/Object;

    const-string v0, "RequestActivity"

    const-string v1, "Skip loading comments. No remote id found."

    .line 3
    invoke-static {v0, v1, p2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lzendesk/support/request/ActionLoadComments;->actionFactory:Lzendesk/support/request/ActionFactory;

    invoke-virtual {p2}, Lzendesk/support/request/ActionFactory;->skipAction()Lt/a/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lt/a/f;->c(Lt/a/a;)V

    .line 5
    invoke-interface {p3}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void

    .line 6
    :cond_0
    new-instance v10, Lzendesk/support/request/ActionLoadComments$1;

    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v10

    move-object v1, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lzendesk/support/request/ActionLoadComments$1;-><init>(Lzendesk/support/request/ActionLoadComments;Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Lzendesk/support/request/StateConversation;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    .line 7
    invoke-virtual {p2}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/ActionLoadComments;->find2ndLastDeliveredMessage(Ljava/util/List;)Lzendesk/support/request/StateMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p3, p0, Lzendesk/support/request/ActionLoadComments;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-virtual {p2}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p3, p2, p1, v9, v10}, Lzendesk/support/RequestProvider;->getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/f;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lzendesk/support/request/ActionLoadComments;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-virtual {p2}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v10}, Lzendesk/support/RequestProvider;->getComments(Ljava/lang/String;Lcom/zendesk/service/f;)V

    :goto_0
    return-void
.end method
