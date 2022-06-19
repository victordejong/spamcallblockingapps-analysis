.class public Lcom/freshchat/consumer/sdk/service/c/ak;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/ap;",
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
.method public a(Lcom/freshchat/consumer/sdk/service/e/ap;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->ay(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/ap;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ak;->a(Lcom/freshchat/consumer/sdk/service/e/ap;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;->setSuccess(Z)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;->setSuccess(Z)V

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ap;->dn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ap;->fo()Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    move-result-object v4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ap;->getReferenceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, v4, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/service/e/h;->setSuccess(Z)V

    return-object v0
.end method

.method public bridge synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ap;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ak;->b(Lcom/freshchat/consumer/sdk/service/e/ap;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
