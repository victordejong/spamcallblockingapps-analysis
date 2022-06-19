.class public Lcom/freshchat/consumer/sdk/service/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)Lcom/freshchat/consumer/sdk/service/a/b;
    .locals 2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/h;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/h;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown type "

    invoke-static {p1, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/g;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/g;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/i;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/i;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/k;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/k;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/j;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/j;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/n;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/n;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/f;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/f;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0

    :cond_7
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/e;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/service/a/e;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/y;)V
    .locals 4

    :try_start_0
    const-string v0, "FRESHCHAT"

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send FCM device token for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/service/a/a;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/y;->dP()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Adding FCM device token to backlog for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 2

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0xb

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->b(Lcom/freshchat/consumer/sdk/service/a/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->d(Lcom/freshchat/consumer/sdk/service/a/a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->f(Lcom/freshchat/consumer/sdk/service/a/a;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->a(Lcom/freshchat/consumer/sdk/service/a/a;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public static bd(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/a/c;->f(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/service/a/a;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/freshchat/consumer/sdk/service/a/a;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->l(I)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->S(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Landroid/content/Context;I)Lcom/freshchat/consumer/sdk/service/a/a;
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->l(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/a;->C(I)Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/c/a;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/c/a;->cp()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/a/c;->bd(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/service/a/c;->f(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method
