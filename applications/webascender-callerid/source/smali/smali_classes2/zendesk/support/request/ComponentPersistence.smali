.class Lzendesk/support/request/ComponentPersistence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentPersistence$RequestIdMapper;,
        Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;,
        Lzendesk/support/request/ComponentPersistence$PersistenceSelector;,
        Lzendesk/support/request/ComponentPersistence$PersistenceQueue;,
        Lzendesk/support/request/ComponentPersistence$PersistenceItem;,
        Lzendesk/support/request/ComponentPersistence$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final isMappingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final persistenceSelector:Lzendesk/support/request/ComponentPersistence$PersistenceSelector;

.field private final queue:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;


# direct methods
.method constructor <init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzendesk/support/request/ComponentPersistence;->isMappingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 4
    new-instance p1, Lzendesk/support/request/ComponentPersistence$PersistenceSelector;

    invoke-direct {p1}, Lzendesk/support/request/ComponentPersistence$PersistenceSelector;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence;->persistenceSelector:Lzendesk/support/request/ComponentPersistence$PersistenceSelector;

    .line 5
    iput-object p2, p0, Lzendesk/support/request/ComponentPersistence;->queue:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    .line 6
    iput-object p3, p0, Lzendesk/support/request/ComponentPersistence;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ComponentPersistence;)Lzendesk/support/SupportUiStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentPersistence;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ComponentPersistence;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ComponentPersistence;->isMappingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private persistConversation(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->isActivityStopped()Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getLocalRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence;->queue:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    new-instance v1, Lzendesk/support/request/ComponentPersistence$PersistenceItem;

    iget-object v2, p0, Lzendesk/support/request/ComponentPersistence;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    invoke-direct {v1, v2, p1}, Lzendesk/support/request/ComponentPersistence$PersistenceItem;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V

    invoke-virtual {v0, v1}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->dispatch(Lzendesk/support/request/ComponentPersistence$Item;)V

    :cond_1
    return-void
.end method

.method private persistRequestId(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence;->isMappingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_5

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    iget-object p1, p0, Lzendesk/support/request/ComponentPersistence;->isMappingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    :cond_3
    iget-object p1, p0, Lzendesk/support/request/ComponentPersistence;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lzendesk/support/request/ComponentPersistence$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lzendesk/support/request/ComponentPersistence$1;-><init>(Lzendesk/support/request/ComponentPersistence;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p1}, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->getConversation()Lzendesk/support/request/StateConversation;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->g(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/request/ComponentPersistence$2;

    invoke-direct {v1, p0, p1}, Lzendesk/support/request/ComponentPersistence$2;-><init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method getSelector()Lt/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt/a/p<",
            "Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence;->persistenceSelector:Lzendesk/support/request/ComponentPersistence$PersistenceSelector;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentPersistence;->update(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentPersistence;->persistConversation(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentPersistence;->persistRequestId(Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;)V

    return-void
.end method
