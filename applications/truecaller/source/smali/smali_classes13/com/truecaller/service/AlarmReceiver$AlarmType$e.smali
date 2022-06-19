.class public final enum Lcom/truecaller/service/AlarmReceiver$AlarmType$e;
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
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/truecaller/TrueApp;

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v0

    .line 4
    invoke-interface {v1}, Le/a/h0/m;->u()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Le/a/h0/m;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "profileAvatar"

    .line 5
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/service/AlarmReceiver;->b:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 7
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Le/a/j4/b/a/h;->z(Ljava/lang/String;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, v2}, Lcom/truecaller/service/AlarmReceiver;->a(Landroid/content/Context;Z)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
