.class public final Le/a/i4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/e;


# instance fields
.field public final a:Ljava/util/Random;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/h4/n;

.field public final d:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h4/n;Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemNotificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i4/f;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/i4/f;->c:Le/a/h4/n;

    iput-object p3, p0, Le/a/i4/f;->d:Le/a/q2/a;

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Le/a/i4/f;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "channelKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {v0, p1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {v0, p1, p2}, Le/a/h4/n;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "notification"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v0, "Shown"

    .line 1
    invoke-virtual {p0, p4, v0, p5}, Le/a/i4/f;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v1, "Opened"

    invoke-virtual {p0, p4, v0, v1, p5}, Le/a/i4/f;->k(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v2, "Dismissed"

    invoke-virtual {p0, p4, v1, v2, p5}, Le/a/i4/f;->k(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p4

    .line 4
    iget-object p5, p0, Le/a/i4/f;->b:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Le/a/i4/f;->l()I

    move-result v1

    const/high16 v2, 0x14000000

    .line 6
    invoke-static {p5, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    iput-object p5, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 7
    iget-object p5, p0, Le/a/i4/f;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Le/a/i4/f;->l()I

    move-result v0

    .line 9
    invoke-static {p5, v0, p4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    iput-object p4, p3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 10
    :cond_0
    iget-object p4, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {p4, p1, p2, p3}, Le/a/h4/n;->l(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {v0}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {v0}, Le/a/h4/n;->e()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/f;->c:Le/a/h4/n;

    invoke-interface {v0, p1}, Le/a/h4/n;->f(I)V

    return-void
.end method

.method public g(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "original_pending_intent"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v0, "notification_type"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "intent.getStringExtra(EX\u2026IFICATION_TYPE) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "notification_status"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "intent.getStringExtra(EX\u2026ICATION_STATUS) ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "additional_params"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Le/a/i4/f;->m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public h(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationStatus"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, p1, p3, v0}, Le/a/i4/f;->k(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/a/i4/f;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Le/a/i4/f;->l()I

    move-result p3

    const/high16 v0, 0x14000000

    .line 4
    invoke-static {p2, p3, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026.FLAG_IMMUTABLE\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    const-string v0, "notification"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v1 .. v6}, Le/a/i4/f;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j(ILandroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    const-string v0, "notification"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-virtual/range {v1 .. v6}, Le/a/i4/f;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Le/a/i4/f;->b:Landroid/content/Context;

    const-class v2, Lcom/truecaller/notifications/AnalyticsNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification_type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "original_pending_intent"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "notification_status"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "additional_params"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/f;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x28

    .line 2
    invoke-static {p1, v0}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Status"

    .line 4
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, p2

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, ""

    .line 7
    :goto_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Le/a/i4/f;->d:Le/a/q2/a;

    .line 9
    new-instance v1, Le/a/q2/g$b$a;

    invoke-direct {v1, p1, p2, v0, p2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p1, "event.build()"

    .line 10
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
