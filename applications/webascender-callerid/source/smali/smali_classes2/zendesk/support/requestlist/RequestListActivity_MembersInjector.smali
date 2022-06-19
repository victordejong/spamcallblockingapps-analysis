.class public final Lzendesk/support/requestlist/RequestListActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/requestlist/RequestListActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method public static injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListModel;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->model:Lzendesk/support/requestlist/RequestListModel;

    return-void
.end method

.method public static injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListPresenter;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    return-void
.end method

.method public static injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListSyncHandler;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    return-void
.end method

.method public static injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/requestlist/RequestListView;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    return-void
.end method
