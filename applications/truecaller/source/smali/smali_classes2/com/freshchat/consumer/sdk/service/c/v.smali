.class public Lcom/freshchat/consumer/sdk/service/c/v;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/y;",
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

.method private dQ()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/service/a/c;->m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/y;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->aA(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->b(Lcom/freshchat/consumer/sdk/service/e/y;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/y;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 7

    const-string v0, "FRESHCHAT"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/v;->a(Lcom/freshchat/consumer/sdk/service/e/y;)Z

    move-result v3
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V
    :try_end_1
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/y;)V

    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending GCM device token for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/e;->bP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/freshchat/consumer/sdk/e/a;->ad(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sent GCM device token successfully for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/v;->dQ()V
    :try_end_3
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_0
    move v2, v3

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/y;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move v1, v2

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move v3, v2

    :goto_4
    :try_start_5
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v2, v3

    :cond_4
    :goto_5
    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v2}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :goto_6
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/service/a/c;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/y;)V

    :cond_5
    throw v0
.end method
