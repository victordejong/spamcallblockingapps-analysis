.class final Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestListComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestListComponentImpl"
.end annotation


# instance fields
.field private modelProvider:Lj/a/a;

.field private presenterProvider:Lj/a/a;

.field private refreshHandlerProvider:Lj/a/a;

.field private repositoryProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzendesk/support/DaggerSupportSdkComponent;

.field private viewProvider:Lj/a/a;


# direct methods
.method private constructor <init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/requestlist/RequestListModule;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p2}, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->initialize(Lzendesk/support/requestlist/RequestListModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/requestlist/RequestListModule;)V

    return-void
.end method

.method private initialize(Lzendesk/support/requestlist/RequestListModule;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListModule_ViewFactory;->create(Lzendesk/support/requestlist/RequestListModule;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_ViewFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->viewProvider:Lj/a/a;

    .line 2
    iget-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {p1}, Lzendesk/support/DaggerSupportSdkComponent;->access$1500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$800(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v1}, Lzendesk/support/DaggerSupportSdkComponent;->access$500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v2}, Lzendesk/support/DaggerSupportSdkComponent;->access$1000(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v3}, Lzendesk/support/DaggerSupportSdkComponent;->access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_RepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->repositoryProvider:Lj/a/a;

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v1}, Lzendesk/support/DaggerSupportSdkComponent;->access$1200(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v2}, Lzendesk/support/DaggerSupportSdkComponent;->access$600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_ModelFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->modelProvider:Lj/a/a;

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->viewProvider:Lj/a/a;

    invoke-static {v0, p1}, Lzendesk/support/requestlist/RequestListModule_PresenterFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_PresenterFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->presenterProvider:Lj/a/a;

    .line 5
    invoke-static {p1}, Lzendesk/support/requestlist/RequestListModule_RefreshHandlerFactory;->create(Lj/a/a;)Lzendesk/support/requestlist/RequestListModule_RefreshHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->refreshHandlerProvider:Lj/a/a;

    return-void
.end method

.method private injectRequestListActivity(Lzendesk/support/requestlist/RequestListActivity;)Lzendesk/support/requestlist/RequestListActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->presenterProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->viewProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->modelProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1800(Lzendesk/support/DaggerSupportSdkComponent;)Lzendesk/core/CoreModule;

    move-result-object v0

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->refreshHandlerProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/requestlist/RequestListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;->injectRequestListActivity(Lzendesk/support/requestlist/RequestListActivity;)Lzendesk/support/requestlist/RequestListActivity;

    return-void
.end method
