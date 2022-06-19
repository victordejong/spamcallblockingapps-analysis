.class public Lcom/freshchat/consumer/sdk/activity/b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic bu:Lcom/freshchat/consumer/sdk/activity/b;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.KillCurrentUserSession"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->al()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.DismissFreshchatScreens"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->gs()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->bM()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/aa;->c(Landroid/content/Context;Z)V

    :cond_4
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b$1;->bu:Lcom/freshchat/consumer/sdk/activity/b;

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method
