.class Lzendesk/support/request/ActionInstallConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionInstallConfiguration;->execute(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ActionInstallConfiguration;

.field final synthetic val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field final synthetic val$dispatcher:Lt/a/f;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionInstallConfiguration;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    iput-object p2, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$dispatcher:Lt/a/f;

    iput-object p3, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v0}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/RequestUiConfig;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getLocalRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v2}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/support/request/RequestUiConfig;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v3}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lzendesk/support/request/RequestUiConfig;->getLocalRequestId()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, v2

    move-object v8, v3

    goto :goto_3

    .line 5
    :cond_1
    :goto_1
    iget-object v4, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 6
    invoke-static {v4}, Lzendesk/support/request/ActionInstallConfiguration;->access$100(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/SupportUiStorage;

    move-result-object v4

    const-class v5, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;

    const-string v6, "request_id_mapper"

    invoke-virtual {v4, v6, v5}, Lzendesk/support/SupportUiStorage;->read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v4, v3}, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;->getRemoteId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v4, v2}, Lzendesk/support/request/ComponentPersistence$RequestIdMapper;->getLocalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 9
    :cond_3
    :goto_2
    invoke-static {v3}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lzendesk/support/IdUtil;->newStringId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 11
    :goto_3
    invoke-static {v7}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v0}, Lzendesk/support/request/ActionInstallConfiguration;->access$200(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    invoke-interface {v0, v7}, Lzendesk/support/SupportBlipsProvider;->requestViewed(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const-string v1, "RequestActivity"

    const-string v2, "Request information loaded from disk. Remote id: \'%s\'. Local id: \'%s\'"

    .line 13
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {v7}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 15
    invoke-static {v0}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/RequestUiConfig;->getFiles()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    move-object v11, v0

    .line 16
    new-instance v0, Lzendesk/support/request/RequestUiConfig;

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 17
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getRequestSubject()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 18
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getTags()Ljava/util/List;

    move-result-object v6

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 19
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getRequestStatus()Lzendesk/support/RequestStatus;

    move-result-object v9

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 20
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object v10

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 21
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->hasAgentReplies()Z

    move-result v12

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    .line 22
    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/RequestUiConfig;->getUiConfigs()Ljava/util/List;

    move-result-object v13

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lzendesk/support/request/RequestUiConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;Lzendesk/support/request/StateRequestTicketForm;Ljava/util/List;ZLjava/util/List;)V

    .line 23
    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$400(Lzendesk/support/request/ActionInstallConfiguration;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lzendesk/support/request/ActionInstallConfiguration$1$1;

    invoke-direct {v2, p0, v0}, Lzendesk/support/request/ActionInstallConfiguration$1$1;-><init>(Lzendesk/support/request/ActionInstallConfiguration$1;Lzendesk/support/request/RequestUiConfig;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
