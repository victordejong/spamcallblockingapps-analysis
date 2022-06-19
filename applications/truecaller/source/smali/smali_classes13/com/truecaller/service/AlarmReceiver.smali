.class public Lcom/truecaller/service/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/AlarmReceiver$AlarmType;
    }
.end annotation


# static fields
.field public static final a:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final b:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final c:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final d:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static e:Landroid/content/pm/PackageInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 1
    sget-object v1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_15DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v3, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_20DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v3, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_RESCHEDULE:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sget-object v6, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_UPDATE_SPAM:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v7, 0x3

    aput-object v6, v0, v7

    sget-object v8, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v9, 0x4

    aput-object v8, v0, v9

    sget-object v10, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_DISMISS_NOTIFICATION:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v11, 0x5

    aput-object v10, v0, v11

    sput-object v0, Lcom/truecaller/service/AlarmReceiver;->a:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    new-array v0, v5, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    .line 2
    sput-object v0, Lcom/truecaller/service/AlarmReceiver;->b:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    new-array v0, v11, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 3
    sget-object v1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_2DAYS_UPGRADED:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_5DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    aput-object v1, v0, v4

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    aput-object v10, v0, v9

    sput-object v0, Lcom/truecaller/service/AlarmReceiver;->c:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    new-array v0, v4, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 4
    sget-object v1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_DO_NOT_DISTURB_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/service/AlarmReceiver;->d:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 2
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/truecaller/service/AlarmReceiver;->b(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/truecaller/service/AlarmReceiver;->e:Landroid/content/pm/PackageInfo;

    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v1, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/truecaller/service/AlarmReceiver;->c:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 6
    sget-object v4, Lcom/truecaller/service/AlarmReceiver;->a:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 7
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/j4/b/a/h;->g(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_2

    .line 8
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2, v3}, Le/a/j4/b/a/h;->z(Ljava/lang/String;J)V

    const-string v8, "alarm"

    .line 9
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 10
    invoke-virtual {v7}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v9

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/truecaller/service/AlarmReceiver;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x4000000

    invoke-static {p0, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 11
    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_3
    sget-object v0, Lcom/truecaller/service/AlarmReceiver;->a:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    :cond_4
    if-eqz p1, :cond_5

    .line 14
    sget-object v4, Lcom/truecaller/service/AlarmReceiver;->d:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-static {v0, v4}, Lw3/c/a/a/a/a;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 15
    :cond_5
    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_a

    aget-object v5, v0, v1

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/a/j4/b/a/h;->g(Ljava/lang/String;)J

    move-result-wide v6

    .line 17
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-static {v8}, Le/a/j4/b/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 19
    invoke-virtual {v5}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getRecurringPeriod()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_9

    :cond_6
    if-eqz p1, :cond_7

    cmp-long v8, v6, v2

    if-gtz v8, :cond_8

    :cond_7
    cmp-long v6, v6, v2

    if-nez v6, :cond_9

    .line 20
    :cond_8
    invoke-static {p0, v5}, Lcom/truecaller/service/AlarmReceiver;->d(Landroid/content/Context;Lcom/truecaller/service/AlarmReceiver$AlarmType;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/service/AlarmReceiver;->e:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sput-object p0, Lcom/truecaller/service/AlarmReceiver;->e:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/truecaller/service/AlarmReceiver$AlarmType;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/j4/b/a/h;->g(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Le/a/j4/b/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getRecurringPeriod()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getRecurringPeriod()J

    move-result-wide v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getFirstDelay()J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    const-string v2, "alarm"

    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/service/AlarmReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v4

    const/high16 v5, 0x4000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Le/a/j4/b/a/h;->z(Ljava/lang/String;J)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/truecaller/service/AlarmReceiver$AlarmType;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Le/a/j4/b/a/h;->z(Ljava/lang/String;J)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/a/j4/b/a/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p2, p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->shouldShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getAnalyticsSubtype()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Notification must specify analytics subtype"

    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "Subtype"

    .line 8
    invoke-static {v3, v0}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v4

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v0

    invoke-interface {v4, v0}, Le/a/i4/e;->f(I)V

    const/4 v5, 0x0

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v6

    const-string v8, "notificationPeriodicPromo"

    invoke-interface/range {v4 .. v9}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getRecurringPeriod()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 13
    invoke-static {p1, p2}, Lcom/truecaller/service/AlarmReceiver;->d(Landroid/content/Context;Lcom/truecaller/service/AlarmReceiver$AlarmType;)V

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmReceiver received intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.truecaller.intent.action.PROMO_DISMISSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p2, Ln3/k/a/x;

    invoke-direct {p2, p1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object p1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result p1

    invoke-virtual {p2, p1}, Ln3/k/a/x;->b(I)V

    return-void

    :cond_0
    const-string v0, "notification_type"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->valueOf(Ljava/lang/String;)Lcom/truecaller/service/AlarmReceiver$AlarmType;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    invoke-static {}, Le/a/e/a2;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result v0

    const/high16 v2, 0xc000000

    invoke-static {v1, v0, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    const/4 v0, 0x0

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    const/16 v4, 0x15

    if-gt v3, v4, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 16
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 17
    :goto_0
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/service/AlarmReceiver;->c(Landroid/content/Context;Lcom/truecaller/service/AlarmReceiver$AlarmType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Unsupported alarm type"

    .line 19
    invoke-static {p1, p2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
