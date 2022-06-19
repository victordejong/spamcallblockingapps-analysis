.class Lzendesk/support/request/ActionLoadComments$1;
.super Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionLoadComments;->execute(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback<",
        "Lzendesk/support/CommentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ActionLoadComments;

.field final synthetic val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field final synthetic val$con:Lzendesk/support/request/StateConversation;

.field final synthetic val$dispatcher:Lt/a/f;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionLoadComments;Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;Lzendesk/support/request/StateConversation;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    iput-object p6, p0, Lzendesk/support/request/ActionLoadComments$1;->val$con:Lzendesk/support/request/StateConversation;

    iput-object p7, p0, Lzendesk/support/request/ActionLoadComments$1;->val$dispatcher:Lt/a/f;

    iput-object p8, p0, Lzendesk/support/request/ActionLoadComments$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-direct {p0, p2, p3, p4, p5}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;-><init>(Landroid/os/Handler;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public onDelayedError(Lcom/zendesk/service/a;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Lcom/zendesk/service/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RequestActivity"

    const-string v2, "Unable to load comments. Error: \'%s\'"

    invoke-static {v1, v2, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ActionLoadComments$1;->val$dispatcher:Lt/a/f;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadComments;->access$300(Lzendesk/support/request/ActionLoadComments;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    invoke-static {v2}, Lzendesk/support/request/ActionLoadComments;->access$200(Lzendesk/support/request/ActionLoadComments;)Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lzendesk/support/request/ActionFactory;->loadCommentsError(ZLcom/zendesk/service/a;)Lt/a/a;

    move-result-object p1

    invoke-interface {v0, p1}, Lt/a/f;->c(Lt/a/a;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ActionLoadComments$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method

.method public bridge synthetic onDelayedSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/CommentsResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ActionLoadComments$1;->onDelayedSuccess(Lzendesk/support/CommentsResponse;)V

    return-void
.end method

.method public onDelayedSuccess(Lzendesk/support/CommentsResponse;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$1;->val$con:Lzendesk/support/request/StateConversation;

    invoke-virtual {v1}, Lzendesk/support/request/StateConversation;->getMessageIdMapper()Lzendesk/support/request/StateIdMapper;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateIdMapper;->getRemoteIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p1}, Lzendesk/support/CommentsResponse;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/CommentResponse;

    .line 4
    invoke-virtual {v2}, Lzendesk/support/CommentResponse;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadComments;->access$000(Lzendesk/support/request/ActionLoadComments;)Lzendesk/support/RequestProvider;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments$1;->val$con:Lzendesk/support/request/StateConversation;

    invoke-virtual {v2}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lzendesk/support/RequestProvider;->markRequestAsRead(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$1;->val$con:Lzendesk/support/request/StateConversation;

    .line 7
    invoke-virtual {v1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lzendesk/support/request/ActionLoadComments;->access$100(Lzendesk/support/request/ActionLoadComments;Ljava/lang/String;Lzendesk/support/CommentsResponse;)Ljava/util/Map;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$1;->val$dispatcher:Lt/a/f;

    iget-object v2, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    invoke-static {v2}, Lzendesk/support/request/ActionLoadComments;->access$300(Lzendesk/support/request/ActionLoadComments;)Lzendesk/support/request/ActionFactory;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/request/ActionLoadComments$1;->this$0:Lzendesk/support/request/ActionLoadComments;

    .line 9
    invoke-static {v3}, Lzendesk/support/request/ActionLoadComments;->access$200(Lzendesk/support/request/ActionLoadComments;)Z

    move-result v3

    invoke-virtual {v2, v3, p1, v0}, Lzendesk/support/request/ActionFactory;->loadCommentsSuccess(ZLzendesk/support/CommentsResponse;Ljava/util/Map;)Lt/a/a;

    move-result-object p1

    .line 10
    invoke-interface {v1, p1}, Lt/a/f;->c(Lt/a/a;)V

    .line 11
    iget-object p1, p0, Lzendesk/support/request/ActionLoadComments$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
