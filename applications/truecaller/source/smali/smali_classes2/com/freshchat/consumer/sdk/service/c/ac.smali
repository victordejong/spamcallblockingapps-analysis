.class public Lcom/freshchat/consumer/sdk/service/c/ac;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/ac;",
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


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/ac;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ac;->gM()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ac;->bj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/ac;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 7

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/by;->gN()Lcom/freshchat/consumer/sdk/j/by;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ac;->gM()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ac;->a(Lcom/freshchat/consumer/sdk/service/e/ac;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v5}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v5, v4}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ac;->bj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/freshchat/consumer/sdk/e/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UploadInboundEventsResponse;->isSuccess()Z

    move-result p1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v2, p1, 0x1

    move v3, v2

    move v2, p1

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/by;->bQ(Landroid/content/Context;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move v3, v2

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_2
    :goto_3
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_4
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->a(Landroid/content/Context;Ljava/util/Set;Z)V

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/by;->bQ(Landroid/content/Context;)V

    :cond_3
    throw p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ac;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ac;->b(Lcom/freshchat/consumer/sdk/service/e/ac;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
