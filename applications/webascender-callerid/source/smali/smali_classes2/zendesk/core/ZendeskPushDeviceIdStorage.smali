.class Lzendesk/core/ZendeskPushDeviceIdStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/PushDeviceIdStorage;


# instance fields
.field private final deviceIdStorage:Lzendesk/core/BaseStorage;


# direct methods
.method constructor <init>(Lzendesk/core/BaseStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    return-void
.end method


# virtual methods
.method public getPushRegistrationRequest()Lzendesk/core/PushRegistrationRequest;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    const-class v1, Lzendesk/core/PushRegistrationRequest;

    const-string v2, "pushRegistrationRequest"

    invoke-interface {v0, v2, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/PushRegistrationRequest;

    return-object v0
.end method

.method public getRegisteredDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    const-string v1, "pushDeviceIdentifier"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removePushRegistrationRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    const-string v1, "pushRegistrationRequest"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public removeRegisteredDeviceId()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    const-string v1, "pushDeviceIdentifier"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public storeRegisteredDeviceId(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskPushDeviceIdStorage;->deviceIdStorage:Lzendesk/core/BaseStorage;

    const-string v1, "pushDeviceIdentifier"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
