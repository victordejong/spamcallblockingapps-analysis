.class Lzendesk/core/ZendeskCoreSettingsStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/CoreSettingsStorage;


# static fields
.field static final DEFAULT_BLIPS_SETTINGS:Lzendesk/core/BlipsSettings;

.field static final DEFAULT_CORE_SETTINGS:Lzendesk/core/CoreSettings;


# instance fields
.field private final settingsStorage:Lzendesk/core/SettingsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lzendesk/core/CoreSettings;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/core/CoreSettings;-><init>(Ljava/util/Date;Lzendesk/core/AuthenticationType;)V

    sput-object v0, Lzendesk/core/ZendeskCoreSettingsStorage;->DEFAULT_CORE_SETTINGS:Lzendesk/core/CoreSettings;

    .line 2
    new-instance v0, Lzendesk/core/BlipsSettings;

    new-instance v1, Lzendesk/core/BlipsPermissions;

    invoke-direct {v1}, Lzendesk/core/BlipsPermissions;-><init>()V

    invoke-direct {v0, v1}, Lzendesk/core/BlipsSettings;-><init>(Lzendesk/core/BlipsPermissions;)V

    sput-object v0, Lzendesk/core/ZendeskCoreSettingsStorage;->DEFAULT_BLIPS_SETTINGS:Lzendesk/core/BlipsSettings;

    return-void
.end method

.method constructor <init>(Lzendesk/core/SettingsStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskCoreSettingsStorage;->settingsStorage:Lzendesk/core/SettingsStorage;

    return-void
.end method


# virtual methods
.method public getBlipsSettings()Lzendesk/core/BlipsSettings;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskCoreSettingsStorage;->settingsStorage:Lzendesk/core/SettingsStorage;

    const-class v1, Lzendesk/core/BlipsSettings;

    const-string v2, "blips"

    invoke-interface {v0, v2, v1}, Lzendesk/core/SettingsStorage;->getSettings(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/BlipsSettings;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskCoreSettingsStorage"

    const-string v2, "Unable to load blips settings, returning defaults."

    .line 2
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lzendesk/core/ZendeskCoreSettingsStorage;->DEFAULT_BLIPS_SETTINGS:Lzendesk/core/BlipsSettings;

    return-object v0
.end method

.method public getCoreSettings()Lzendesk/core/CoreSettings;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskCoreSettingsStorage;->settingsStorage:Lzendesk/core/SettingsStorage;

    const-class v1, Lzendesk/core/CoreSettings;

    const-string v2, "core"

    invoke-interface {v0, v2, v1}, Lzendesk/core/SettingsStorage;->getSettings(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/CoreSettings;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskCoreSettingsStorage"

    const-string v2, "Unable to load Core SDK Settings, returning default settings."

    .line 2
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lzendesk/core/ZendeskCoreSettingsStorage;->DEFAULT_CORE_SETTINGS:Lzendesk/core/CoreSettings;

    return-object v0
.end method
