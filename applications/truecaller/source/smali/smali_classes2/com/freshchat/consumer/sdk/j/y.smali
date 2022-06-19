.class public Lcom/freshchat/consumer/sdk/j/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/l;)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isResponseExpectationEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->w(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isTeamMemberInfoVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->d(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isCameraCaptureEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->e(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->dI()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->f(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isGallerySelectionEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->g(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/l;->isUserEventsTrackingEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->setUserEventsTrackingEnabled(Z)V

    return-void
.end method

.method public static a(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/InvalidDomainException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".freshchat.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dr:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{{domain}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/y;->bt(Ljava/lang/String;)V

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", got app key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dt:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", got app id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->ds:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->dq:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static aG(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatConfig;
    .locals 3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isResponseExpectationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setResponseExpectationEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isTeamMemberInfoVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setTeamMemberInfoVisible(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isCameraCaptureEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setCameraCaptureEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isGallerySelectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setGallerySelectionEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatConfig;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->isUserEventsTrackingEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/FreshchatConfig;->setUserEventsTrackingEnabled(Z)V

    return-object v0
.end method

.method public static bt(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/InvalidDomainException;
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->aJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a;->qx:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/b/c;->qw:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/freshchat/consumer/sdk/exception/InvalidDomainException;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/exception/InvalidDomainException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static cp(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->iM()I

    move-result p0

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->KBASE_SERVICE:Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;->asInt()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
