.class public Lzendesk/support/ZendeskDeepLinkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parser:Lzendesk/support/ZendeskDeepLinkParser;

.field private final registry:Lzendesk/core/ActionHandlerRegistry;


# direct methods
.method constructor <init>(Lzendesk/core/ActionHandlerRegistry;Lzendesk/support/ZendeskDeepLinkParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskDeepLinkHelper;->registry:Lzendesk/core/ActionHandlerRegistry;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskDeepLinkHelper;->parser:Lzendesk/support/ZendeskDeepLinkParser;

    return-void
.end method


# virtual methods
.method deepLinkToRequest(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskDeepLinkHelper;->registry:Lzendesk/core/ActionHandlerRegistry;

    const-string v1, "request_view_conversation"

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p3}, Lzendesk/support/DeepLinkToRequestActionHandler;->data(Landroid/content/Intent;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1, p2}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public launch(Ljava/lang/String;Lzendesk/commonui/p;Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskDeepLinkHelper;->parser:Lzendesk/support/ZendeskDeepLinkParser;

    invoke-virtual {v0, p1}, Lzendesk/support/ZendeskDeepLinkParser;->parse(Ljava/lang/String;)Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/support/ZendeskDeepLinkHelper;->registry:Lzendesk/core/ActionHandlerRegistry;

    invoke-virtual {p1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lzendesk/support/ViewArticleDeepLinkParser$ActionPayload;->getPayload()Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lzendesk/commonui/q;->d(Ljava/util/Map;Lzendesk/commonui/p;)V

    .line 6
    invoke-interface {v0, p1, p3}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
