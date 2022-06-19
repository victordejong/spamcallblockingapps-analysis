.class public final Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/SupportModule;",
        ">;"
    }
.end annotation


# instance fields
.field private final articleVoteStorageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/ArticleVoteStorage;",
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

.field private final helpCenterProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/ProviderModule;

.field private final requestProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final restServiceProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
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

.field private final uploadProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/support/UploadProvider;",
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
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/UploadProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->module:Lzendesk/support/ProviderModule;

    .line 3
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->requestProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->uploadProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->helpCenterProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->settingsProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->restServiceProvider:Lj/a/a;

    .line 8
    iput-object p7, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->blipsProvider:Lj/a/a;

    .line 9
    iput-object p8, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->zendeskTrackerProvider:Lj/a/a;

    .line 10
    iput-object p9, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->articleVoteStorageProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Lj/a/a<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/UploadProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/RestServiceProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ZendeskTracker;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;"
        }
    .end annotation

    .line 1
    new-instance v10, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;

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

    invoke-direct/range {v0 .. v9}, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;-><init>(Lzendesk/support/ProviderModule;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v10
.end method

.method public static provideSupportModule(Lzendesk/support/ProviderModule;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/support/SupportBlipsProvider;Ljava/lang/Object;Lzendesk/support/ArticleVoteStorage;)Lzendesk/support/SupportModule;
    .locals 9

    .line 1
    move-object/from16 v7, p7

    check-cast v7, Lzendesk/support/ZendeskTracker;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lzendesk/support/ProviderModule;->provideSupportModule(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/ZendeskTracker;Lzendesk/support/ArticleVoteStorage;)Lzendesk/support/SupportModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lzendesk/support/SupportModule;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->get()Lzendesk/support/SupportModule;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportModule;
    .locals 9

    .line 2
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->requestProvider:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->uploadProvider:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/UploadProvider;

    iget-object v3, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->helpCenterProvider:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/HelpCenterProvider;

    iget-object v4, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->settingsProvider:Lj/a/a;

    invoke-interface {v4}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/SupportSettingsProvider;

    iget-object v5, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->restServiceProvider:Lj/a/a;

    invoke-interface {v5}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/core/RestServiceProvider;

    iget-object v6, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->blipsProvider:Lj/a/a;

    invoke-interface {v6}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/support/SupportBlipsProvider;

    iget-object v7, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->zendeskTrackerProvider:Lj/a/a;

    invoke-interface {v7}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->articleVoteStorageProvider:Lj/a/a;

    invoke-interface {v8}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzendesk/support/ArticleVoteStorage;

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->provideSupportModule(Lzendesk/support/ProviderModule;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/support/SupportBlipsProvider;Ljava/lang/Object;Lzendesk/support/ArticleVoteStorage;)Lzendesk/support/SupportModule;

    move-result-object v0

    return-object v0
.end method
