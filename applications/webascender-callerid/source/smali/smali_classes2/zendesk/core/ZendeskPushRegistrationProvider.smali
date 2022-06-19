.class Lzendesk/core/ZendeskPushRegistrationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/PushRegistrationProvider;
.implements Lzendesk/core/PushRegistrationProviderInternal;


# instance fields
.field private final blipsProvider:Lzendesk/core/BlipsCoreProvider;

.field private final identityManager:Lzendesk/core/IdentityManager;

.field private final pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

.field private final pushService:Lzendesk/core/PushRegistrationService;

.field private final settingsProvider:Lzendesk/core/SettingsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lzendesk/core/PushRegistrationService;Lzendesk/core/IdentityManager;Lzendesk/core/SettingsProvider;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushDeviceIdStorage;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushService:Lzendesk/core/PushRegistrationService;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->identityManager:Lzendesk/core/IdentityManager;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->settingsProvider:Lzendesk/core/SettingsProvider;

    .line 5
    iput-object p4, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->blipsProvider:Lzendesk/core/BlipsCoreProvider;

    .line 6
    iput-object p5, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

    return-void
.end method

.method static synthetic access$500(Lzendesk/core/ZendeskPushRegistrationProvider;)Lzendesk/core/PushDeviceIdStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/core/ZendeskPushRegistrationProvider;)Lzendesk/core/BlipsCoreProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->blipsProvider:Lzendesk/core/BlipsCoreProvider;

    return-object p0
.end method

.method private onSuccessfulRegistration(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v0, p1}, Lzendesk/core/PushDeviceIdStorage;->storeRegisteredDeviceId(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {p1}, Lzendesk/core/PushDeviceIdStorage;->removePushRegistrationRequest()V

    .line 3
    iget-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->blipsProvider:Lzendesk/core/BlipsCoreProvider;

    invoke-interface {p1}, Lzendesk/core/BlipsCoreProvider;->corePushEnabled()V

    return-void
.end method


# virtual methods
.method public sendPushRegistrationRequest(Lzendesk/core/PushRegistrationRequest;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushService:Lzendesk/core/PushRegistrationService;

    new-instance v1, Lzendesk/core/PushRegistrationRequestWrapper;

    invoke-direct {v1, p1}, Lzendesk/core/PushRegistrationRequestWrapper;-><init>(Lzendesk/core/PushRegistrationRequest;)V

    invoke-interface {v0, v1}, Lzendesk/core/PushRegistrationService;->registerDevice(Lzendesk/core/PushRegistrationRequestWrapper;)Lretrofit2/Call;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/PushRegistrationResponseWrapper;

    invoke-virtual {v0}, Lzendesk/core/PushRegistrationResponseWrapper;->getRegistrationResponse()Lzendesk/core/PushRegistrationResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/PushRegistrationResponseWrapper;

    invoke-virtual {p1}, Lzendesk/core/PushRegistrationResponseWrapper;->getRegistrationResponse()Lzendesk/core/PushRegistrationResponse;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/core/PushRegistrationResponse;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskPushRegistrationProvider;->onSuccessfulRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PushRegistrationProvider"

    const-string v2, "Push registration request failed."

    .line 6
    invoke-static {v1, v2, p1, v0}, Lg/k/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public unregisterDevice(Lcom/zendesk/service/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v0}, Lzendesk/core/PushDeviceIdStorage;->getRegisteredDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1}, Lzendesk/core/IdentityManager;->getUserId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lzendesk/core/ZendeskPushRegistrationProvider;->pushService:Lzendesk/core/PushRegistrationService;

    invoke-interface {v2, v0}, Lzendesk/core/PushRegistrationService;->unregisterDevice(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lcom/zendesk/service/d;

    new-instance v3, Lzendesk/core/ZendeskPushRegistrationProvider$2;

    invoke-direct {v3, p0, p1, v1, p1}, Lzendesk/core/ZendeskPushRegistrationProvider$2;-><init>(Lzendesk/core/ZendeskPushRegistrationProvider;Lcom/zendesk/service/f;Ljava/lang/Long;Lcom/zendesk/service/f;)V

    invoke-direct {v2, v3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method
