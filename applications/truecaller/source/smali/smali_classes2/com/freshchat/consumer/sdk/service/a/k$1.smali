.class public Lcom/freshchat/consumer/sdk/service/a/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field public final synthetic fC:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

.field public final synthetic fD:Lcom/freshchat/consumer/sdk/service/a/k;

.field public final synthetic fu:Lcom/freshchat/consumer/sdk/service/a/a;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/service/a/k;Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fD:Lcom/freshchat/consumer/sdk/service/a/k;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fC:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fu:Lcom/freshchat/consumer/sdk/service/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/service/e/k;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/service/a/k;->TAG:Ljava/lang/String;

    const-string v0, "Marketing message status update from backlog successful "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fC:Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fu:Lcom/freshchat/consumer/sdk/service/a/a;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/a/k$1;->fD:Lcom/freshchat/consumer/sdk/service/a/k;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/aa;->l(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
