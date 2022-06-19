.class public Lzendesk/support/requestlist/RequestListActivity;
.super Landroidx/appcompat/app/c;
.source "SourceFile"


# instance fields
.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field model:Lzendesk/support/requestlist/RequestListModel;

.field presenter:Lzendesk/support/requestlist/RequestListPresenter;

.field syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

.field view:Lzendesk/support/requestlist/RequestListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/support/requestlist/RequestListUiConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListUiConfig$Builder;

    invoke-direct {v0}, Lzendesk/support/requestlist/RequestListUiConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static refresh(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 1

    const-string v0, "request_list_refresh"

    .line 1
    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0, p0}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lg/k/c/k;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v1

    const-string v3, "RequestListActivity"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "

    .line 4
    invoke-static {v3, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-class v5, Lzendesk/support/requestlist/RequestListUiConfig;

    invoke-static {v1, v5}, Lzendesk/commonui/q;->f(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/commonui/p;

    move-result-object v1

    check-cast v1, Lzendesk/support/requestlist/RequestListUiConfig;

    if-nez v1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use RequestListActivity.builder()"

    .line 7
    invoke-static {v3, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object v0

    new-instance v3, Lzendesk/support/requestlist/RequestListModule;

    invoke-direct {v3, p0, v1}, Lzendesk/support/requestlist/RequestListModule;-><init>(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/support/requestlist/RequestListUiConfig;)V

    .line 10
    invoke-interface {v0, v3}, Lzendesk/support/SupportSdkComponent;->plus(Lzendesk/support/requestlist/RequestListModule;)Lzendesk/support/requestlist/RequestListComponent;

    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lzendesk/support/requestlist/RequestListComponent;->inject(Lzendesk/support/requestlist/RequestListActivity;)V

    .line 12
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lzendesk/support/requestlist/RequestListPresenter;->onCreate(Z)V

    .line 14
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->remove(Lzendesk/core/ActionHandler;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListPresenter;->onDestroy(Z)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListSyncHandler;->setRunning(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListSyncHandler;->setRunning(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListView;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListView;->onStop()V

    return-void
.end method
