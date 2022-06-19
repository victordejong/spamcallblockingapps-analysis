.class public final Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;
.super Le/a/a/u0/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00087\u00108J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105\u00a8\u00069"
    }
    d2 = {
        "Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/b0/o/a;",
        "f",
        "Le/a/b0/o/a;",
        "getCoreSettings",
        "()Le/a/b0/o/a;",
        "setCoreSettings",
        "(Le/a/b0/o/a;)V",
        "coreSettings",
        "Le/a/c/e/c;",
        "d",
        "Le/a/c/e/c;",
        "getAnalyticsManager",
        "()Le/a/c/e/c;",
        "setAnalyticsManager",
        "(Le/a/c/e/c;)V",
        "analyticsManager",
        "Ln3/k/a/x;",
        "g",
        "Ln3/k/a/x;",
        "getNotificationManager",
        "()Ln3/k/a/x;",
        "setNotificationManager",
        "(Ln3/k/a/x;)V",
        "notificationManager",
        "Le/a/c/v/a;",
        "i",
        "Le/a/c/v/a;",
        "getReminderManager",
        "()Le/a/c/v/a;",
        "setReminderManager",
        "(Le/a/c/v/a;)V",
        "reminderManager",
        "Le/a/c/i/l/f/a;",
        "e",
        "Le/a/c/i/l/f/a;",
        "getSmartNotificationManager",
        "()Le/a/c/i/l/f/a;",
        "setSmartNotificationManager",
        "(Le/a/c/i/l/f/a;)V",
        "smartNotificationManager",
        "Le/a/c/i/l/e/a;",
        "h",
        "Le/a/c/i/l/e/a;",
        "getNotificationBannerHelper",
        "()Le/a/c/i/l/e/a;",
        "setNotificationBannerHelper",
        "(Le/a/c/i/l/e/a;)V",
        "notificationBannerHelper",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/c/e/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/c/i/l/f/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Ln3/k/a/x;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/c/i/l/e/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/c/v/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/u0/c;-><init>()V

    return-void
.end method

.method public static final pa(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_notification_origin"

    const-string v1, "extra_smart_notification"

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "notification_name"

    const-string v1, "com.truecaller.insights.notifications.WEB"

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget p0, p2, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    const-string p2, "extra_notification_id"

    .line 5
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "extra_smart_notif_metadata"

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "extra_web_url"

    .line 7
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_action_type"

    const-string p1, "click"

    .line 8
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_action_info"

    .line 9
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "notification_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent"

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_1a

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "com.truecaller.insights.notifications.DIAL"

    const v7, 0x2b81e0e1

    const-string v8, "com.truecaller.insights.notifications.WEB"

    const v9, -0x6da805d

    const-string v10, "com.truecaller.insights.notifications.PROMO_BANNER"

    const v11, -0x74c9f13

    if-eq v5, v11, :cond_2

    if-eq v5, v9, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    :goto_0
    invoke-static {v4}, Le/a/a/u0/h;->a(Landroid/content/Intent;)Le/a/c/r/d/c;

    move-result-object v4

    invoke-virtual {v4}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v4

    goto :goto_2

    :cond_3
    :goto_1
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_5

    .line 7
    iget-object v5, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->d:Le/a/c/e/c;

    if-eqz v5, :cond_4

    invoke-interface {v5, v4}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_3

    :cond_4
    const-string v0, "analyticsManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v12, 0x1cd1d1e2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v5, v12, :cond_8

    const v12, 0x6edd7655

    if-eq v5, v12, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v5, "com.truecaller.insights.reminder.notifications.PAY_BILL"

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 12
    invoke-static {v4}, Le/a/c/p/a;->c0(Landroid/content/Intent;)Le/a/c/v/i/g;

    move-result-object v12

    if-eqz v12, :cond_d

    const-string v15, "com.truecaller.insights.reminders.notifications.EXTRAS.DEEPLINK_ACTION_TYPE"

    .line 13
    invoke-virtual {v4, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 14
    iget-object v7, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->i:Le/a/c/v/a;

    if-eqz v7, :cond_7

    const-string v9, "context"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v5, v12, v15}, Le/a/c/v/a;->e(Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string v0, "reminderManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    const-string v5, "com.truecaller.insights.notifications.SMART_NOTIFICATION_PROMO"

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 16
    iget-object v5, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->f:Le/a/b0/o/a;

    if-eqz v5, :cond_c

    const-string v7, "smart_notifications_clicked"

    invoke-interface {v5, v7, v14}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v9, Lcom/truecaller/messaging/data/types/InboxTab;->BUSINESS:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v12, "messages"

    const-string v15, "notificationIncomingMessage"

    .line 20
    invoke-static {v5, v12, v15, v9}, Lcom/truecaller/ui/TruecallerInit;->ua(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/content/Intent;

    move-result-object v9

    .line 21
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v9, Landroid/content/Intent;

    const-class v12, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v9, v5, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v14, -0x1

    const-string v12, "extra_conversation_id"

    .line 23
    invoke-virtual {v4, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v16, v11, v14

    if-nez v16, :cond_9

    goto :goto_4

    :cond_9
    const-string v3, "extra_message_id"

    move-object/from16 v17, v2

    .line 24
    invoke-virtual {v4, v3, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v14, v2, v14

    if-eqz v14, :cond_a

    const-string v14, "message_id"

    .line 25
    invoke-virtual {v9, v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_a
    const-string v2, "conversation_id"

    .line 26
    invoke-virtual {v9, v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "launch_source"

    const-string v3, "notificationSmartCards"

    .line 27
    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity;

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 32
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/Intent;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 33
    new-instance v3, Landroid/content/Intent;

    aget-object v7, v2, v13

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v7, 0x1000c000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v13

    .line 34
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    .line 35
    invoke-static {v5, v2, v7}, Ln3/k/b/a$a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_5

    .line 36
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v7, v3

    const-string v0, "coreSettings"

    .line 37
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_d
    :goto_4
    move-object/from16 v17, v2

    .line 38
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x10000000

    const v5, -0x74c9f13

    if-eq v2, v5, :cond_14

    const v5, -0x6da805d

    if-eq v2, v5, :cond_11

    const v5, 0x2b81e0e1

    if-eq v2, v5, :cond_e

    goto/16 :goto_8

    .line 39
    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "extra_number"

    .line 40
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v2, "intent.getStringExtra(EXTRA_NUMBER) ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    const/4 v13, 0x1

    :cond_f
    if-eqz v13, :cond_10

    goto/16 :goto_8

    .line 42
    :cond_10
    invoke-static {v0}, Le/a/b0/q/t;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "IntentUtils.getDialIntentFromNumber(url)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_6

    .line 44
    :cond_11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "extra_web_url"

    .line 45
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v2, "intent.getStringExtra(EX\u2026A_WEB_URL) ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v13, 0x1

    :cond_12
    if-eqz v13, :cond_13

    goto/16 :goto_8

    .line 47
    :cond_13
    invoke-static {v0}, Le/a/b0/q/t;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "IntentUtils.getViewIntent(url)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_6
    move-object v7, v0

    goto/16 :goto_9

    .line 49
    :cond_14
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "extra_promo_banner_data"

    .line 50
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    if-eqz v0, :cond_18

    .line 51
    invoke-virtual {v0}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_7

    :cond_15
    move v2, v13

    :goto_7
    if-eqz v2, :cond_16

    goto :goto_8

    .line 52
    :cond_16
    iget-object v2, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->h:Le/a/c/i/l/e/a;

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;->getBannerName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bannerName"

    .line 53
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v2, v2, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    .line 55
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Le/a/c/i/l/e/b;->a()Ljava/util/Map;

    move-result-object v5

    .line 57
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v4, v6}, Le/a/p5/s0/g;->Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :try_start_0
    new-instance v4, Le/m/e/k;

    invoke-direct {v4}, Le/m/e/k;-><init>()V

    invoke-virtual {v4, v5}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    iget-object v2, v2, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    const-string v5, "bannerClickedCountJson"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Le/a/c/c0/o;->q0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;->getDeeplink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "source"

    const-string v3, "notif_banner"

    .line 63
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v7, v2

    goto :goto_9

    :cond_17
    const-string v0, "notificationBannerHelper"

    .line 64
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_18
    :goto_8
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_19

    const-string v0, "$this$startActivitySafe"

    .line 65
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_1
    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 67
    invoke-static {v3}, Le/q/f/a/d/a;->X2(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_a

    :cond_19
    move-object/from16 v2, v17

    .line 68
    :cond_1a
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v4, "extra_notification_id"

    .line 69
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1b

    goto :goto_b

    .line 70
    :cond_1b
    iget-object v3, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->e:Le/a/c/i/l/f/a;

    if-eqz v3, :cond_1e

    invoke-interface {v3, v0}, Le/a/c/i/l/f/a;->b(I)V

    .line 71
    iget-object v3, v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->g:Ln3/k/a/x;

    if-eqz v3, :cond_1d

    invoke-virtual {v3, v0}, Ln3/k/a/x;->b(I)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "applicationContext"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 73
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$clearExtras"

    .line 74
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1c

    const-string v3, "extras ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_c

    .line 78
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1d
    const-string v0, "notificationManager"

    .line 79
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_1e
    const/4 v2, 0x0

    const-string v0, "smartNotificationManager"

    .line 80
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
