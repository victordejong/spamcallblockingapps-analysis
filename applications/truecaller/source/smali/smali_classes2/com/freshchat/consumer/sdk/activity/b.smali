.class public abstract Lcom/freshchat/consumer/sdk/activity/b;
.super Lcom/freshchat/consumer/sdk/activity/a;
.source "SourceFile"


# instance fields
.field private bs:Ln3/x/a/a;

.field private bt:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/b$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/b$1;-><init>(Lcom/freshchat/consumer/sdk/activity/b;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b;->bt:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public D()Ln3/x/a/a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b;->bs:Ln3/x/a/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b;->bs:Ln3/x/a/a;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/b;->bs:Ln3/x/a/a;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract a()[Ljava/lang/String;
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ah;->bU(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Ln3/b/a/h;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/a;->onBackPressed()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Ln3/r/a/l;->onPause()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->D()Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/b;->bt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/b;->bt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/a;->onResume()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->bL(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.freshchat.consumer.sdk.actions.KillCurrentUserSession"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.freshchat.consumer.sdk.actions.DismissFreshchatScreens"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->D()Ln3/x/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/b;->bt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/b;->bt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
