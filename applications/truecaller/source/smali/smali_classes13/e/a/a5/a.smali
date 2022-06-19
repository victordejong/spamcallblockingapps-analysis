.class public final Le/a/a5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/l/f/f;


# instance fields
.field public final a:I

.field public final b:Ls1/c0/c;

.field public final c:Ls1/g;

.field public final d:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/p;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorageQueryHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 2
    invoke-static {p1}, Le/a/l4/k;->H(Lcom/truecaller/messaging/data/types/Message;)I

    move-result p1

    iput p1, p0, Le/a/a5/a;->a:I

    .line 3
    new-instance p1, Ls1/c0/d;

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ls1/c0/d;-><init>(II)V

    .line 4
    iput-object p1, p0, Le/a/a5/a;->b:Ls1/c0/c;

    .line 5
    new-instance p1, Le/a/a5/a$a;

    invoke-direct {p1, p0, p2}, Le/a/a5/a$a;-><init>(Le/a/a5/a;Le/a/a/g/p;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a5/a;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    iget v1, p0, Le/a/a5/a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    .line 2
    invoke-static {p1, p2, v0, p3, p4}, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->pa(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 3
    iget-object p3, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p3}, Ls1/c0/c;->b()I

    move-result p3

    const/high16 p4, 0x14000000

    .line 4
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 6

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/a5/a;->a:I

    const/4 v1, 0x2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    const-string v3, "context"

    .line 3
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.insights.notifications.DISMISS"

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_notification_origin"

    const-string v5, "extra_smart_notification"

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_notification_id"

    .line 7
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-wide v4, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string v0, "extra_message_id"

    .line 9
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "extra_action_info"

    const-string v2, "dismiss"

    .line 10
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_smart_notif_metadata"

    .line 11
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "extra_action_type"

    const-string v0, "click"

    .line 12
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    .line 13
    invoke-static {p1, v1, v3, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;
    .locals 6

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerMetaData"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Le/a/a5/a;->a:I

    .line 2
    iget-object v2, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string v4, "context"

    .line 4
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_notification_origin"

    const-string v5, "extra_smart_notification"

    .line 6
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "notification_name"

    const-string v5, "com.truecaller.insights.notifications.PROMO_BANNER"

    .line 7
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_notification_id"

    .line 8
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_promo_banner_data"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "extra_message_id"

    .line 10
    invoke-virtual {v0, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p2}, Ls1/c0/c;->b()I

    move-result p2

    const/high16 v1, 0x14000000

    .line 12
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Landroid/content/Context;ZLcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 8

    const-string p2, "appContext"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Le/a/a5/a;->a:I

    .line 2
    iget-object v0, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 4
    invoke-virtual {p0}, Le/a/a5/a;->k()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    const-string v4, "context"

    .line 5
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "whats_this"

    const-string v5, "actionInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "extra_notification_origin"

    const-string v7, "extra_smart_notification"

    .line 7
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "notification_name"

    const-string v7, "com.truecaller.insights.notifications.SMART_NOTIFICATION_PROMO"

    .line 8
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "extra_notification_id"

    .line 9
    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_smart_notif_metadata"

    .line 10
    invoke-virtual {v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "extra_action_info"

    .line 11
    invoke-virtual {v5, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_conversation_id"

    .line 12
    invoke-virtual {v5, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "extra_action_type"

    const-string p3, "click"

    .line 13
    invoke-virtual {v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_message_id"

    .line 14
    invoke-virtual {v5, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15
    iget-object p2, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p2}, Ls1/c0/c;->b()I

    move-result p2

    const/high16 p3, 0x14000000

    .line 16
    invoke-static {p1, p2, v5, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Landroid/content/Context;ZLcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v5, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    iget v0, p0, Le/a/a5/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v5, v0, v1, v0, v2}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    if-eqz p2, :cond_0

    .line 2
    sget-object v1, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    .line 3
    iget-object v3, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    const/4 v7, 0x0

    const-string v4, "show_sms"

    move-object v2, p1

    move-object v6, p3

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->a(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/notifications/OtpAnalyticsModel;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/a5/a;->k()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object v0, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v3

    const-string p2, "message.buildUpon().conv\u2026n(conversationId).build()"

    invoke-static {v3, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    const/4 v7, 0x0

    const-string v4, "show_sms"

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->a(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/notifications/OtpAnalyticsModel;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v7, 0x0

    const-string v2, "messages"

    const-string v3, "notificationIncomingMessage"

    const-string v4, "show_sms"

    move-object v1, p1

    move-object v6, p3

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/truecaller/ui/TruecallerInit;->va(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/notifications/OtpAnalyticsModel;)Landroid/content/Intent;

    move-result-object p2

    .line 11
    iget-object p3, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p3}, Ls1/c0/c;->b()I

    move-result p3

    const/high16 v0, 0xc000000

    .line 12
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLink"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    iget v1, p0, Le/a/a5/a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prepaid_expiry"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recharge"

    goto :goto_0

    :cond_0
    const-string v1, "pay_bill"

    .line 3
    :goto_0
    invoke-static {p1, p3, v0, p2, v1}, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;->pa(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 4
    iget-object p3, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p3}, Ls1/c0/c;->b()I

    move-result p3

    const/high16 v0, 0x14000000

    .line 5
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 7

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/a5/a;->a:I

    .line 2
    sget-object v5, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    const-string v2, "messages"

    const-string v3, "notificationIncomingMessage"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/truecaller/ui/TruecallerInit;->Aa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_notification_origin"

    const-string v3, "extra_smart_notification"

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_action_info"

    const-string v3, "show_sms"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_smart_notif_metadata"

    .line 5
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "extra_otp_analytics_model"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "extra_action_type"

    const-string v2, "click"

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "extra_notification_id"

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 9
    iget-object v0, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {v0}, Ls1/c0/c;->b()I

    move-result v0

    const/high16 v1, 0xc000000

    .line 10
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Le/a/a5/a;->a:I

    .line 2
    iget-object v2, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.truecaller.insights.notifications.MARK_AS_READ"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_notification_origin"

    const-string v4, "extra_smart_notification"

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_notification_id"

    .line 7
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-wide v3, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string v5, "extra_message_id"

    .line 9
    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 10
    iget-wide v2, v2, Lcom/truecaller/messaging/data/types/Message;->b:J

    const-string v4, "extra_conversation_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "extra_action_info"

    const-string v3, "mark_as_read"

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_smart_notif_metadata"

    .line 12
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    .line 13
    invoke-static {p1, v1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public i(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionInfo"

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, p0, Le/a/a5/a;->a:I

    const-string v3, "context"

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/insights/InsightsNotificationTrampolineActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_notification_origin"

    const-string v3, "extra_smart_notification"

    .line 4
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_name"

    const-string v3, "com.truecaller.insights.notifications.DIAL"

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_notification_id"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_smart_notif_metadata"

    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "extra_number"

    .line 8
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_action_type"

    const-string p3, "click"

    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_action_info"

    .line 10
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Le/a/a5/a;->b:Ls1/c0/c;

    invoke-virtual {p2}, Ls1/c0/c;->b()I

    move-result p2

    const/high16 p3, 0x14000000

    .line 12
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public j(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Le/a/a5/a;->a:I

    .line 2
    iget-object v2, p0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.truecaller.insights.notifications.SILENT_MARK_AS_READ"

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_notification_origin"

    const-string v4, "extra_smart_notification"

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_notification_id"

    .line 7
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_message_text"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_action_info"

    const-string v3, "mark_as_read"

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_action_type"

    const-string v3, "click"

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0xc000000

    .line 11
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, "PendingIntent.getBroadca\u2026G_IMMUTABLE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Le/a/a5/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method
