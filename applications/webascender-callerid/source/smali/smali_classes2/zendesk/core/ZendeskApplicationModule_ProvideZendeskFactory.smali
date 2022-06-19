.class public final Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/core/ZendeskShadow;",
        ">;"
    }
.end annotation


# instance fields
.field private final blipsCoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final coreModuleProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyIdentityMigratorProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/LegacyIdentityMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private final providerStoreProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private final pushRegistrationProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final storageProvider:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lzendesk/core/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/Storage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/LegacyIdentityMigrator;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/CoreModule;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ProviderStore;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->storageProvider:Lj/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->legacyIdentityMigratorProvider:Lj/a/a;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->identityManagerProvider:Lj/a/a;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->blipsCoreProvider:Lj/a/a;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->pushRegistrationProvider:Lj/a/a;

    .line 7
    iput-object p6, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->coreModuleProvider:Lj/a/a;

    .line 8
    iput-object p7, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->providerStoreProvider:Lj/a/a;

    return-void
.end method

.method public static create(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lzendesk/core/Storage;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/LegacyIdentityMigrator;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/IdentityManager;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/CoreModule;",
            ">;",
            "Lj/a/a<",
            "Lzendesk/core/ProviderStore;",
            ">;)",
            "Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;"
        }
    .end annotation

    .line 1
    new-instance v8, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v8
.end method

.method public static provideZendesk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)Lzendesk/core/ZendeskShadow;
    .locals 7

    .line 1
    move-object v0, p0

    check-cast v0, Lzendesk/core/Storage;

    move-object v1, p1

    check-cast v1, Lzendesk/core/LegacyIdentityMigrator;

    move-object v2, p2

    check-cast v2, Lzendesk/core/IdentityManager;

    move-object v3, p3

    check-cast v3, Lzendesk/core/BlipsCoreProvider;

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskApplicationModule;->provideZendesk(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)Lzendesk/core/ZendeskShadow;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/ZendeskShadow;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->get()Lzendesk/core/ZendeskShadow;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskShadow;
    .locals 8

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->storageProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->legacyIdentityMigratorProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->identityManagerProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->blipsCoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->pushRegistrationProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lzendesk/core/PushRegistrationProvider;

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->coreModuleProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lzendesk/core/CoreModule;

    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->providerStoreProvider:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lzendesk/core/ProviderStore;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->provideZendesk(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)Lzendesk/core/ZendeskShadow;

    move-result-object v0

    return-object v0
.end method
