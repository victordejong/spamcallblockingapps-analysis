.class Lzendesk/core/ZendeskSettingsInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final provider:Lzendesk/core/SdkSettingsProviderInternal;

.field private settingsStorage:Lzendesk/core/SettingsStorage;


# direct methods
.method constructor <init>(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskSettingsInterceptor;->provider:Lzendesk/core/SdkSettingsProviderInternal;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskSettingsInterceptor;->settingsStorage:Lzendesk/core/SettingsStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsInterceptor;->settingsStorage:Lzendesk/core/SettingsStorage;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Lzendesk/core/SettingsStorage;->areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SettingsInterceptor"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "Requesting SDK settings."

    .line 2
    invoke-static {v2, v3, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsInterceptor;->provider:Lzendesk/core/SdkSettingsProviderInternal;

    invoke-interface {v0}, Lzendesk/core/SdkSettingsProviderInternal;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Retrieved settings are null. Returning 404."

    .line 4
    invoke-static {v2, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lm/g0$a;

    invoke-direct {v0}, Lm/g0$a;-><init>()V

    sget-object v1, Lm/d0;->HTTP_2:Lm/d0;

    .line 6
    invoke-virtual {v0, v1}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    .line 7
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 8
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object p1

    invoke-virtual {p1}, Lm/e0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    const/16 p1, 0x194

    .line 9
    invoke-virtual {v0, p1}, Lm/g0$a;->g(I)Lm/g0$a;

    .line 10
    invoke-virtual {v0}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Proceeding with chain."

    .line 11
    invoke-static {v2, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
