.class public final Le/a/h/q0/g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$postReminderNotification$2"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {
        0x11b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

.field public final synthetic g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iput-object p2, p0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/q0/g;

    iget-object v0, p0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/g;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/q0/g;

    iget-object v0, p0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-direct {p1, v0, v1, p2}, Le/a/h/q0/g;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/q0/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/h/q0/g;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string v3, "showMissedCallReminders"

    .line 4
    invoke-static {v3}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    .line 5
    :cond_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-wide v7, v7, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    const/16 v3, 0xc

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gtz v3, :cond_e

    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-gez v7, :cond_3

    goto/16 :goto_5

    .line 6
    :cond_3
    iget-object v7, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 7
    iget-object v7, v7, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->g:Lo3/a;

    if-eqz v7, :cond_d

    .line 8
    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/k3/j/b;

    iget-object v9, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v9, v9, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    invoke-virtual {v7, v9}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 9
    invoke-virtual {v7}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    iget-object v9, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v9, v9, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    .line 10
    :goto_0
    iget-object v10, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v10}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100017

    long-to-int v12, v5

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    .line 11
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v13, v4

    .line 12
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "context.resources.getQua\u2026Int(), name, hoursPassed)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eqz v7, :cond_5

    .line 13
    invoke-static {v7, v4}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 14
    :goto_1
    new-instance v9, Le/a/z3/i/a;

    sget-object v10, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    invoke-direct {v9, v7, v10}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 15
    iput-boolean v4, v9, Le/a/z3/i/a;->a:Z

    .line 16
    iput v6, v9, Le/a/z3/i/a;->b:I

    const v6, 0x7f0f0001

    .line 17
    iget-object v7, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v7}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v7

    invoke-static {v9, v6, v7}, Le/a/m0/a1$k;->P0(Le/a/z3/i/a;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_6

    move v14, v4

    .line 18
    :cond_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 20
    :goto_2
    iget-object v7, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v7}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f06068b

    .line 21
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 22
    invoke-static {v7, v9}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v7

    .line 23
    sget-object v9, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 24
    iget-object v10, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v10}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 25
    iget-object v13, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v14, v13, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    .line 26
    iget-object v15, v13, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    const/16 v16, 0x0

    .line 27
    sget-object v17, Lcom/truecaller/details_view/analytics/SourceType;->MissedCallReminder:Lcom/truecaller/details_view/analytics/SourceType;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1c00

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v24

    .line 28
    invoke-static/range {v9 .. v23}, Le/a/v/p/n;->d(Le/a/v/p/n;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/analytics/SourceType;ZZILjava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/content/Intent;

    move-result-object v9

    .line 29
    iget-object v10, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v10}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v10

    .line 30
    iget-object v11, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v11, v11, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    const/high16 v12, 0x14000000

    .line 31
    invoke-static {v10, v11, v9, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 32
    iget-object v10, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v10}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v10

    .line 33
    iget-object v11, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v11, v11, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 34
    new-instance v13, Landroid/content/Intent;

    iget-object v14, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v14}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v14, "com.truecaller.intent.action.MISSED_CALL_REMINDER_SNOOZED"

    .line 35
    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 36
    iget-object v14, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    const-string v15, "reminder"

    invoke-virtual {v13, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 37
    invoke-static {v10, v11, v13, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 38
    iget-object v11, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v11}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v11

    .line 39
    iget-object v13, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v13, v13, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 40
    new-instance v14, Landroid/content/Intent;

    iget-object v8, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v8}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v8

    const-class v4, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-direct {v14, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.intent.action.MISSED_CALL_REMINDER_DISMISSED"

    .line 41
    invoke-virtual {v14, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 42
    iget-object v8, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-virtual {v4, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 43
    invoke-static {v11, v13, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 44
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1f

    if-lt v8, v11, :cond_8

    .line 45
    sget-object v17, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;->j:Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;

    .line 46
    iget-object v8, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v8}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v18

    .line 47
    iget-object v8, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v8, v8, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    const-string v11, "reminder.rawNumber"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    .line 48
    iget-object v11, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-object v11, v11, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    const/16 v23, 0x1

    const/16 v24, 0x8

    const-string v19, "notificationMissedCallReminder"

    move-object/from16 v20, v8

    move-object/from16 v22, v11

    .line 49
    invoke-static/range {v17 .. v24}, Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;->b(Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v8

    .line 50
    iget-object v11, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v11}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v11

    .line 51
    iget-object v13, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v13, v13, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 52
    invoke-static {v11, v13, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    goto :goto_3

    .line 53
    :cond_8
    iget-object v8, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v8}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v8

    .line 54
    iget-object v11, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget v11, v11, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    .line 55
    new-instance v13, Landroid/content/Intent;

    iget-object v14, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v14}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v14

    const-class v12, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-direct {v13, v14, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "com.truecaller.intent.action.MISSED_CALL_REMINDER_CALLED"

    .line 56
    invoke-virtual {v13, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 57
    iget-object v13, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    invoke-virtual {v12, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x14000000

    .line 58
    invoke-static {v8, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 59
    :goto_3
    iget-object v11, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 60
    iget-object v11, v11, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->f:Lo3/a;

    if-eqz v11, :cond_c

    .line 61
    invoke-interface {v11}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/i4/e;

    const-string v12, "missed_calls_reminder"

    invoke-interface {v11, v12}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 62
    new-instance v12, Ls1/z/c/c0;

    invoke-direct {v12}, Ls1/z/c/c0;-><init>()V

    new-instance v13, Ln3/k/a/q;

    iget-object v14, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v14}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v11, 0x7f080488

    .line 63
    iget-object v14, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v11, v14, Landroid/app/Notification;->icon:I

    .line 64
    iget-object v11, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v11}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v11

    const v14, 0x7f1203c3

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 65
    invoke-virtual {v13, v5}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 66
    invoke-virtual {v13, v6}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const/4 v5, 0x1

    .line 67
    iput-boolean v5, v13, Ln3/k/a/q;->m:Z

    const/16 v6, 0x10

    .line 68
    invoke-virtual {v13, v6, v5}, Ln3/k/a/q;->p(IZ)V

    .line 69
    iget-object v5, v0, Le/a/h/q0/g;->g:Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;

    iget-wide v5, v5, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    .line 70
    iget-object v11, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v5, v11, Landroid/app/Notification;->when:J

    .line 71
    iput v7, v13, Ln3/k/a/q;->D:I

    .line 72
    iput-object v9, v13, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 73
    iput-object v4, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const v4, 0x7f08057b

    .line 74
    iget-object v5, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v5}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1203c0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v13, v4, v5, v8}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    if-gez v3, :cond_9

    const v3, 0x7f08058b

    .line 76
    iget-object v4, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-virtual {v4}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1203c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v13, v3, v4, v10}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 78
    :cond_9
    iget-object v3, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/Notification;->vibrate:[J

    .line 79
    invoke-virtual {v13, v4}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const-string v3, "NotificationCompat.Build\u2026          .setSound(null)"

    invoke-static {v13, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object v13, v12, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 81
    iget-object v3, v0, Le/a/h/q0/g;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    .line 82
    iget-object v3, v3, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    if-eqz v3, :cond_b

    .line 83
    new-instance v5, Le/a/h/q0/g$a;

    invoke-direct {v5, v0, v12, v4}, Le/a/h/q0/g$a;-><init>(Le/a/h/q0/g;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v4, 0x1

    iput v4, v0, Le/a/h/q0/g;->e:I

    invoke-static {v3, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    return-object v2

    :cond_a
    :goto_4
    return-object v1

    :cond_b
    const-string v1, "uiContext"

    .line 84
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_c
    const/4 v4, 0x0

    const-string v1, "analyticsNotificationManager"

    .line 85
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_d
    const/4 v4, 0x0

    const-string v1, "aggregatedContactDao"

    .line 86
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_5
    return-object v1
.end method
