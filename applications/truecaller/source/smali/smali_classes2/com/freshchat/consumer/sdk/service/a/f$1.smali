.class public Lcom/freshchat/consumer/sdk/service/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field public final synthetic fw:Ljava/lang/String;

.field public final synthetic fx:Lcom/freshchat/consumer/sdk/service/a/f;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/service/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fx:Lcom/freshchat/consumer/sdk/service/a/f;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 3

    const-string v0, "******************"

    const-string v1, "XXXXXXXXXXXXXXXXXX"

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/service/e/k;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ai;->ck()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/a/f;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload message success on backlog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Removing entry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fx:Lcom/freshchat/consumer/sdk/service/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fw:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ai;->ck()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/freshchat/consumer/sdk/service/a/f;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not upload message on backlog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/service/a/f$1;->fw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Keeping the entry"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
