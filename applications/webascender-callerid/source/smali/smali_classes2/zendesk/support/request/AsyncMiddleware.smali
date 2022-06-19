.class Lzendesk/support/request/AsyncMiddleware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AsyncMiddleware$AsyncAction;,
        Lzendesk/support/request/AsyncMiddleware$Queue;,
        Lzendesk/support/request/AsyncMiddleware$QueueItem;,
        Lzendesk/support/request/AsyncMiddleware$Item;,
        Lzendesk/support/request/AsyncMiddleware$Callback;
    }
.end annotation


# instance fields
.field private final queue:Lzendesk/support/request/AsyncMiddleware$Queue;


# direct methods
.method constructor <init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/AsyncMiddleware;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    return-void
.end method

.method static createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lt/a/a;
    .locals 2

    .line 1
    new-instance v0, Lt/a/a;

    const-string v1, "async_action"

    invoke-direct {v0, v1, p0}, Lt/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onAction(Lt/a/a;Lt/a/j;Lt/a/f;Lt/a/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/a<",
            "*>;",
            "Lt/a/j;",
            "Lt/a/f;",
            "Lt/a/e;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    invoke-virtual {p1, v0}, Lt/a/a;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p3, p2}, Lzendesk/support/request/AsyncMiddleware$AsyncAction;->actionQueued(Lt/a/f;Lt/a/j;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/AsyncMiddleware;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    new-instance p4, Lzendesk/support/request/AsyncMiddleware$QueueItem;

    const/4 v1, 0x0

    invoke-direct {p4, v0, p2, p3, v1}, Lzendesk/support/request/AsyncMiddleware$QueueItem;-><init>(Lzendesk/support/request/AsyncMiddleware$AsyncAction;Lt/a/j;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$1;)V

    invoke-virtual {p1, p4}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatch(Lzendesk/support/request/AsyncMiddleware$Item;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p4, p1}, Lt/a/e;->a(Lt/a/a;)V

    :goto_0
    return-void
.end method
