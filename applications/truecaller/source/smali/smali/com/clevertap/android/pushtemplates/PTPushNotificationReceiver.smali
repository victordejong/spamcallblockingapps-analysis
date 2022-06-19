.class public Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver;
.super Lcom/clevertap/android/sdk/pushnotification/CTPushNotificationReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/clevertap/android/sdk/pushnotification/CTPushNotificationReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/clevertap/android/sdk/pushnotification/CTPushNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "wzrk_acct_id"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Le/h/a/c/p;->e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 6
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    const-string v1, "PTPushNotificationReceiver#cleanUpFiles"

    .line 8
    new-instance v2, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver$a;-><init>(Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 9
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 10
    new-instance p2, Le/h/a/c/y0/j;

    invoke-direct {p2, v0, v1, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
