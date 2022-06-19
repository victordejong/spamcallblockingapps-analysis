.class Lzendesk/core/ZendeskIdentityStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/IdentityStorage;


# instance fields
.field private final identityStorage:Lzendesk/core/BaseStorage;


# direct methods
.method constructor <init>(Lzendesk/core/BaseStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    invoke-interface {v0}, Lzendesk/core/BaseStorage;->clear()V

    return-void
.end method

.method public getBlipsUuid()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "blips_buid"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Lzendesk/core/Identity;
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "zendesk-identity-type"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v0}, Lzendesk/core/AuthenticationType;->getAuthType(Ljava/lang/String;)Lzendesk/core/AuthenticationType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Lzendesk/core/ZendeskIdentityStorage$1;->$SwitchMap$zendesk$core$AuthenticationType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "zendesk-identity"

    const/4 v3, 0x0

    const-string v4, "ZendeskIdentityStorage"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Loading Anonymous identity"

    .line 5
    invoke-static {v4, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-class v1, Lzendesk/core/AnonymousIdentity;

    invoke-interface {v0, v2, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/Identity;

    goto :goto_1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Loading Jwt identity"

    .line 7
    invoke-static {v4, v1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-class v1, Lzendesk/core/JwtIdentity;

    invoke-interface {v0, v2, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/Identity;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getStoredAccessToken()Lzendesk/core/AccessToken;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-class v1, Lzendesk/core/AccessToken;

    const-string v2, "stored_token"

    invoke-interface {v0, v2, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/AccessToken;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-class v1, Ljava/lang/Long;

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskIdentityStorage"

    const-string v2, "Fetching UUID from preferences store"

    .line 1
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lg/k/d/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public storeAccessToken(Lzendesk/core/AccessToken;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "stored_token"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public storeIdentity(Lzendesk/core/Identity;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ZendeskIdentityStorage"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "identity is null, will not store the identity"

    .line 1
    invoke-static {v1, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    instance-of v3, p1, Lzendesk/core/AnonymousIdentity;

    if-eqz v3, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Storing anonymous identity"

    .line 3
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    invoke-virtual {v0}, Lzendesk/core/AuthenticationType;->getAuthenticationType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    instance-of v3, p1, Lzendesk/core/JwtIdentity;

    if-eqz v3, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Storing jwt identity"

    .line 6
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object v0, Lzendesk/core/AuthenticationType;->JWT:Lzendesk/core/AuthenticationType;

    invoke-virtual {v0}, Lzendesk/core/AuthenticationType;->getAuthenticationType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Unknown authentication type, identity will not be stored"

    .line 8
    invoke-static {v1, v3, v0}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 9
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "zendesk-identity"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v0, "zendesk-identity-type"

    invoke-interface {p1, v0, v2}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public storeSdkGuid(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskIdentityStorage"

    const-string v2, "Storing new UUID in preference store"

    .line 1
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "uuid"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeUserId(Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateBlipsUuid()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskIdentityStorage"

    const-string v3, "Generate new Blips BUID"

    .line 2
    invoke-static {v2, v3, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lzendesk/core/ZendeskIdentityStorage;->identityStorage:Lzendesk/core/BaseStorage;

    const-string v2, "blips_buid"

    invoke-interface {v1, v2, v0}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public updateSdkGuid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lzendesk/core/ZendeskIdentityStorage;->storeSdkGuid(Ljava/lang/String;)V

    return-object v0
.end method
