.class public Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public final freeEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lw3/a/b/b/a;

.field public final maxEntries:I

.field public numEntries:I

.field public final route:Lorg/apache/http/conn/routing/HttpRoute;

.field public final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->log:Lw3/a/b/b/a;

    .line 3
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 4
    iput p2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 5
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool$1;

    invoke-direct {p1, p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool$1;-><init>(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/params/ConnPerRoute;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->log:Lw3/a/b/b/a;

    .line 11
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    .line 12
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 13
    invoke-interface {p2, p1}, Lorg/apache/http/conn/params/ConnPerRoute;->getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    .line 14
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method


# virtual methods
.method public allocEntry(Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 5
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 9
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->shutdownEntry()V

    .line 10
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->log:Lw3/a/b/b/a;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public createdEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Entry not planned for this pool"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 2
    iget p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    :cond_0
    return p1
.end method

.method public dropEntry()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "There is no entry that could be dropped"

    invoke-static {v0, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 2
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return-void
.end method

.method public freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No entry allocated from this pool. "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No entry created for this pool. "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCapacity()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lorg/apache/http/conn/params/ConnPerRoute;->getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEntryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    return v0
.end method

.method public final getMaxEntries()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return v0
.end method

.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method public hasThread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnused()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->numEntries:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextThread()Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method

.method public queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    const-string v0, "Waiting thread"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
