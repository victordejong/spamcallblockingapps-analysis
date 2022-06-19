.class public Lcom/freshchat/consumer/sdk/service/c/aj;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;",
        "Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aj;->a(Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aj;->b(Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/service/c/aj;->b(Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;->getPlaceholderReferenceId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->z(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aj;->b(Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/aj;->a(Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/BotFAQFetchRequest;)Z
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
