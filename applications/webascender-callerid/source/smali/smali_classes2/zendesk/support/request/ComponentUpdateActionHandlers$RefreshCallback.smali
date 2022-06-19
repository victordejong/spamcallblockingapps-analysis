.class Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentUpdateActionHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/requestlist/RequestInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field final synthetic this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;


# direct methods
.method private constructor <init>(Lzendesk/support/request/ComponentUpdateActionHandlers;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/request/ComponentUpdateActionHandlers;Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/request/ComponentUpdateActionHandlers$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;-><init>(Lzendesk/support/request/ComponentUpdateActionHandlers;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$200(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/AsyncMiddleware$Queue;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$300(Lzendesk/support/request/ComponentUpdateActionHandlers;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {v0}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$400(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity;->refresh(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$200(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/support/request/AsyncMiddleware$Queue;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/request/AsyncMiddleware$Queue;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {p1}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$300(Lzendesk/support/request/ComponentUpdateActionHandlers;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/ComponentUpdateActionHandlers$RefreshCallback;->this$0:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-static {v0}, Lzendesk/support/request/ComponentUpdateActionHandlers;->access$400(Lzendesk/support/request/ComponentUpdateActionHandlers;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity;->refresh(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;)V

    :cond_0
    return-void
.end method
