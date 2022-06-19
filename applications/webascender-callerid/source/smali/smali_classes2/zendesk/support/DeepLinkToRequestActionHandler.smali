.class Lzendesk/support/DeepLinkToRequestActionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/ActionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static data(Landroid/content/Intent;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "request_ui_config"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "back_stack_activities"

    .line 3
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "request_view_conversation"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActionDescription()Lzendesk/core/ActionDescription;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handle(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/core/app/p;->i(Landroid/content/Context;)Landroidx/core/app/p;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "back_stack_activities"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0, v2}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lzendesk/support/requestlist/RequestListActivity;->builder()Lzendesk/support/requestlist/RequestListUiConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/commonui/p;

    invoke-virtual {v1, p2, v2}, Lzendesk/support/requestlist/RequestListUiConfig$Builder;->intent(Landroid/content/Context;[Lzendesk/commonui/p;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    if-eqz p1, :cond_1

    const-string p2, "request_ui_config"

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroidx/core/app/p;->m()V

    return-void
.end method

.method public updateSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/l;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
