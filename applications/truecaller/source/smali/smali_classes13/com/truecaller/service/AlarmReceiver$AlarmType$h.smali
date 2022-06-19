.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$h;
.super Lcom/truecaller/service/AlarmReceiver$AlarmType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/service/AlarmReceiver$AlarmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/service/AlarmReceiver$AlarmType;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Lcom/truecaller/service/AlarmReceiver$a;)V

    return-void
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 8

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/truecaller/notifications/NotificationHandlerService;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    :cond_1
    if-nez v5, :cond_2

    return-object v1

    :cond_2
    const-string v0, "calls"

    const-string v2, "notification"

    .line 5
    invoke-static {p1, v0, v2}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/truecaller/premium/util/NotificationAccessSource;->NOTIFICATION_AUTO_SEARCH:Lcom/truecaller/premium/util/NotificationAccessSource;

    const v3, 0x7f120336

    invoke-static {p1, v2, v3, v0}, Lcom/truecaller/ui/NotificationAccessActivity;->sa(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const v2, 0x7f0a0e33

    const/high16 v3, 0x14000000

    .line 7
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 8
    new-instance v2, Ln3/k/a/q;

    invoke-static {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0816fb

    .line 9
    iget-object v6, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v5, v6, Landroid/app/Notification;->icon:I

    const v5, 0x7f06068b

    .line 10
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {p1, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 12
    iput v5, v2, Ln3/k/a/q;->D:I

    .line 13
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d03e8

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 14
    iget-object v6, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 15
    iput-object v0, v2, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 v0, 0x10

    .line 16
    invoke-virtual {v2, v0, v4}, Ln3/k/a/q;->p(IZ)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/service/AlarmReceiver;

    const-string v5, "com.truecaller.intent.action.PROMO_DISMISSED"

    invoke-direct {v0, v5, v1, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0a0e31

    .line 18
    invoke-static {p1, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0d03e9

    invoke-direct {v1, p1, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const p1, 0x7f0a0405

    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 21
    iput-object v1, v2, Ln3/k/a/q;->H:Landroid/widget/RemoteViews;

    .line 22
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
