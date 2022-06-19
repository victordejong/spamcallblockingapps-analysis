.class public final Lcom/truecaller/messaging/conversation/ConversationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/conversation/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/truecaller/messaging/conversation/ConversationActivity$a;Landroid/content/Context;JJLjava/lang/String;ZZZLjava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p13

    and-int/lit8 v4, v3, 0x4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_0

    move-wide v7, v5

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p4

    :goto_0
    and-int/lit8 v4, v3, 0x8

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    move-object v4, v9

    goto :goto_1

    :cond_1
    move-object/from16 v4, p6

    :goto_1
    and-int/lit8 v10, v3, 0x10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    move v10, v11

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v12, v3, 0x20

    if-eqz v12, :cond_3

    move v12, v11

    goto :goto_3

    :cond_3
    move/from16 v12, p8

    :goto_3
    and-int/lit8 v13, v3, 0x40

    if-eqz v13, :cond_4

    move v13, v11

    goto :goto_4

    :cond_4
    move/from16 v13, p9

    :goto_4
    and-int/lit16 v14, v3, 0x80

    and-int/lit16 v14, v3, 0x100

    if-eqz v14, :cond_5

    move-object v14, v9

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v9, p12

    :goto_6
    const-string v3, "context"

    .line 1
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eqz v10, :cond_7

    .line 3
    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_7

    :cond_7
    if-eqz v12, :cond_8

    .line 4
    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    :cond_8
    :goto_7
    const-string v12, "messages"

    const-string v15, "notificationIncomingMessage"

    .line 5
    invoke-static {v0, v12, v15, v3}, Lcom/truecaller/ui/TruecallerInit;->ua(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/content/Intent;

    move-result-object v3

    .line 6
    new-instance v12, Landroid/content/Intent;

    const-class v15, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v12, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v15, "conversation_id"

    .line 7
    invoke-virtual {v12, v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    cmp-long v5, v7, v5

    if-eqz v5, :cond_9

    const-string v5, "message_id"

    .line 8
    invoke-virtual {v12, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_9
    if-eqz v4, :cond_a

    const-string v5, "launch_source"

    .line 9
    invoke-virtual {v12, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-eqz v10, :cond_b

    const-string v4, "filter"

    const/4 v5, 0x4

    .line 10
    invoke-virtual {v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    const/4 v4, 0x1

    if-eqz v13, :cond_c

    const-string v5, "open_attachment_picker"

    .line 11
    invoke-virtual {v12, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    if-eqz v14, :cond_d

    .line 12
    iget v5, v14, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 13
    iget-object v6, v14, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    .line 14
    invoke-static {v12, v5, v6}, Le/a/c/p/a;->E(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_d
    if-eqz v9, :cond_e

    .line 15
    invoke-static {v12, v9}, Le/a/c/p/a;->D(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_e
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/content/Intent;

    aput-object v3, v5, v11

    aput-object v12, v5, v4

    long-to-int v1, v1

    const/high16 v2, 0x44000000    # 512.0f

    .line 16
    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/notifications/OtpAnalyticsModel;)Landroid/app/PendingIntent;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v1, "messages"

    const-string v2, "notificationIncomingMessage"

    .line 2
    invoke-static {p1, v1, v2, v0}, Lcom/truecaller/ui/TruecallerInit;->ua(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    const-string v2, "otp_notification"

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p5}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->isUpdateNotification()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v2, "updates_notification"

    goto :goto_0

    :cond_1
    const-string v2, "notificationSmartCards"

    .line 4
    :goto_0
    iget-wide v3, p2, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 5
    iget-wide v5, p2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-class v7, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {p2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "conversation_id"

    .line 7
    invoke-virtual {p2, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    const-string v3, "extra_notification_origin"

    const-string v4, "extra_smart_notification"

    .line 8
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v3, "extra_action_info"

    .line 9
    invoke-virtual {p2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "extra_action_type"

    const-string v3, "click"

    .line 10
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "extra_smart_notif_metadata"

    .line 11
    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "extra_otp_analytics_model"

    .line 12
    invoke-virtual {p2, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 13
    iget p3, p4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    const-string p4, "extra_notification_id"

    .line 14
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "launch_source"

    .line 15
    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "Intent(context, Conversa\u2026SOURCE, analyticsContext)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p3, -0x1

    cmp-long p3, v5, p3

    if-eqz p3, :cond_2

    const-string p3, "message_id"

    .line 16
    invoke-virtual {p2, p3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    const/4 p3, 0x2

    new-array p3, p3, [Landroid/content/Intent;

    const/4 p4, 0x0

    aput-object v0, p3, p4

    aput-object p2, p3, v1

    const/high16 p2, 0xc000000

    .line 17
    invoke-static {p1, v1, p3, p2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 2
    iput-object p2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 3
    iput-object p2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 4
    iput-object p3, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 5
    iput-object p4, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 6
    iput-object p5, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    const-string p3, "Participant.Builder(True\u2026\n                .build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    new-array p4, p1, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "participants"

    .line 9
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "is_hidden_number_intent"

    .line 10
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, Conversa\u2026DDEN_NUMBER_INTENT, true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d([Lcom/truecaller/data/entity/messaging/Participant;Z)Landroid/content/Intent;
    .locals 5

    const-string v0, "participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 4
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 5
    aget-object v4, p1, v3

    iget v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.truecaller.OPEN_CONVERSATION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "normalized_addresses"

    .line 7
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "participant_types"

    .line 8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_bubble_intent"

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(ACTION_OPEN)\n    \u2026E_INTENT, isBubbleIntent)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_1

    const-string p2, ","

    .line 11
    invoke-static {v0, p2}, Lw3/c/a/a/a/h;->q([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method
