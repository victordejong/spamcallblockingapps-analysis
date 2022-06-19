.class public Lcom/freshchat/consumer/sdk/service/c/g;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/e;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getUserAuthConfig()Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/UserAuthConfig;->isJwtAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->aY(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getAccountConfig()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->getFcFaqApiVersion()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object p2

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getAccountConfig()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->getFcFaqApiVersion()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object v1

    if-eq p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p2

    sget-object v1, Lcom/freshchat/consumer/sdk/service/c/ai;->rg:[I

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getAccountConfig()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/config/AccountConfig;->getFcFaqApiVersion()Lcom/freshchat/consumer/sdk/beans/config/AccountConfig$FAQAPIVersion;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/freshchat/consumer/sdk/c/d;

    invoke-direct {p3, p1}, Lcom/freshchat/consumer/sdk/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/c/d;->iR()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/b/e;->iP()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/b/e;->iL()V

    sget-object p3, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {p1, p3}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/f$a;)V

    :goto_1
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/b/e;->iO()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->co(Landroid/content/Context;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/e;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bz()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/a;->getRefreshIntervals()Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RefreshIntervals;->getRemoteConfigFetchInterval()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-wide/32 v8, 0x5265c00

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    sub-long/2addr v2, v4

    cmp-long p1, v2, v6

    if-lez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/e;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/g;->a(Lcom/freshchat/consumer/sdk/service/e/e;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/e/a;->gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/freshchat/consumer/sdk/j/ap;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/freshchat/consumer/sdk/service/c/g;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p1, v2}, Lcom/freshchat/consumer/sdk/service/c/g;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)V

    const/4 p1, 0x1

    move v0, p1

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/a;->cm(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bA()V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/e;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/g;->b(Lcom/freshchat/consumer/sdk/service/e/e;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
