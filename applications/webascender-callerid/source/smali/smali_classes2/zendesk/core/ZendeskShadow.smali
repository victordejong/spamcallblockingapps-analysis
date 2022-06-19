.class final Lzendesk/core/ZendeskShadow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final blipsCoreProvider:Lzendesk/core/BlipsCoreProvider;

.field private final coreModule:Lzendesk/core/CoreModule;

.field private final identityManager:Lzendesk/core/IdentityManager;

.field private final legacyIdentityMigrator:Lzendesk/core/LegacyIdentityMigrator;

.field private final providerStore:Lzendesk/core/ProviderStore;

.field private final pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

.field private final storage:Lzendesk/core/Storage;


# direct methods
.method constructor <init>(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskShadow;->legacyIdentityMigrator:Lzendesk/core/LegacyIdentityMigrator;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskShadow;->identityManager:Lzendesk/core/IdentityManager;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskShadow;->blipsCoreProvider:Lzendesk/core/BlipsCoreProvider;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskShadow;->pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

    .line 7
    iput-object p6, p0, Lzendesk/core/ZendeskShadow;->coreModule:Lzendesk/core/CoreModule;

    .line 8
    iput-object p7, p0, Lzendesk/core/ZendeskShadow;->providerStore:Lzendesk/core/ProviderStore;

    return-void
.end method

.method private static checkIdentityValid(Lzendesk/core/Identity;)Z
    .locals 4

    const-string v0, "ZendeskShadow"

    const/4 v1, 0x0

    const-string v2, "setIdentity(): The provided Identity object must be an Anonymous Identity or a JwtIdentity with a non-empty JWT identifier. Returning."

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {v0, v2, p0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 2
    :cond_0
    instance-of v3, p0, Lzendesk/core/AnonymousIdentity;

    if-nez v3, :cond_1

    instance-of v3, p0, Lzendesk/core/JwtIdentity;

    if-nez v3, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {v0, v2, p0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 4
    :cond_1
    instance-of v3, p0, Lzendesk/core/JwtIdentity;

    if-eqz v3, :cond_2

    check-cast p0, Lzendesk/core/JwtIdentity;

    invoke-virtual {p0}, Lzendesk/core/JwtIdentity;->getJwtUserIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v2, p0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method cleanupIfNewConfig(Lzendesk/core/ApplicationConfiguration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {v0, p1}, Lzendesk/core/Storage;->hasSdkConfigChanged(Lzendesk/core/ApplicationConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/core/ZendeskShadow;->pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lzendesk/core/PushRegistrationProvider;->unregisterDevice(Lcom/zendesk/service/f;)V

    :cond_0
    return-void
.end method

.method public coreModule()Lzendesk/core/CoreModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->coreModule:Lzendesk/core/CoreModule;

    return-object v0
.end method

.method public getIdentity()Lzendesk/core/Identity;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v0}, Lzendesk/core/IdentityManager;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    return-object v0
.end method

.method init(Lzendesk/core/ApplicationConfiguration;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {v0, p1}, Lzendesk/core/Storage;->hasSdkConfigChanged(Lzendesk/core/ApplicationConfiguration;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ZendeskShadow"

    if-eqz v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "SDK app config details have changed, cleaning up old config storage."

    .line 2
    invoke-static {v2, v0, p2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {p2}, Lzendesk/core/Storage;->clear()V

    .line 4
    iget-object p2, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {p2, p1}, Lzendesk/core/Storage;->storeSdkHash(Lzendesk/core/ApplicationConfiguration;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Zendesk is already initialized with these details, skipping."

    .line 5
    invoke-static {v2, p2, p1}, Lg/k/b/a;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lzendesk/core/ZendeskShadow;->blipsCoreProvider:Lzendesk/core/BlipsCoreProvider;

    invoke-interface {p1}, Lzendesk/core/BlipsCoreProvider;->coreInitialized()V

    return-void
.end method

.method public providers()Lzendesk/core/ProviderStore;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->providerStore:Lzendesk/core/ProviderStore;

    return-object v0
.end method

.method reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lzendesk/core/PushRegistrationProvider;->unregisterDevice(Lcom/zendesk/service/f;)V

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {v0}, Lzendesk/core/Storage;->getSessionStorage()Lzendesk/core/SessionStorage;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {v0}, Lzendesk/core/Storage;->clear()V

    return-void
.end method

.method public setIdentity(Lzendesk/core/Identity;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lzendesk/core/ZendeskShadow;->checkIdentityValid(Lzendesk/core/Identity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->legacyIdentityMigrator:Lzendesk/core/LegacyIdentityMigrator;

    invoke-virtual {v0}, Lzendesk/core/LegacyIdentityMigrator;->checkAndMigrateIdentity()V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v0, p1}, Lzendesk/core/IdentityManager;->identityIsDifferent(Lzendesk/core/Identity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lzendesk/core/PushRegistrationProvider;->unregisterDevice(Lcom/zendesk/service/f;)V

    .line 5
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->storage:Lzendesk/core/Storage;

    invoke-interface {v0}, Lzendesk/core/Storage;->getSessionStorage()Lzendesk/core/SessionStorage;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    .line 6
    iget-object v0, p0, Lzendesk/core/ZendeskShadow;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v0, p1}, Lzendesk/core/IdentityManager;->updateAndPersistIdentity(Lzendesk/core/Identity;)Lzendesk/core/Identity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskShadow"

    const-string v1, "Zendesk is already initialized with this identity, skipping."

    .line 7
    invoke-static {v0, v1, p1}, Lg/k/b/a;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
