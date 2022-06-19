.class public Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    since = "4.3.0"
.end annotation


# static fields
.field public static final MAIN_ACTION:Ljava/lang/String; = "com.clevertap.PUSH_EVENT"

.field public static final TYPE_BUTTON_CLICK:Ljava/lang/String; = "com.clevertap.ACTION_BUTTON_CLICK"


# instance fields
.field private mActionButtonClickHandler:Le/h/a/c/s0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CTNotificationIntentService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private handleActionButtonClick(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "dl"

    :try_start_0
    const-string v1, "autoCancel"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "notificationId"

    const/4 v3, -0x1

    .line 2
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 5
    iget-object v6, p0, Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;->mActionButtonClickHandler:Le/h/a/c/s0/a;

    .line 6
    invoke-interface {v6, v5, p1, v2}, Le/h/a/c/s0/a;->b(Landroid/content/Context;Landroid/os/Bundle;I)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 7
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v6, v7, :cond_1

    return-void

    :cond_1
    if-eqz v4, :cond_2

    .line 8
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    invoke-static {v5, v6}, Le/h/a/c/j0;->m(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_3

    return-void

    :cond_3
    const/high16 v4, 0x34000000

    .line 11
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {v6, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v6, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-le v2, v3, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 16
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/IntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, v6}, Landroid/app/IntentService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Le/h/a/c/p;->f:Le/h/a/c/s0/c;

    .line 3
    invoke-static {v0}, Le/h/a/c/w0/h;->c(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 4
    check-cast v1, Le/h/a/c/s0/a;

    iput-object v1, p0, Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;->mActionButtonClickHandler:Le/h/a/c/s0/a;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Le/h/a/c/w0/h$b;->a:Le/h/a/c/w0/h;

    iput-object v1, p0, Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;->mActionButtonClickHandler:Le/h/a/c/s0/a;

    :goto_0
    const-string v1, "ct_type"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.clevertap.ACTION_BUTTON_CLICK"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-direct {p0, v0}, Lcom/clevertap/android/sdk/pushnotification/CTNotificationIntentService;->handleActionButtonClick(Landroid/os/Bundle;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    :goto_1
    return-void
.end method
