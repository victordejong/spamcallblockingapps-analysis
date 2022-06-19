.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$g;
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
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0a0e32

    const/high16 v2, 0xc000000

    .line 2
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f120046

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120333

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public shouldShow(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Lcom/truecaller/settings/CallingSettings;->z()Lcom/truecaller/settings/CallingSettings$BlockMethod;

    move-result-object v0

    sget-object v2, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v1}, Le/a/p5/a0;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/j2;->J7()Le/a/l/a/t;

    move-result-object p1

    sget-object v0, Lcom/truecaller/premium/util/NotificationAccessSource;->NOTIFICATION_RING_SILENT:Lcom/truecaller/premium/util/NotificationAccessSource;

    invoke-interface {p1, v0}, Le/a/l/a/t;->a(Lcom/truecaller/premium/util/NotificationAccessSource;)V

    :cond_2
    return v3
.end method
