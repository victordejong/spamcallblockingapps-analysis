.class Lzendesk/core/ZendeskPushInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

.field private final pushProvider:Lzendesk/core/PushRegistrationProviderInternal;


# direct methods
.method constructor <init>(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v0}, Lzendesk/core/PushDeviceIdStorage;->getPushRegistrationRequest()Lzendesk/core/PushRegistrationRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    invoke-interface {v1, v0}, Lzendesk/core/PushRegistrationProviderInternal;->sendPushRegistrationRequest(Lzendesk/core/PushRegistrationRequest;)Ljava/lang/String;

    :cond_0
    return-object p1
.end method
