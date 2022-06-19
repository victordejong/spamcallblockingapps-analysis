.class public Lcom/freshchat/consumer/sdk/service/c/ad;
.super Lcom/freshchat/consumer/sdk/service/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/service/c/b<",
        "Lcom/freshchat/consumer/sdk/service/e/af;",
        "Lcom/freshchat/consumer/sdk/service/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/service/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/af;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 6

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/i;->eO()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1

    :cond_0
    const-string v0, "FRESHCHAT"

    const-string v2, "Prefs migration starting now"

    invoke-static {v0, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/c/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/freshchat/consumer/sdk/j/i;->bo(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefs migration ended in "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/h;

    invoke-direct {p1, v1}, Lcom/freshchat/consumer/sdk/service/e/h;-><init>(Z)V

    return-object p1
.end method

.method public synthetic b(Lcom/freshchat/consumer/sdk/service/e/j;)Lcom/freshchat/consumer/sdk/service/e/k;
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/af;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/service/c/ad;->a(Lcom/freshchat/consumer/sdk/service/e/af;)Lcom/freshchat/consumer/sdk/service/e/k;

    move-result-object p1

    return-object p1
.end method
