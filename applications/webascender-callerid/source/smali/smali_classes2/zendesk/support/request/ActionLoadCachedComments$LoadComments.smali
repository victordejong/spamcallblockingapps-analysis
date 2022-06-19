.class Lzendesk/support/request/ActionLoadCachedComments$LoadComments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ActionLoadCachedComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadComments"
.end annotation


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private final belvedere:Lzendesk/belvedere/a;

.field private final callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field private final dispatcher:Lt/a/f;

.field private final id:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;


# direct methods
.method constructor <init>(Ljava/lang/String;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ActionFactory;Lzendesk/belvedere/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->dispatcher:Lt/a/f;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->af:Lzendesk/support/request/ActionFactory;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->belvedere:Lzendesk/belvedere/a;

    .line 8
    iput-object p7, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method private findLocalAttachmentForMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateIdMapper;Lzendesk/belvedere/a;Ljava/lang/String;)Lzendesk/support/request/StateMessage;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateRequestAttachment;

    .line 6
    invoke-virtual {v2}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lzendesk/support/request/StateIdMapper;->hasRemoteId(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Lzendesk/support/request/StateIdMapper;->getRemoteId(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    invoke-virtual {v2}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-static {p3, p4, v3, v4, v5}, Lzendesk/support/request/UtilsAttachment;->getLocalFile(Lzendesk/belvedere/a;Ljava/lang/String;JLjava/lang/String;)Lzendesk/belvedere/r;

    move-result-object v3

    .line 10
    invoke-direct {p0, v2, v3}, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->updateAttachment(Lzendesk/support/request/StateRequestAttachment;Lzendesk/belvedere/r;)Lzendesk/support/request/StateRequestAttachment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1, v1}, Lzendesk/support/request/StateMessage;->withAttachments(Ljava/util/List;)Lzendesk/support/request/StateMessage;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private updateAttachment(Lzendesk/support/request/StateRequestAttachment;Lzendesk/belvedere/r;)Lzendesk/support/request/StateRequestAttachment;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 2
    invoke-virtual {p2}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v4

    .line 3
    invoke-virtual {p2}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v4

    .line 4
    :goto_0
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->newBuilder()Lzendesk/support/request/StateRequestAttachment$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v4}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalFile(Ljava/io/File;)Lzendesk/support/request/StateRequestAttachment$Builder;

    .line 6
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateRequestAttachment$Builder;->setLocalUri(Ljava/lang/String;)Lzendesk/support/request/StateRequestAttachment$Builder;

    .line 7
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment$Builder;->build()Lzendesk/support/request/StateRequestAttachment;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method resolveAttachments(Lzendesk/support/request/StateConversation;)Lzendesk/support/request/StateConversation;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateMessage;

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getAttachmentIdMapper()Lzendesk/support/request/StateIdMapper;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->belvedere:Lzendesk/belvedere/a;

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {p0, v2, v3, v4, v5}, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->findLocalAttachmentForMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateIdMapper;Lzendesk/belvedere/a;Ljava/lang/String;)Lzendesk/support/request/StateMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->newBuilder()Lzendesk/support/request/StateConversation$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lzendesk/support/request/StateConversation$Builder;->setMessages(Ljava/util/List;)Lzendesk/support/request/StateConversation$Builder;

    invoke-virtual {p1}, Lzendesk/support/request/StateConversation$Builder;->build()Lzendesk/support/request/StateConversation;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->id:Ljava/lang/String;

    const-class v2, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    .line 2
    invoke-virtual {v0, v1, v2}, Lzendesk/support/SupportUiStorage;->read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    const/4 v1, 0x0

    const-string v2, "RequestActivity"

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Successfully loaded request from disk"

    .line 5
    invoke-static {v2, v3, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->resolveAttachments(Lzendesk/support/request/StateConversation;)Lzendesk/support/request/StateConversation;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1, v0}, Lzendesk/support/request/ActionFactory;->loadCommentsFromCacheSuccess(Lzendesk/support/request/StateConversation;)Lt/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v1, "3.0.2"

    aput-object v1, v3, v0

    const-string v0, "Cached version doesn\'t match with SDK version. Ignoring cached data. [%s, %s]"

    .line 9
    invoke-static {v2, v0, v3}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v0}, Lzendesk/support/request/ActionFactory;->loadCommentsFromCacheError()Lt/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Unable to loaded request from disk"

    .line 11
    invoke-static {v2, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v0}, Lzendesk/support/request/ActionFactory;->loadCommentsFromCacheError()Lt/a/a;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->dispatcher:Lt/a/f;

    invoke-interface {v1, v0}, Lt/a/f;->c(Lt/a/a;)V

    .line 14
    iget-object v0, p0, Lzendesk/support/request/ActionLoadCachedComments$LoadComments;->callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {v0}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
