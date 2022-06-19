.class Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/ZendeskSupportSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadSupportSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Lzendesk/core/SettingsPack<",
        "Lzendesk/support/SupportSettings;",
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

.field final synthetic this$0:Lzendesk/support/ZendeskSupportSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskSupportSettingsProvider;Lcom/zendesk/service/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->this$0:Lzendesk/support/ZendeskSupportSettingsProvider;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->callback:Lcom/zendesk/service/f;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->callback:Lcom/zendesk/service/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskSettingsProvider"

    const-string v1, "Returning default Support Settings."

    .line 2
    invoke-static {v0, v1, p1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lzendesk/support/SupportSdkSettings;

    .line 4
    invoke-static {}, Lzendesk/support/SupportSettings;->defaultSettings()Lzendesk/support/SupportSettings;

    move-result-object v0

    .line 5
    invoke-static {}, Lzendesk/support/HelpCenterSettings;->defaultSettings()Lzendesk/support/HelpCenterSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lzendesk/support/SupportSdkSettings;-><init>(Lzendesk/support/SupportSettings;Lzendesk/support/HelpCenterSettings;Lzendesk/core/AuthenticationType;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->callback:Lcom/zendesk/service/f;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/core/SettingsPack;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->onSuccess(Lzendesk/core/SettingsPack;)V

    return-void
.end method

.method public onSuccess(Lzendesk/core/SettingsPack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/SettingsPack<",
            "Lzendesk/support/SupportSettings;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;

    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->this$0:Lzendesk/support/ZendeskSupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;->callback:Lcom/zendesk/service/f;

    invoke-direct {v0, v1, v2, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;-><init>(Lzendesk/support/ZendeskSupportSettingsProvider;Lcom/zendesk/service/f;Lzendesk/core/SettingsPack;)V

    .line 3
    invoke-static {v1}, Lzendesk/support/ZendeskSupportSettingsProvider;->access$000(Lzendesk/support/ZendeskSupportSettingsProvider;)Lzendesk/core/SettingsProvider;

    move-result-object p1

    const-class v1, Lzendesk/support/HelpCenterSettings;

    const-string v2, "help_center"

    .line 4
    invoke-interface {p1, v2, v1, v0}, Lzendesk/core/SettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/f;)V

    return-void
.end method
