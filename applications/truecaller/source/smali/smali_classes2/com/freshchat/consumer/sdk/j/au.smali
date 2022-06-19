.class public Lcom/freshchat/consumer/sdk/j/au;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getCsatConfig()Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->doesCsatAutoExpire()Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getCsatConfig()Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/config/CsatConfig;->getCsatExpiryInterval()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/Csat;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Csat;->getInitiatedTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;J)Z

    move-result p0

    return p0
.end method
