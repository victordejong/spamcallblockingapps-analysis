.class public final Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/RequestProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final authenticationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final blipsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/ProviderModule;

.field private final requestServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskRequestService;",
            ">;"
        }
    .end annotation
.end field

.field private final requestSessionCacheProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSdkMetadataProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/SupportSdkMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final zendeskTrackerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskRequestService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestSessionCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSdkMetadata;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->settingsProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->authenticationProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestServiceProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestStorageProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestSessionCacheProvider:Lj/a/a;

    .line 8
    iput-object p7, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->zendeskTrackerProvider:Lj/a/a;

    .line 9
    iput-object p8, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->supportSdkMetadataProvider:Lj/a/a;

    .line 10
    iput-object p9, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->blipsProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskRequestService;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestStorage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/RequestSessionCache;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSdkMetadata;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;"
        }
    .end annotation

    .line 1
    new-instance v10, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;-><init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v10
.end method

.method public static provideRequestProvider(Lzendesk/support/ProviderModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/RequestProvider;
    .locals 9

    .line 1
    move-object v3, p3

    check-cast v3, Lzendesk/support/ZendeskRequestService;

    move-object v4, p4

    check-cast v4, Lzendesk/support/RequestStorage;

    move-object v5, p5

    check-cast v5, Lzendesk/support/RequestSessionCache;

    move-object v6, p6

    check-cast v6, Lzendesk/support/ZendeskTracker;

    move-object/from16 v7, p7

    check-cast v7, Lzendesk/support/SupportSdkMetadata;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lzendesk/support/ProviderModule;->provideRequestProvider(Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;Lzendesk/support/ZendeskRequestService;Lzendesk/support/RequestStorage;Lzendesk/support/RequestSessionCache;Lzendesk/support/ZendeskTracker;Lzendesk/support/SupportSdkMetadata;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/RequestProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lzendesk/support/RequestProvider;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->get()Lzendesk/support/RequestProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/RequestProvider;
    .locals 9

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->settingsProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->authenticationProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/core/AuthenticationProvider;

    iget-object v3, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestServiceProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestStorageProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->requestSessionCacheProvider:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->zendeskTrackerProvider:Lj/a/a;

    invoke-interface {v6}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->supportSdkMetadataProvider:Lj/a/a;

    invoke-interface {v7}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->blipsProvider:Lj/a/a;

    invoke-interface {v8}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzendesk/support/SupportBlipsProvider;

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->provideRequestProvider(Lzendesk/support/ProviderModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/RequestProvider;

    move-result-object v0

    return-object v0
.end method
