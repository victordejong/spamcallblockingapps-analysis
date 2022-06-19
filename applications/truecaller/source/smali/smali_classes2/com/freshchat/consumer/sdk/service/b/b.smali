.class public Lcom/freshchat/consumer/sdk/service/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/c/j;
    .locals 1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/service/b/a;->a(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/freshchat/consumer/sdk/service/c/j;->a(Lcom/freshchat/consumer/sdk/b/e;)V

    invoke-interface {v0, p1}, Lcom/freshchat/consumer/sdk/service/c/j;->setContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/b/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/c/j;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "Now Processing "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FRESHCHAT_SERVICE"

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p2}, Lcom/freshchat/consumer/sdk/service/c/j;->b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "ERROR"

    const-string v5, "Exception occured"

    invoke-static {v3, v5, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string p1, "Time taken to process "

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, v0}, Lcom/freshchat/consumer/sdk/service/a;->a(Lcom/freshchat/consumer/sdk/service/e/k;)V

    :cond_2
    return-void
.end method
