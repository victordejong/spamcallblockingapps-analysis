.class public Lcom/freshchat/consumer/sdk/j/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.freshchat.consumer.sdk.j.ay"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    const-string v0, "XIAOMI_AUTOSTART_USER_NOTIFIED"

    invoke-virtual {p0, v0, p1}, Lcom/freshchat/consumer/sdk/j/i;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const-string v1, "XIAOMI_AUTOSTART_USER_NOTIFIED"

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/i;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ay;->bf(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    move v2, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->isUserMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static be(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ay;->fd()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ay;->TAG:Ljava/lang/String;

    const-string v1, "Failed to launch AutoStart Screen - "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static bf(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ay;->fd()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ay;->TAG:Ljava/lang/String;

    const-string v1, "Failed to launch AutoStart Screen - "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic bg(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ay;->be(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$bool;->freshchat_xiaomi_autostart_prompt_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/p;->ew()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ay;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/i;->m(Landroid/content/Context;)Ln3/b/a/g$a;

    move-result-object v0

    .line 1
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 2
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_positive:I

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ay$1;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/j/ay$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_xiaomi_auto_start_prompt_negative:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    invoke-virtual {v0}, Ln3/b/a/g$a;->a()Ln3/b/a/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/ay;->a(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method private static fd()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycenter"

    const-string v3, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method
