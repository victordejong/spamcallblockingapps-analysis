.class public Lcom/freshchat/consumer/sdk/service/e/al;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/ak;",
        "Lcom/freshchat/consumer/sdk/service/e/ai;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/ai;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/e/al;->b(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/ai;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/a;->e(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/ai;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "SEARCH_TERM"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/ak;)Lcom/freshchat/consumer/sdk/service/e/ai;
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/ai;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/ai;-><init>()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ak;->iW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/al;->b(Lcom/freshchat/consumer/sdk/service/e/ak;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/service/e/al;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/ai;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ak;->iU()I

    move-result v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/ak;->getTags()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, p1}, Lcom/freshchat/consumer/sdk/e/a;->b(ILjava/lang/String;Ljava/util/List;)Lcom/freshchat/consumer/sdk/service/e/ai;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/freshchat/consumer/sdk/service/e/al;->a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/ai;)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/ak;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/e/al;->a(Lcom/freshchat/consumer/sdk/service/e/ak;)Lcom/freshchat/consumer/sdk/service/e/ai;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/ak;)Z
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
