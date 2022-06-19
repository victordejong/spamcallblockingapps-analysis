.class public Lcom/freshchat/consumer/sdk/service/c/s;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/u;",
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
.method public a(Lcom/freshchat/consumer/sdk/service/e/u;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->cc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-lez p1, :cond_2

    invoke-static {v4, v5, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->c(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->gP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-lez p1, :cond_5

    invoke-static {v4, v5, v1, v2}, Lcom/freshchat/consumer/sdk/j/n;->e(JJ)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v3

    :cond_5
    return v0
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/u;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/s;->b(Lcom/freshchat/consumer/sdk/service/e/u;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/u;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/s;->a(Lcom/freshchat/consumer/sdk/service/e/u;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    new-instance p1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/a;->cX()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->dw()Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->cd()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->gQ()V
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

    :cond_1
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object v0
.end method
