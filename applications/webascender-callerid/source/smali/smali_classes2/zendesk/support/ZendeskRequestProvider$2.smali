.class Lzendesk/support/ZendeskRequestProvider$2;
.super Lzendesk/support/ZendeskCallbackSuccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskRequestProvider;->internalCreateRequest(Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskCallbackSuccess<",
        "Lzendesk/support/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/ZendeskRequestProvider;

.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/f;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/ZendeskRequestProvider$2;->this$0:Lzendesk/support/ZendeskRequestProvider;

    iput-object p3, p0, Lzendesk/support/ZendeskRequestProvider$2;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/Request;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskRequestProvider$2;->onSuccess(Lzendesk/support/Request;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/Request;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lcom/zendesk/service/b;

    const-string v0, "The request was created, but the ID is unknown."

    invoke-direct {p1, v0}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskCallbackSuccess;->onError(Lcom/zendesk/service/a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$2;->this$0:Lzendesk/support/ZendeskRequestProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskRequestProvider;->access$400(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskTracker;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/support/ZendeskTracker;->requestCreated()V

    .line 5
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$2;->this$0:Lzendesk/support/ZendeskRequestProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskRequestProvider;->access$500(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/support/Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/SupportBlipsProvider;->requestCreated(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$2;->this$0:Lzendesk/support/ZendeskRequestProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskRequestProvider;->access$600(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/RequestStorage;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/RequestStorage;->updateRequestData(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$2;->val$callback:Lcom/zendesk/service/f;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
