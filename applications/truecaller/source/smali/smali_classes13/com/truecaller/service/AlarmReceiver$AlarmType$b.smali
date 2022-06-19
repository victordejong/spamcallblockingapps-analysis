.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$b;
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
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_5DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual {v0, p1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method
