.class final Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/RequestComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestComponentImpl"
.end annotation


# instance fields
.field private providesActionFactoryProvider:Lj/a/a;

.field private providesAsyncMiddlewareProvider:Lj/a/a;

.field private providesAttachmentDownloaderComponentProvider:Lj/a/a;

.field private providesAttachmentDownloaderProvider:Lj/a/a;

.field private providesAttachmentToDiskServiceProvider:Lj/a/a;

.field private providesBelvedereProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/belvedere/a;",
            ">;"
        }
    .end annotation
.end field

.field private providesComponentListenerProvider:Lj/a/a;

.field private providesConUpdatesComponentProvider:Lj/a/a;

.field private providesDiskQueueProvider:Lj/a/a;

.field private providesDispatcherProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lt/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private providesMessageFactoryProvider:Lj/a/a;

.field private providesPersistenceComponentProvider:Lj/a/a;

.field private providesReducerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Ljava/util/List<",
            "Lt/a/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesStoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lt/a/q;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzendesk/support/DaggerSupportSdkComponent;


# direct methods
.method private constructor <init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/request/RequestModule;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p2}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->initialize(Lzendesk/support/request/RequestModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/request/RequestModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent;Lzendesk/support/request/RequestModule;)V

    return-void
.end method

.method private initialize(Lzendesk/support/request/RequestModule;)V
    .locals 10

    .line 1
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesReducerFactory;->create()Lzendesk/support/request/RequestModule_ProvidesReducerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesReducerProvider:Lj/a/a;

    .line 2
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;->create()Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesAsyncMiddlewareProvider:Lj/a/a;

    .line 3
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesReducerProvider:Lj/a/a;

    invoke-static {v1, v0}, Lzendesk/support/request/RequestModule_ProvidesStoreFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesStoreFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesStoreProvider:Lj/a/a;

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;->create(Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesBelvedereFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesBelvedereProvider:Lj/a/a;

    .line 5
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v1

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$700(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesBelvedereProvider:Lj/a/a;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$800(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v5

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v6

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1000(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v7

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1100(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v8

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1200(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    .line 6
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/RequestModule_ProvidesDiskQueueFactory;->create(Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesDiskQueueFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesDiskQueueProvider:Lj/a/a;

    .line 7
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$800(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesDiskQueueProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v2}, Lzendesk/support/DaggerSupportSdkComponent;->access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesPersistenceComponentProvider:Lj/a/a;

    .line 8
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesStoreProvider:Lj/a/a;

    invoke-static {v0}, Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;->create(Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesDispatcherFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesDispatcherProvider:Lj/a/a;

    .line 9
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1300(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v1}, Lzendesk/support/DaggerSupportSdkComponent;->access$900(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesAttachmentToDiskServiceProvider:Lj/a/a;

    .line 10
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesBelvedereProvider:Lj/a/a;

    invoke-static {v1, v0}, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;->create(Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesAttachmentDownloaderProvider:Lj/a/a;

    .line 11
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesDispatcherProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    invoke-static {v1, v2, v0}, Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderComponentFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesAttachmentDownloaderComponentFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesAttachmentDownloaderComponentProvider:Lj/a/a;

    .line 12
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v1}, Lzendesk/support/DaggerSupportSdkComponent;->access$1400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v2}, Lzendesk/support/DaggerSupportSdkComponent;->access$1500(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/support/request/RequestModule_ProvidesConUpdatesComponentFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesConUpdatesComponentFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/c;->a(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesConUpdatesComponentProvider:Lj/a/a;

    .line 13
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesPersistenceComponentProvider:Lj/a/a;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesAttachmentDownloaderComponentProvider:Lj/a/a;

    invoke-static {v1, v2, v0}, Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;->create(Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesComponentListenerFactory;

    move-result-object v0

    invoke-static {v0}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesComponentListenerProvider:Lj/a/a;

    .line 14
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$400(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v2

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesDispatcherProvider:Lj/a/a;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1700(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;->create(Lzendesk/support/request/RequestModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/request/RequestModule_ProvidesMessageFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Lh/b/a;->b(Lj/a/a;)Lj/a/a;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesMessageFactoryProvider:Lj/a/a;

    return-void
.end method

.method private injectRequestActivity(Lzendesk/support/request/RequestActivity;)Lzendesk/support/request/RequestActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesStoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/a/q;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestActivity_MembersInjector;->injectStore(Lzendesk/support/request/RequestActivity;Lt/a/q;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestActivity_MembersInjector;->injectAf(Lzendesk/support/request/RequestActivity;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesComponentListenerProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestActivity_MembersInjector;->injectHeadlessComponentListener(Lzendesk/support/request/RequestActivity;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/i/a/d;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestActivity_MembersInjector;->injectPicasso(Lzendesk/support/request/RequestActivity;Lg/i/a/d;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1800(Lzendesk/support/DaggerSupportSdkComponent;)Lzendesk/core/CoreModule;

    move-result-object v0

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/request/RequestActivity;Lzendesk/core/ActionHandlerRegistry;)V

    return-object p1
.end method

.method private injectRequestViewConversationsDisabled(Lzendesk/support/request/RequestViewConversationsDisabled;)Lzendesk/support/request/RequestViewConversationsDisabled;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesStoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/a/q;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled_MembersInjector;->injectStore(Lzendesk/support/request/RequestViewConversationsDisabled;Lt/a/q;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled_MembersInjector;->injectAf(Lzendesk/support/request/RequestViewConversationsDisabled;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/i/a/d;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled_MembersInjector;->injectPicasso(Lzendesk/support/request/RequestViewConversationsDisabled;Lg/i/a/d;)V

    return-object p1
.end method

.method private injectRequestViewConversationsEnabled(Lzendesk/support/request/RequestViewConversationsEnabled;)Lzendesk/support/request/RequestViewConversationsEnabled;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesStoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/a/q;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectStore(Lzendesk/support/request/RequestViewConversationsEnabled;Lt/a/q;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesActionFactoryProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectAf(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->providesMessageFactoryProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectCellFactory(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->this$0:Lzendesk/support/DaggerSupportSdkComponent;

    invoke-static {v0}, Lzendesk/support/DaggerSupportSdkComponent;->access$1600(Lzendesk/support/DaggerSupportSdkComponent;)Lj/a/a;

    move-result-object v0

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/i/a/d;

    invoke-static {p1, v0}, Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;->injectPicasso(Lzendesk/support/request/RequestViewConversationsEnabled;Lg/i/a/d;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/request/RequestActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->injectRequestActivity(Lzendesk/support/request/RequestActivity;)Lzendesk/support/request/RequestActivity;

    return-void
.end method

.method public inject(Lzendesk/support/request/RequestViewConversationsDisabled;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->injectRequestViewConversationsDisabled(Lzendesk/support/request/RequestViewConversationsDisabled;)Lzendesk/support/request/RequestViewConversationsDisabled;

    return-void
.end method

.method public inject(Lzendesk/support/request/RequestViewConversationsEnabled;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;->injectRequestViewConversationsEnabled(Lzendesk/support/request/RequestViewConversationsEnabled;)Lzendesk/support/request/RequestViewConversationsEnabled;

    return-void
.end method
