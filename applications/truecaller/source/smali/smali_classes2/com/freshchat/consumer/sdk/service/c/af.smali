.class public Lcom/freshchat/consumer/sdk/service/c/af;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;",
        "Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/af;->a(Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/a;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/af;->b(Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/service/c/af;->b(Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;)V

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
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;->getFaqId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Lcom/freshchat/consumer/sdk/e/a;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/af;->b(Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/af;->a(Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/FAQFetchRequest;)Z
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

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/w;->az(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/y;->cp(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
