.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$i;
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/service/AlarmReceiver$AlarmType;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Lcom/truecaller/service/AlarmReceiver$a;)V

    return-void
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1

    .line 1
    new-instance v0, Ln3/k/a/x;

    invoke-direct {v0, p1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual {p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p1}, Ln3/k/a/x;->b(I)V

    const/4 p1, 0x0

    return-object p1
.end method
