.class Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ZendeskSupportSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadHelpCenterSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Lzendesk/core/SettingsPack<",
        "Lzendesk/support/HelpCenterSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSettingsPack:Lzendesk/core/SettingsPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/SupportSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzendesk/support/ZendeskSupportSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskSupportSettingsProvider;Lcom/zendesk/service/f;Lzendesk/core/SettingsPack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/SupportSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->this$0:Lzendesk/support/ZendeskSupportSettingsProvider;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/f;

    .line 3
    iput-object p3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskSettingsProvider"

    const-string v1, "Returning default Help Center Settings."

    .line 2
    invoke-static {v0, v1, p1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lzendesk/support/HelpCenterSettings;->defaultSettings()Lzendesk/support/HelpCenterSettings;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    invoke-virtual {v0}, Lzendesk/core/SettingsPack;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/f;

    new-instance v2, Lzendesk/support/SupportSdkSettings;

    iget-object v3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    invoke-virtual {v3}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportSettings;

    invoke-direct {v2, v3, p1, v0}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/core/SettingsPack;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->onSuccess(Lzendesk/core/SettingsPack;)V

    return-void
.end method

.method public onSuccess(Lzendesk/core/SettingsPack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/HelpCenterSettings;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterSettings;

    .line 3
    invoke-virtual {p1}, Lzendesk/core/SettingsPack;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->this$0:Lzendesk/support/ZendeskSupportSettingsProvider;

    invoke-static {v1, v0}, Lzendesk/support/ZendeskSupportSettingsProvider;->access$100(Lzendesk/support/ZendeskSupportSettingsProvider;Lzendesk/support/HelpCenterSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskSettingsProvider"

    const-string v3, "Successfully retrieved Settings"

    .line 5
    invoke-static {v2, v3, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->callback:Lcom/zendesk/service/f;

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Lzendesk/support/SupportSdkSettings;

    iget-object v3, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;->supportSettingsPack:Lzendesk/core/SettingsPack;

    invoke-virtual {v3}, Lzendesk/core/SettingsPack;->getSettings()Lzendesk/core/Settings;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportSettings;

    invoke-direct {v2, v3, v0, p1}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    invoke-virtual {v1, v2}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
