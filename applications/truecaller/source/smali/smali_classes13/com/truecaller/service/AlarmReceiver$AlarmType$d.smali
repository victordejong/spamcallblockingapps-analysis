.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$d;
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
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p1}, Lcom/truecaller/service/AlarmReceiver;->b(Landroid/content/Context;)V

    .line 3
    sget-object v2, Lcom/truecaller/service/AlarmReceiver;->e:Landroid/content/pm/PackageInfo;

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long/2addr v0, v2

    const-wide v2, 0x39ef8b000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_20DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual {v0, p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
