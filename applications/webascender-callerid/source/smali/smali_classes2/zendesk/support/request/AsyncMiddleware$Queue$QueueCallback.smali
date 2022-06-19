.class Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AsyncMiddleware$Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/AsyncMiddleware$Queue;


# direct methods
.method private constructor <init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;->this$0:Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/request/AsyncMiddleware$Queue;Lzendesk/support/request/AsyncMiddleware$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;-><init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;->this$0:Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware$Queue;->access$200(Lzendesk/support/request/AsyncMiddleware$Queue;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;->this$0:Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware$Queue;->access$200(Lzendesk/support/request/AsyncMiddleware$Queue;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/AsyncMiddleware$Item;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lzendesk/support/request/AsyncMiddleware$Queue$QueueCallback;->this$0:Lzendesk/support/request/AsyncMiddleware$Queue;

    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware$Queue;->access$300(Lzendesk/support/request/AsyncMiddleware$Queue;)V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
