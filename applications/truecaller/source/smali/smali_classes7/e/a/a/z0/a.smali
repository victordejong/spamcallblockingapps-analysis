.class public final Le/a/a/z0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/z0/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/h4/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h4/n;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/z0/a;->b:Le/a/h4/n;

    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    if-eqz p6, :cond_0

    const v1, 0x7f12041c

    goto :goto_0

    :cond_0
    const v1, 0x7f12041e

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(\n     \u2026participantName\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 2
    iget-object p5, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    const v1, 0x7f12041b

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const-string v1, "context.getString(R.stri\u2026DeliveryNotificationText)"

    goto :goto_1

    :cond_1
    iget-object v3, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    const v5, 0x7f12041d

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p5, v6, v4

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-static {p5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "conversation_id"

    .line 6
    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "message_id"

    .line 7
    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "com.truecaller.messaging.action_from_notification"

    const-string v5, "nudge_to_send"

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "is_delivered"

    .line 9
    invoke-virtual {v3, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    long-to-int v4, p3

    const/high16 v6, 0x14000000

    .line 10
    invoke-static {v1, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v3, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    const-string v7, "context"

    .line 12
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/truecaller/messaging/nudgetosend/MessageToNudgeBroadcastReceiver;

    invoke-direct {v7, v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "ACTION_DISMISS_NUDGE_MESSAGE"

    .line 14
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "extra_message_id"

    .line 15
    invoke-virtual {v7, v8, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "extra_is_delivered"

    .line 16
    invoke-virtual {v7, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-static {v3, v4, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "PendingIntent.getBroadca\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Le/a/a/z0/a;->b:Le/a/h4/n;

    invoke-interface {p2, v5}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    new-instance p6, Ln3/k/a/q;

    iget-object v3, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    invoke-direct {p6, v3, p2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p6, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 21
    invoke-virtual {p6, p5}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 22
    new-instance p2, Ln3/k/a/o;

    invoke-direct {p2}, Ln3/k/a/o;-><init>()V

    invoke-virtual {p2, p5}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {p6, p2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const p2, 0x7f080581

    .line 23
    iget-object p5, p6, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput p2, p5, Landroid/app/Notification;->icon:I

    .line 24
    iget-object p2, p0, Le/a/a/z0/a;->a:Landroid/content/Context;

    const p5, 0x7f06068b

    .line 25
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 26
    invoke-static {p2, p5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p2

    .line 27
    iput p2, p6, Ln3/k/a/q;->D:I

    const/4 p2, -0x1

    .line 28
    invoke-virtual {p6, p2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const/16 p2, 0x10

    .line 29
    invoke-virtual {p6, p2, v2}, Ln3/k/a/q;->p(IZ)V

    .line 30
    iput-object v1, p6, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 31
    iget-object p2, p6, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string p1, "NotificationCompat.Build\u2026leteIntent(dismissIntent)"

    .line 32
    invoke-static {p6, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0a0c67

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 35
    invoke-virtual {p6}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p3

    const-string p4, "builder.build()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p4, p0, Le/a/a/z0/a;->b:Le/a/h4/n;

    invoke-interface {p4, p1, p2, p3}, Le/a/h4/n;->l(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/z0/a;->b:Le/a/h4/n;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0a0c67

    invoke-interface {v0, p1, p2}, Le/a/h4/n;->b(Ljava/lang/String;I)V

    return-void
.end method
