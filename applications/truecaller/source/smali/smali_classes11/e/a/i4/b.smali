.class public final synthetic Le/a/i4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/notifications/NotificationHandlerService;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/notifications/NotificationHandlerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/b;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/a/i4/b;->a:Lcom/truecaller/notifications/NotificationHandlerService;

    .line 1
    sget-object v1, Lcom/truecaller/notifications/NotificationHandlerService;->g:Ljava/util/Collection;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/service/MissedCallsNotificationService;->j:I

    const-string v2, "context"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    const-class v2, Lcom/truecaller/service/MissedCallsNotificationService;

    .line 6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const v4, 0x7f0a0bc9

    .line 7
    invoke-static {v1, v2, v4, v3}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getCurrentInterruptionFilter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/truecaller/notifications/NotificationHandlerService;->onInterruptionFilterChanged(I)V

    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 11
    invoke-virtual {v0, v4}, Lcom/truecaller/notifications/NotificationHandlerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not list active notifications"

    .line 12
    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
