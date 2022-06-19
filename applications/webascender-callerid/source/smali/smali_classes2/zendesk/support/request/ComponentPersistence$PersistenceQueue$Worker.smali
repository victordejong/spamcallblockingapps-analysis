.class Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentPersistence$PersistenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;


# direct methods
.method private constructor <init>(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;Lzendesk/support/request/ComponentPersistence$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;-><init>(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v0}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v1}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v1}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ComponentPersistence$Item;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Lzendesk/support/request/ComponentPersistence$Item;->persist()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v0}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v2}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$300(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0

    .line 7
    :cond_1
    :try_start_2
    iget-object v1, p0, Lzendesk/support/request/ComponentPersistence$PersistenceQueue$Worker;->this$0:Lzendesk/support/request/ComponentPersistence$PersistenceQueue;

    invoke-static {v1}, Lzendesk/support/request/ComponentPersistence$PersistenceQueue;->access$400(Lzendesk/support/request/ComponentPersistence$PersistenceQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
