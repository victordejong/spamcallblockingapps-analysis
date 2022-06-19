.class public final Le/a/c/v/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/v/d;


# instance fields
.field public final a:Le/a/c/h/f;


# direct methods
.method public constructor <init>(Le/a/c/h/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smsIntents"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/v/e;->a:Le/a/c/h/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingAction"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.REF_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.META_JSON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.truecaller.insights.reminders.notifications.EXTRAS.CATEGORY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID"

    .line 5
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p2, p3, Le/a/c/v/h/b;->b:Le/a/c/v/h/c;

    .line 7
    instance-of p4, p2, Le/a/c/v/h/c$a;

    if-eqz p4, :cond_0

    check-cast p2, Le/a/c/v/h/c$a;

    .line 8
    iget-object p2, p2, Le/a/c/v/h/c$a;->a:Le/a/c/v/h/a;

    .line 9
    invoke-virtual {p2}, Le/a/c/v/h/a;->a()Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.truecaller.insights.reminders.notifications.EXTRAS.CONCRETE_ACTION"

    invoke-virtual {v0, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object p3, p3, Le/a/c/v/h/b;->b:Le/a/c/v/h/c;

    .line 12
    invoke-virtual {p3}, Le/a/c/v/h/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 14
    new-instance p3, Lw3/b/a/b;

    invoke-direct {p3}, Lw3/b/a/b;-><init>()V

    const-string p4, "DateTime.now()"

    .line 15
    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-wide p3, p3, Lw3/b/a/e0/e;->a:J

    long-to-int p3, p3

    const/high16 p4, 0xc000000

    .line 17
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Le/a/c/r/k/e;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingAction"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.REF_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.META_JSON"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.CATEGORY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.truecaller.insights.reminders.notifications.EXTRAS.NOTIFICATION_ID"

    .line 5
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object v1, p3, Le/a/c/v/h/b;->b:Le/a/c/v/h/c;

    .line 7
    instance-of v2, v1, Le/a/c/v/h/c$a;

    if-eqz v2, :cond_0

    check-cast v1, Le/a/c/v/h/c$a;

    .line 8
    iget-object v1, v1, Le/a/c/v/h/c$a;->a:Le/a/c/v/h/a;

    .line 9
    invoke-virtual {v1}, Le/a/c/v/h/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.CONCRETE_ACTION"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v2, v1, Le/a/c/v/h/c$b;

    if-eqz v2, :cond_1

    check-cast v1, Le/a/c/v/h/c$b;

    .line 11
    iget-object v1, v1, Le/a/c/v/h/c$b;->a:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.insights.reminders.notifications.EXTRAS.DEEPLINK_ACTION_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v1, p3, Le/a/c/v/h/b;->b:Le/a/c/v/h/c;

    .line 14
    instance-of v2, v1, Le/a/c/v/h/c$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v5, v1

    check-cast v5, Le/a/c/v/h/c$b;

    .line 15
    iget-object v5, v5, Le/a/c/v/h/c$b;->a:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    .line 16
    sget-object v6, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->ACTION_CARD:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const-string v6, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    const/high16 v7, 0xc000000

    if-eqz v5, :cond_3

    .line 17
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "truecaller://home/important"

    .line 18
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p4, 0x10000000

    .line 19
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 21
    invoke-static {p1, v4, p2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_5

    .line 22
    check-cast v1, Le/a/c/v/h/c$b;

    .line 23
    iget-object v1, v1, Le/a/c/v/h/c$b;->a:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    .line 24
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {v2}, Le/a/c/p/a;->u2(Ljava/lang/String;)Le/a/c/v/h/e;

    sget-object v2, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    .line 26
    invoke-static {p2}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 27
    sget-object v2, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->ACTION_BUTTON:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    if-ne v2, v1, :cond_4

    invoke-virtual {p2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object p2

    const-string v1, "credit_card"

    invoke-static {p2, v1, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v4

    :goto_2
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    .line 28
    iget-object p2, p0, Le/a/c/v/e;->a:Le/a/c/h/f;

    invoke-interface {p2, p1, p4, v0}, Le/a/c/h/f;->c(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 29
    invoke-static {p1, v4, p2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-class p4, Lcom/truecaller/insights/reminders/receiver/InsightsReminderActionReceiver;

    invoke-direct {p2, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    iget-object p4, p3, Le/a/c/v/h/b;->b:Le/a/c/v/h/c;

    .line 32
    invoke-virtual {p4}, Le/a/c/v/h/c;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 34
    new-instance p4, Lw3/b/a/b;

    invoke-direct {p4}, Lw3/b/a/b;-><init>()V

    const-string v0, "DateTime.now()"

    .line 35
    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-wide v0, p4, Lw3/b/a/e0/e;->a:J

    long-to-int p4, v0

    .line 37
    invoke-static {p1, p4, p2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :goto_4
    new-instance p2, Le/a/c/r/k/e;

    .line 39
    iget-object p3, p3, Le/a/c/v/h/b;->a:Ljava/lang/String;

    .line 40
    invoke-direct {p2, p3, p1}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object p2
.end method
