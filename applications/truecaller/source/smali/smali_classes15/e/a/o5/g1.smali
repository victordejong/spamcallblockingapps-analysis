.class public Le/a/o5/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f10001d

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {p0}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    const p1, 0x7f120425

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Le/a/o5/g1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    .line 1
    invoke-static {}, Le/a/e/a2;->i()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xc

    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 3
    sget v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotificationsService;->a:I

    .line 4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v9, "EXTRA_TYPE"

    .line 5
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "EXTRA_TITLE"

    .line 6
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA_TEXT"

    .line 7
    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA_INTENT"

    .line 8
    invoke-virtual {v5, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "EXTRA_ANALYTICS_SUBTYPE"

    .line 9
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotificationsService;

    const v2, 0x7f0a0c62

    const v6, 0x7f0a0e35

    move-object v0, p0

    move-wide v3, v7

    invoke-static/range {v0 .. v6}, Le/a/n/g0;->s0(Landroid/content/Context;Ljava/lang/Class;IJLandroid/os/Bundle;I)V

    return-void

    :cond_0
    const-string v5, "AppUserInteraction.Context"

    const-string v7, "notification"

    .line 11
    invoke-virtual {p3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "AppUserInteraction.Action"

    const-string v8, "openApp"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    new-instance v5, Ln3/k/a/c0;

    invoke-direct {v5, p0}, Ln3/k/a/c0;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v5, p3}, Ln3/k/a/c0;->a(Landroid/content/Intent;)Ln3/k/a/c0;

    const/4 v3, 0x0

    const/high16 v7, 0xc000000

    .line 14
    invoke-virtual {v5, v3, v7}, Ln3/k/a/c0;->d(II)Landroid/app/PendingIntent;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Le/a/w1;

    invoke-interface {v5}, Le/a/w1;->s()Le/a/j2;

    move-result-object v5

    invoke-interface {v5}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v5

    .line 16
    invoke-interface {v5}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v9, Ln3/k/a/q;

    invoke-direct {v9, p0, v8}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f0816fb

    .line 18
    iget-object v10, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v8, v10, Landroid/app/Notification;->icon:I

    const v8, 0x7f06068b

    .line 19
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {p0, v8}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v8

    .line 21
    iput v8, v9, Ln3/k/a/q;->D:I

    const v8, 0x7f12001b

    .line 22
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 23
    invoke-virtual {v9, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 24
    invoke-virtual {v9, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    if-eqz p4, :cond_1

    .line 25
    sget v1, Lcom/truecaller/service/PushNotificationLoggingService;->a:I

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/service/PushNotificationLoggingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.truecaller.ACTION_NOTIFICATION_OPENED"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pendingIntent"

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v2, 0x7f0a0e55

    .line 29
    invoke-static {p0, v2, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 30
    :cond_1
    iput-object v3, v9, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    if-eqz p4, :cond_2

    .line 31
    sget v1, Lcom/truecaller/service/PushNotificationLoggingService;->a:I

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/service/PushNotificationLoggingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.truecaller.ACTION_NOTIFICATION_DISMISSED"

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f0a0e54

    .line 34
    invoke-static {p0, v2, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    .line 36
    invoke-virtual {v9, v0, v6}, Ln3/k/a/q;->p(IZ)V

    .line 37
    invoke-virtual {v9}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x1bc

    const-string v2, "OsNotificationUtils"

    .line 38
    invoke-interface {v5, v2, v1}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Subtype"

    .line 40
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1bc

    const-string v3, "OsNotificationUtils"

    const-string v4, "notificationBackend"

    move-object p0, v5

    move-object p1, v3

    move p2, v2

    move-object p3, v0

    move-object p4, v4

    move-object/from16 p5, v1

    .line 41
    invoke-interface/range {p0 .. p5}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 11

    .line 1
    invoke-static {}, Le/a/e/a2;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 3
    sget v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotificationsService;->a:I

    const-string v0, "EXTRA_TYPE"

    .line 4
    invoke-static {v0, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v9

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->a()Le/m/e/t;

    move-result-object p1

    invoke-virtual {p1}, Le/m/e/q;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_NOTIFICATION"

    invoke-virtual {v9, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class v5, Lcom/truecaller/notifications/internal/InternalTruecallerNotificationsService;

    const v6, 0x7f0a0c62

    const v10, 0x7f0a0e36

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Le/a/n/g0;->s0(Landroid/content/Context;Ljava/lang/Class;IJLandroid/os/Bundle;I)V

    return-void

    :cond_0
    const v0, 0x7f120425

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120423

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "v"

    .line 8
    invoke-virtual {p1, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 9
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Le/a/b0/g/a;

    invoke-virtual {v4}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v4

    invoke-interface {v4}, Le/a/b0/c;->v()Le/a/c3/a;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Le/a/c3/a;->b()Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-interface {v4}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/truecaller/buildinfo/BuildName;->SAMSUNG:Lcom/truecaller/buildinfo/BuildName;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    invoke-interface {v4}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/truecaller/buildinfo/BuildName;->AMAZON:Lcom/truecaller/buildinfo/BuildName;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    const v4, 0x7f0a0e4d

    if-eqz v1, :cond_3

    .line 14
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-static {p0, v1, v4}, Le/a/o5/g1;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {p0}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "AppUserInteraction.Context"

    const-string v5, "notification"

    .line 18
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v5, "AppUserInteraction.Action"

    const-string v6, "openApp"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    new-instance v1, Ln3/k/a/c0;

    invoke-direct {v1, p0}, Ln3/k/a/c0;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v1, p1}, Ln3/k/a/c0;->a(Landroid/content/Intent;)Ln3/k/a/c0;

    const/high16 p1, 0xc000000

    .line 21
    invoke-virtual {v1, v4, p1}, Ln3/k/a/c0;->d(II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v4

    .line 24
    invoke-interface {v4}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v5, Ln3/k/a/q;

    invoke-direct {v5, p0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0816fb

    .line 26
    iget-object v6, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v6, Landroid/app/Notification;->icon:I

    const v1, 0x7f06068b

    .line 27
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 28
    invoke-static {p0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 29
    iput v1, v5, Ln3/k/a/q;->D:I

    const v1, 0x7f12001b

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 31
    invoke-virtual {v5, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 32
    invoke-virtual {v5, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 33
    iput-object p1, v5, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p0, 0x10

    .line 34
    invoke-virtual {v5, p0, v3}, Ln3/k/a/q;->p(IZ)V

    .line 35
    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v7

    const/16 p0, 0x22b

    const-string p1, "OsNotificationUtils"

    .line 36
    invoke-interface {v4, p1, p0}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    const/16 v6, 0x22b

    .line 37
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string p0, "Subtype"

    const-string p1, "softwareUpdate"

    .line 38
    invoke-virtual {v9, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "OsNotificationUtils"

    const-string v8, "notificationBackend"

    .line 39
    invoke-interface/range {v4 .. v9}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/high16 v0, 0xc000000

    .line 1
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
