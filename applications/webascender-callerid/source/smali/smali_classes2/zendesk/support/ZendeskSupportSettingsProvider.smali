.class Lzendesk/support/ZendeskSupportSettingsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/SupportSettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/ZendeskSupportSettingsProvider$LoadHelpCenterSettings;,
        Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;
    }
.end annotation


# instance fields
.field private final deviceLocale:Ljava/util/Locale;

.field private final localeConverter:Lzendesk/core/ZendeskLocaleConverter;

.field private final sdkSettingsProvider:Lzendesk/core/SettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 4
    iput-object p3, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->deviceLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/ZendeskSupportSettingsProvider;)Lzendesk/core/SettingsProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/ZendeskSupportSettingsProvider;Lzendesk/support/HelpCenterSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider;->logIfLocaleNotAvailable(Lzendesk/support/HelpCenterSettings;)V

    return-void
.end method

.method private logIfLocaleNotAvailable(Lzendesk/support/HelpCenterSettings;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    iget-object v2, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->deviceLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 5
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->isEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "ZendeskSettingsProvider"

    const-string v1, "No support for %s, Help Center is %s in your application settings"

    .line 6
    invoke-static {p1, v1, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSettings(Lcom/zendesk/service/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    const-class v1, Lzendesk/support/SupportSettings;

    new-instance v2, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;

    invoke-direct {v2, p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;-><init>(Lzendesk/support/ZendeskSupportSettingsProvider;Lcom/zendesk/service/f;)V

    const-string p1, "support"

    invoke-interface {v0, p1, v1, v2}, Lzendesk/core/SettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/f;)V

    return-void
.end method
