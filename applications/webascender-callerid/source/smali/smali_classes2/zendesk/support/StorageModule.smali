.class Lzendesk/support/StorageModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideArticleVoteStorage(Lzendesk/core/SessionStorage;)Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskArticleVoteStorage;

    invoke-interface {p1}, Lzendesk/core/SessionStorage;->getAdditionalSdkStorage()Lzendesk/core/BaseStorage;

    move-result-object p1

    invoke-direct {v0, p1}, Lzendesk/support/ZendeskArticleVoteStorage;-><init>(Lzendesk/core/BaseStorage;)V

    return-object v0
.end method

.method provideHelpCenterSessionCache()Lzendesk/support/HelpCenterSessionCache;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskHelpCenterSessionCache;

    invoke-direct {v0}, Lzendesk/support/ZendeskHelpCenterSessionCache;-><init>()V

    return-object v0
.end method

.method provideRequestMigrator(Landroid/content/Context;)Lzendesk/support/RequestMigrator;
    .locals 2

    const-string v0, "zendesk-authorization"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2
    new-instance v0, Lzendesk/support/LegacyRequestMigrator;

    invoke-direct {v0, p1}, Lzendesk/support/LegacyRequestMigrator;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method provideRequestSessionCache()Lzendesk/support/RequestSessionCache;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskRequestSessionCache;

    invoke-direct {v0}, Lzendesk/support/ZendeskRequestSessionCache;-><init>()V

    return-object v0
.end method

.method provideRequestStorage(Lzendesk/core/SessionStorage;Lzendesk/support/RequestMigrator;Lzendesk/core/MemoryCache;)Lzendesk/support/RequestStorage;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/ZendeskRequestStorage;

    invoke-interface {p1}, Lzendesk/core/SessionStorage;->getAdditionalSdkStorage()Lzendesk/core/BaseStorage;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lzendesk/support/ZendeskRequestStorage;-><init>(Lzendesk/core/BaseStorage;Lzendesk/support/RequestMigrator;Lzendesk/core/MemoryCache;)V

    return-object v0
.end method
