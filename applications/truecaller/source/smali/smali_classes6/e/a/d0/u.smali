.class public final Le/a/d0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/settings/CallingSettings;

.field public final c:Le/a/i4/e;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Le/a/i4/e;Z)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsNotificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/d0/u;->b:Lcom/truecaller/settings/CallingSettings;

    iput-object p3, p0, Le/a/d0/u;->c:Le/a/i4/e;

    iput-boolean p4, p0, Le/a/d0/u;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.truecaller.request_ignore_battery_optimizations"

    .line 3
    invoke-static {v0, v2}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Le/a/d0/u;->c:Le/a/i4/e;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "notificationIgnoreBatteryOptimizations"

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 6
    :goto_0
    iget-object v3, p0, Le/a/d0/u;->c:Le/a/i4/e;

    .line 7
    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    .line 8
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.truecaller.never_ask_again_ignore_battery_optimizations"

    .line 9
    invoke-static {v4, v1}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "neverAskAgainIgnoreBatteryOptimizations"

    .line 10
    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 11
    new-instance v3, Ln3/k/a/q;

    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    iget-object v5, p0, Le/a/d0/u;->c:Le/a/i4/e;

    invoke-interface {v5}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0816fb

    .line 12
    iget-object v5, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 13
    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v5, 0x7f06068b

    .line 14
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {v4, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 16
    iput v4, v3, Ln3/k/a/q;->D:I

    .line 17
    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v5, 0x7f12001b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 18
    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v5, 0x7f120e6d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 19
    new-instance v4, Ln3/k/a/o;

    invoke-direct {v4}, Ln3/k/a/o;-><init>()V

    iget-object v5, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v6, 0x7f120e6c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v3, v4}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 20
    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 21
    iput-object v0, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    const/16 v4, 0x10

    .line 22
    invoke-virtual {v3, v4, v0}, Ln3/k/a/q;->p(IZ)V

    .line 23
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v4, 0x7f120e6b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 24
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v2, 0x7f120e6a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 25
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "NotificationCompat.Build\u2026ent)\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Le/a/d0/u;->c:Le/a/i4/e;

    const v2, 0x7f0a0e56

    const-string v3, "notificationIgnoreBatteryOptimizations"

    .line 27
    invoke-static {v3}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-interface {v1, v2, v0, v3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.truecaller.request_allow_draw_over_other_apps"

    .line 3
    invoke-static {v0, v1}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f120139

    const v2, 0x7f0a0648

    const-string v3, "notificationDrawOverOtherApps"

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/d0/u;->i(Landroid/app/PendingIntent;IILjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "context"

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.truecaller.request_allow_draw_over_other_apps"

    .line 4
    invoke-static {v0, v1}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f120139

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.truecaller.request_set_as_call_screening_app"

    .line 7
    invoke-static {v0, v1}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f12013c

    :goto_0
    const v2, 0x7f0a0648

    const-string v3, "notificationDrawOverOtherApps"

    .line 8
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/d0/u;->i(Landroid/app/PendingIntent;IILjava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/service/MissedCallsNotificationService$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const-string v1, "notificationRevokedPermission"

    .line 2
    invoke-static {v0, v1}, Lcom/truecaller/ui/TruecallerInit;->wa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x14000000

    .line 3
    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "pendingIntent"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f12013b

    const v3, 0x7f0a0e6d

    .line 5
    invoke-virtual {p0, v0, v2, v3, v1}, Le/a/d0/u;->i(Landroid/app/PendingIntent;IILjava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    iget-object v2, p0, Le/a/d0/u;->c:Le/a/i4/e;

    invoke-interface {v2}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v2, 0x7f0816fb

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 3
    iget-object v1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v2, 0x7f06068b

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 6
    iput v1, v0, Ln3/k/a/q;->D:I

    .line 7
    iget-object v1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v2, 0x7f12013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Ln3/k/a/q;->p(IZ)V

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1, v2}, Ln3/k/a/q;->p(IZ)V

    .line 10
    iget-object v1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.truecaller.request_set_as_default_phone_app"

    .line 12
    invoke-static {v1, v2}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 13
    iput-object v1, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 14
    iget-object v1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v2, 0x7f12013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 15
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "NotificationCompat.Build\u2026dy))\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Le/a/d0/u;->c:Le/a/i4/e;

    const v2, 0x7f0a1327

    const-string v3, "notificationUnableToBlockCall"

    .line 17
    invoke-static {v3}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-interface {v1, v2, v0, v3}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.truecaller.request_set_as_call_screening_app"

    .line 3
    invoke-static {v0, v1}, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f12013c

    const v2, 0x7f0a0648

    const-string v3, "notificationDrawOverOtherApps"

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/d0/u;->i(Landroid/app/PendingIntent;IILjava/lang/String;)V

    return-void
.end method

.method public h(Le/a/d0/v;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "callState"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_22

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/a/d0/v;->b()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_19

    .line 3
    :cond_0
    iget-object v3, v1, Le/a/d0/u;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "blockCallNotification"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 4
    :cond_1
    iget v3, v0, Le/a/d0/v;->h:I

    if-ne v3, v5, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 5
    :goto_0
    new-instance v15, Le/a/j4/b/a/g;

    iget-object v6, v1, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-direct {v15, v6}, Le/a/j4/b/a/g;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v14, Le/a/j4/b/b/e;

    .line 7
    iget-wide v7, v0, Le/a/d0/v;->d:J

    .line 8
    iget-object v6, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v9, "callState.number"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual/range {p1 .. p1}, Le/a/d0/v;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    .line 11
    iget-object v2, v0, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    .line 12
    iget-object v2, v2, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 13
    iget-object v6, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v13, "callState.number"

    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v6, v6, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v6, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v13, v6, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->dialingCode:Ljava/lang/String;

    move-object v6, v14

    move-object/from16 v16, v13

    move v13, v3

    move-object v4, v14

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v15, v16

    .line 15
    invoke-direct/range {v6 .. v15}, Le/a/j4/b/b/e;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/truecaller/blocking/ActionSource;Ljava/lang/String;)V

    .line 16
    sget-object v6, Le/a/j4/b/a/g;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 17
    :try_start_0
    invoke-virtual {v2}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v7

    .line 18
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v2}, Le/a/j4/b/a/g;->g()V

    .line 21
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2}, Le/a/j4/b/a/g;->d()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_2

    .line 25
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/j4/b/b/e;

    .line 27
    iget-boolean v9, v8, Le/a/j4/b/b/e;->e:Z

    if-nez v9, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v6, v7

    .line 29
    :goto_2
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v3, :cond_6

    const v6, 0x7f120420

    goto :goto_3

    :cond_6
    const v6, 0x7f120422

    :goto_3
    if-eqz v3, :cond_7

    const v3, 0x7f10001e

    goto :goto_4

    :cond_7
    const v3, 0x7f10001f

    .line 30
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    const/high16 v14, 0x14000000

    const v15, 0x7f0a0e3b

    const v9, 0x7f0a0e3c

    const/16 v10, 0xde

    if-lt v7, v8, :cond_15

    .line 32
    iget-object v0, v1, Le/a/d0/u;->a:Landroid/content/Context;

    .line 33
    iget-object v7, v1, Le/a/d0/u;->c:Le/a/i4/e;

    .line 34
    iget-object v8, v1, Le/a/d0/u;->b:Lcom/truecaller/settings/CallingSettings;

    .line 35
    iget-boolean v11, v1, Le/a/d0/u;->d:Z

    const-string v12, "context"

    .line 36
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "analyticsNotificationManager"

    invoke-static {v7, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "settings"

    invoke-static {v8, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "items"

    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v4}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const-string v13, "blockCallNotification"

    .line 38
    invoke-interface {v8, v13, v5}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_8

    goto/16 :goto_e

    :cond_8
    const-string v8, "OsNotificationUtils"

    .line 39
    invoke-interface {v7, v8, v10}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    const-string v8, "com.truecaller.SINGLE_BLOCKED_NOTIFICATION"

    .line 40
    invoke-interface {v7, v8, v10}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v10, v17

    invoke-virtual {v8, v3, v13, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "context.resources.getQua\u2026 phoneNotifications.size)"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v0, v11}, Le/a/n/g0;->A(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v8

    .line 43
    invoke-static {v0, v8, v9}, Le/a/o5/g1;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 44
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/truecaller/service/Receiver;

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED"

    .line 46
    invoke-virtual {v10, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "notificationType"

    .line 47
    invoke-virtual {v10, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v5, "with(Intent(context, Rec\u2026ATION_TYPE_BLOCKED)\n    }"

    .line 48
    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v0, v15, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 50
    new-instance v14, Ln3/k/a/q;

    invoke-interface {v7}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v0, v15}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    iget-object v15, v14, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v1, 0x7f0806d3

    iput v1, v15, Landroid/app/Notification;->icon:I

    .line 52
    sget-object v15, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v15, 0x7f0604d4

    .line 53
    invoke-static {v0, v15}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 54
    iput v1, v14, Ln3/k/a/q;->D:I

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 56
    invoke-virtual {v14, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v1, "com.truecaller.BLOCKED_CALLS_GROUP"

    .line 57
    iput-object v1, v14, Ln3/k/a/q;->v:Ljava/lang/String;

    const/4 v3, 0x1

    .line 58
    iput-boolean v3, v14, Ln3/k/a/q;->w:Z

    const/16 v6, 0x10

    .line 59
    invoke-virtual {v14, v6, v3}, Ln3/k/a/q;->p(IZ)V

    .line 60
    iput-object v8, v14, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 61
    iget-object v3, v14, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v10, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    .line 62
    iput-boolean v3, v14, Ln3/k/a/q;->m:Z

    .line 63
    iput v3, v14, Ln3/k/a/q;->l:I

    const-string v3, "NotificationCompat.Build\u2026Compat.PRIORITY_DEFAULT }"

    .line 64
    invoke-static {v14, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xdf

    .line 65
    invoke-virtual {v14}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v6

    const-string v8, "builder.build()"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationBlockedCall"

    .line 66
    invoke-static {v8}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    invoke-interface {v7, v3, v6, v10}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j4/b/b/e;

    .line 69
    invoke-static {v0, v11}, Le/a/n/g0;->A(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Le/a/n/g0;->K()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    invoke-static {v0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v10, Landroid/content/Intent;

    const-class v14, Lcom/truecaller/service/Receiver;

    invoke-direct {v10, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {v10, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    .line 73
    invoke-virtual {v10, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 74
    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v14, 0x14000000

    const v15, 0x7f0a0e3b

    .line 75
    invoke-static {v0, v15, v10, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v14, "blocked_calls"

    .line 76
    invoke-interface {v7, v14}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 77
    iget-object v15, v4, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    move-object/from16 v20, v3

    .line 78
    sget-object v3, Lcom/truecaller/blocking/ActionSource;->UNKNOWN:Lcom/truecaller/blocking/ActionSource;

    if-ne v15, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_a

    const v3, 0x7f120833

    .line 79
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v5

    goto :goto_b

    .line 80
    :cond_a
    iget-object v3, v4, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    const/4 v15, 0x0

    .line 81
    invoke-static {v0, v3, v15}, Le/a/b0/q/c0;->k(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object v15, v4, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    if-eqz v15, :cond_c

    .line 83
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_b

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v15, 0x1

    :goto_8
    if-nez v15, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_d

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v15, 0x1

    :goto_a
    if-nez v15, :cond_f

    .line 84
    iget-object v15, v4, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    .line 85
    invoke-static {v15, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    const/16 v19, 0x1

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_f

    move-object/from16 v21, v5

    const/4 v15, 0x2

    new-array v5, v15, [Ljava/lang/Object;

    .line 86
    iget-object v15, v4, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v5, v17

    aput-object v3, v5, v19

    const v3, 0x7f120412

    .line 87
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_b

    :cond_f
    move-object/from16 v21, v5

    .line 88
    iget-object v3, v4, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 89
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-boolean v15, v4, Le/a/j4/b/b/e;->f:Z

    if-eqz v15, :cond_10

    const v15, 0x7f1207e0

    goto :goto_c

    :cond_10
    const v15, 0x7f1210be

    .line 91
    :goto_c
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 92
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v15, Le/a/a3/c;->a:Ljava/util/List;

    move-object/from16 v22, v9

    .line 94
    iget-object v9, v4, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    .line 95
    invoke-interface {v15, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, " \u2022 "

    .line 96
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v9, v4, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    const-string v15, "notification.actionSource"

    .line 98
    invoke-static {v9, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/a3/c;->b(Lcom/truecaller/blocking/ActionSource;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_11
    iget-object v9, v4, Le/a/j4/b/b/e;->g:Lcom/truecaller/blocking/ActionSource;

    .line 100
    sget-object v15, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_COUNTRY:Lcom/truecaller/blocking/ActionSource;

    if-ne v9, v15, :cond_12

    .line 101
    iget-object v9, v4, Le/a/j4/b/b/e;->h:Ljava/lang/String;

    if-eqz v9, :cond_12

    const-string v15, " +"

    .line 102
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_12
    new-instance v9, Ln3/k/a/q;

    invoke-direct {v9, v0, v14}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v14, 0x7f12001b

    .line 104
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 105
    sget-object v14, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v15, 0x7f080792

    .line 106
    invoke-static {v0, v15}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 107
    invoke-static {v14}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 108
    invoke-virtual {v9, v14}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 109
    iget-object v14, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v10, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 110
    invoke-virtual {v9, v5}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 111
    invoke-virtual {v9, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const v3, 0x7f0a0e3c

    .line 112
    invoke-static {v0, v6, v3}, Le/a/o5/g1;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 113
    iput-object v5, v9, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v3, 0x10

    const/4 v5, 0x1

    .line 114
    invoke-virtual {v9, v3, v5}, Ln3/k/a/q;->p(IZ)V

    .line 115
    iput-object v1, v9, Ln3/k/a/q;->v:Ljava/lang/String;

    .line 116
    iput-boolean v5, v9, Ln3/k/a/q;->m:Z

    .line 117
    iget-wide v5, v4, Le/a/j4/b/b/e;->a:J

    .line 118
    iget-object v3, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v5, v3, Landroid/app/Notification;->when:J

    const v3, 0x7f0604d4

    .line 119
    invoke-static {v0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 120
    iput v5, v9, Ln3/k/a/q;->D:I

    .line 121
    iget-boolean v5, v4, Le/a/j4/b/b/e;->f:Z

    if-eqz v5, :cond_13

    const v5, 0x7f0806d3

    goto :goto_d

    :cond_13
    const v5, 0x7f08074e

    .line 122
    :goto_d
    iget-object v6, v9, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v5, v6, Landroid/app/Notification;->icon:I

    .line 123
    invoke-virtual {v9}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v5

    const-string v6, "NotificationCompat.Build\u20264dp)\n            .build()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OsNotificationUtils_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v9, v4, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-wide v9, v4, Le/a/j4/b/b/e;->a:J

    .line 128
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {v8}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xde

    .line 130
    invoke-interface {v7, v4, v9, v5, v6}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    move v15, v3

    move-object/from16 v3, v20

    move-object/from16 v5, v21

    move-object/from16 v9, v22

    goto/16 :goto_5

    :cond_14
    :goto_e
    const/4 v1, 0x1

    .line 131
    invoke-virtual {v2, v1}, Le/a/j4/b/a/g;->f(I)V

    return-void

    :cond_15
    move v1, v5

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const v5, 0x7f06068b

    const v7, 0x7f080580

    if-ne v2, v1, :cond_1b

    .line 133
    iget-object v2, v0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_1a

    const-string v3, "callState.contact ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p0

    .line 134
    iget-object v3, v8, Le/a/d0/u;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "blockCallNotification"

    invoke-interface {v3, v4, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_12

    .line 135
    :cond_16
    iget-object v1, v8, Le/a/d0/u;->c:Le/a/i4/e;

    const-string v3, "blocked_calls"

    invoke-interface {v1, v3}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v3, Ln3/k/a/q;

    iget-object v4, v8, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    iget-object v1, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v7, v1, Landroid/app/Notification;->icon:I

    .line 138
    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    .line 139
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 140
    invoke-static {v1, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 141
    iput v1, v3, Ln3/k/a/q;->D:I

    .line 142
    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v4, 0x7f12001b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v1, "NotificationCompat.Build\u2026String(R.string.AppName))"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v1, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    const-string v4, "callState.number"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_f

    :cond_17
    const-string v1, ""

    :goto_f
    const-string v5, "callState.number.numberForDisplay ?: \"\""

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v5, v8, Le/a/d0/u;->a:Landroid/content/Context;

    iget-boolean v6, v8, Le/a/d0/u;->d:Z

    invoke-static {v5, v6}, Le/a/n/g0;->A(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v5

    .line 145
    iget-object v6, v8, Le/a/d0/u;->a:Landroid/content/Context;

    iget-object v7, v0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    invoke-static {v7, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v6, v1, v4}, Le/a/b0/q/c0;->k(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "PhoneNumberUtils.numberT\u2026lState.number.rawNumber))"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 147
    iget-object v4, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const v1, 0x7f120412

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "context.getString(R.stri\u2026displayName, contentText)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    const/4 v2, 0x1

    :goto_10
    const v4, 0x7f120426

    const v6, 0x7f080579

    .line 148
    iget v0, v0, Le/a/d0/v;->h:I

    if-ne v0, v2, :cond_19

    const v4, 0x7f120424

    goto :goto_11

    :cond_19
    const v6, 0x7f080583

    .line 149
    :goto_11
    iget-object v0, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v6, v0, Landroid/app/Notification;->icon:I

    .line 150
    iget-object v0, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v2, 0x7f080792

    .line 151
    invoke-static {v0, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    invoke-static {v0}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 153
    iget-object v0, v8, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(titleResId)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v2, Landroid/content/Intent;

    iget-object v4, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const-class v6, Lcom/truecaller/service/Receiver;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED"

    .line 155
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notificationType"

    const/4 v6, 0x1

    .line 156
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v4, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const/high16 v6, 0x14000000

    const v7, 0x7f0a0e3b

    .line 158
    invoke-static {v4, v7, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    iget-object v4, v3, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v2, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 160
    invoke-static {}, Le/a/n/g0;->K()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v3, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 162
    invoke-virtual {v3, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 163
    iget-object v0, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v1, 0x7f0a0e3c

    invoke-static {v0, v5, v1}, Le/a/o5/g1;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    iput-object v0, v3, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 165
    invoke-virtual {v3, v0, v1}, Ln3/k/a/q;->p(IZ)V

    .line 166
    iget-object v0, v8, Le/a/d0/u;->c:Le/a/i4/e;

    const-string v1, "OsNotificationUtils"

    const/16 v2, 0xde

    invoke-interface {v0, v1, v2}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    .line 167
    iget-object v0, v8, Le/a/d0/u;->c:Le/a/i4/e;

    .line 168
    invoke-virtual {v3}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v3

    const-string v4, "builder.build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notificationBlockedCall"

    .line 169
    invoke-static {v4}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-interface {v0, v1, v2, v3, v4}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    move-object/from16 v8, p0

    :goto_12
    return-void

    :cond_1b
    move-object/from16 v8, p0

    .line 171
    iget-object v0, v8, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v0, v3, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "res.getQuantityString(nu\u2026 phoneNotifications.size)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v2, Ln3/k/a/q;

    iget-object v3, v8, Le/a/d0/u;->a:Landroid/content/Context;

    iget-object v9, v8, Le/a/d0/u;->c:Le/a/i4/e;

    invoke-interface {v9}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v9}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    iget-object v3, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 175
    iget-object v3, v8, Le/a/d0/u;->a:Landroid/content/Context;

    .line 176
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 177
    invoke-static {v3, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 178
    iput v3, v2, Ln3/k/a/q;->D:I

    if-eqz v6, :cond_1c

    .line 179
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_1c
    move-object v0, v1

    :goto_13
    invoke-virtual {v2, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v0, "NotificationCompat.Build\u2026e numNotificationsString)"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ln3/k/a/s;

    invoke-direct {v0}, Ln3/k/a/s;-><init>()V

    .line 181
    invoke-virtual {v0, v1}, Ln3/k/a/s;->l(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 182
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_14
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1f

    .line 183
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/j4/b/b/e;

    .line 184
    iget-object v7, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    .line 185
    iget-wide v11, v5, Le/a/j4/b/b/e;->a:J

    .line 186
    invoke-static {v11, v12}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 187
    iget-object v9, v8, Le/a/d0/u;->a:Landroid/content/Context;

    .line 188
    iget-wide v11, v5, Le/a/j4/b/b/e;->a:J

    .line 189
    invoke-static {v9, v11, v12}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    const-string v11, "DateTimeUtils.getFormatt\u2026me(context, pn.timestamp)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_15

    .line 190
    :cond_1d
    iget-object v9, v8, Le/a/d0/u;->a:Landroid/content/Context;

    .line 191
    iget-wide v11, v5, Le/a/j4/b/b/e;->a:J

    .line 192
    invoke-static {v9, v11, v12}, Le/a/b0/q/m;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    const-string v11, "DateTimeUtils.getFormatt\u2026ar(context, pn.timestamp)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_15
    const/4 v11, 0x0

    aput-object v9, v10, v11

    .line 193
    iget-object v9, v8, Le/a/d0/u;->a:Landroid/content/Context;

    .line 194
    iget-object v11, v5, Le/a/j4/b/b/e;->b:Ljava/lang/String;

    .line 195
    invoke-static {v11}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v9, v11, v12}, Le/a/b0/q/c0;->k(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v11, "PhoneNumberUtils.numberT\u2026sNumberHidden(pn.number))"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v11, v5, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    .line 197
    invoke-static {v11}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 198
    iget-object v11, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    .line 199
    iget-object v5, v5, Le/a/j4/b/b/e;->c:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v5, 0x1

    aput-object v9, v13, v5

    const v14, 0x7f120412

    .line 200
    invoke-virtual {v11, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "context.getString(R.stri\u2026ber, pn.name, callerText)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    :cond_1e
    const/4 v5, 0x1

    const/4 v12, 0x2

    const v14, 0x7f120412

    :goto_16
    aput-object v9, v10, v5

    const v5, 0x7f120417

    .line 201
    invoke-virtual {v7, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "context.getString(R.stri\u2026n), createCallerText(pn))"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v5}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    goto :goto_14

    .line 203
    :cond_1f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x5

    if-le v3, v5, :cond_20

    .line 204
    iget-object v3, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v7, 0x7f120d70

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    invoke-virtual {v3, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.stri\u2026neNotifications.size - 5)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v3}, Ln3/k/a/s;->m(Ljava/lang/CharSequence;)Ln3/k/a/s;

    :cond_20
    if-eqz v6, :cond_21

    goto :goto_17

    .line 206
    :cond_21
    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v3, 0x7f120421

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.OSNotificationCalls)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_17
    invoke-virtual {v2, v1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 207
    invoke-virtual {v2, v0}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/service/Receiver;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notificationType"

    const/4 v3, 0x1

    .line 210
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const/high16 v4, 0x14000000

    const v5, 0x7f0a0e3b

    .line 212
    invoke-static {v1, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 213
    iget-object v1, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 214
    iget-object v0, v8, Le/a/d0/u;->a:Landroid/content/Context;

    iget-boolean v1, v8, Le/a/d0/u;->d:Z

    invoke-static {v0, v1}, Le/a/n/g0;->A(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 215
    iget-object v1, v8, Le/a/d0/u;->a:Landroid/content/Context;

    const v4, 0x7f0a0e3c

    invoke-static {v1, v0, v4}, Le/a/o5/g1;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 216
    iput-object v0, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    .line 217
    invoke-virtual {v2, v0, v3}, Ln3/k/a/q;->p(IZ)V

    const/4 v0, 0x0

    .line 218
    iput v0, v2, Ln3/k/a/q;->l:I

    .line 219
    invoke-virtual {v2, v0}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 220
    iget-object v0, v8, Le/a/d0/u;->c:Le/a/i4/e;

    .line 221
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationBlockedCall"

    .line 222
    invoke-static {v2}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OsNotificationUtils"

    const/16 v4, 0xde

    .line 223
    invoke-interface {v0, v3, v4, v1, v2}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v8, v1

    .line 224
    :goto_18
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_18

    :cond_22
    :goto_19
    move-object v8, v1

    return-void
.end method

.method public final i(Landroid/app/PendingIntent;IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/d0/u;->c:Le/a/i4/e;

    .line 2
    new-instance v1, Ln3/k/a/q;

    iget-object v2, p0, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-interface {v0}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v2, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v3, 0x7f0816fb

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 4
    iget-object v2, p0, Le/a/d0/u;->a:Landroid/content/Context;

    .line 5
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v3, 0x7f06068b

    .line 6
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 7
    iput v2, v1, Ln3/k/a/q;->D:I

    .line 8
    iget-object v2, p0, Le/a/d0/u;->a:Landroid/content/Context;

    const v3, 0x7f12013a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Ln3/k/a/q;->p(IZ)V

    .line 10
    new-instance v2, Ln3/k/a/o;

    invoke-direct {v2}, Ln3/k/a/o;-><init>()V

    iget-object v4, p0, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v1, v2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2, v3}, Ln3/k/a/q;->p(IZ)V

    .line 12
    iput-object p1, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 13
    iget-object p1, p0, Le/a/d0/u;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string p1, "NotificationCompat.Build\u2026t.getString(contentText))"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "createNotification(pendi\u2026ent, contentText).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p4}, Le/a/c/p/a;->K2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-interface {v0, p3, p1, p2}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
