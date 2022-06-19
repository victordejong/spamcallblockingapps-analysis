.class public Lcom/truecaller/sdk/push/SdkActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "a"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/sdk/push/PushAppData;

    .line 3
    invoke-static {p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 4
    new-instance v0, Le/a/v4/b0;

    invoke-direct {v0}, Le/a/v4/b0;-><init>()V

    invoke-virtual {v0, p2}, Le/a/v4/b0;->b(Lcom/truecaller/sdk/push/PushAppData;)V

    const-string v0, "notification"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7
    invoke-static {p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    :cond_0
    const-string v0, "EventType"

    const-string v1, "NotificationRejected"

    .line 8
    invoke-static {v0, v1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 9
    iget-object v1, p2, Lcom/truecaller/sdk/push/PushAppData;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "WebRequestId"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v1, p2, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object p2, p2, Lcom/truecaller/sdk/push/PushAppData;->b:Ljava/lang/String;

    const-string v1, "PartnerName"

    .line 13
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    instance-of p2, p1, Le/a/v4/l;

    if-eqz p2, :cond_3

    .line 16
    check-cast p1, Le/a/v4/l;

    invoke-interface {p1}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object p1

    .line 17
    new-instance p2, Le/a/q2/g$b$a;

    const/4 v1, 0x0

    const-string v2, "TrueSDK_Notification"

    invoke-direct {p2, v2, v1, v0, v1}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 18
    invoke-interface {p1, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    :cond_3
    return-void
.end method
