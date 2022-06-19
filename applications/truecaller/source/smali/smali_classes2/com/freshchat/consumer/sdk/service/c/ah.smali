.class public Lcom/freshchat/consumer/sdk/service/c/ah;
.super Lcom/freshchat/consumer/sdk/service/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/a<",
        "Lcom/freshchat/consumer/sdk/service/e/am;",
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

.method private a(Lcom/freshchat/consumer/sdk/service/e/an;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private b(Lcom/freshchat/consumer/sdk/service/e/an;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ah;->a(Lcom/freshchat/consumer/sdk/service/e/an;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/am;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/an;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/e/an;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ah;->b(Lcom/freshchat/consumer/sdk/service/e/am;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/service/e/ag;->setStatus(Lcom/freshchat/consumer/sdk/service/Status;)V

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/service/c/ah;->b(Lcom/freshchat/consumer/sdk/service/e/an;)V

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
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/am;->getFaqId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/am;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/am;->iX()Lcom/freshchat/consumer/sdk/service/e/am$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/service/e/am$a;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/am;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/am;->getLastUpdatedAt()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/freshchat/consumer/sdk/e/a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/freshchat/consumer/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/freshchat/consumer/sdk/e/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/an;

    move-result-object v3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/service/e/an;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v4

    sget-object v5, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v4, v5, :cond_2

    new-instance v4, Lcom/freshchat/consumer/sdk/b/m;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/freshchat/consumer/sdk/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1, v0, v2, p1}, Lcom/freshchat/consumer/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v3}, Lcom/freshchat/consumer/sdk/service/c/ah;->b(Lcom/freshchat/consumer/sdk/service/e/an;)V

    return-object v3
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/am;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ah;->a(Lcom/freshchat/consumer/sdk/service/e/am;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/e/am;)Z
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
