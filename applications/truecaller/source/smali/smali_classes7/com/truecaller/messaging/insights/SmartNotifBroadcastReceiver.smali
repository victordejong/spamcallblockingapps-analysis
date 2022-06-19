.class public final Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;
.super Le/a/a/u0/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008B\u0010CJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R(\u0010A\u001a\u0008\u0012\u0004\u0012\u00020:098\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@\u00a8\u0006D"
    }
    d2 = {
        "Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Le/a/o5/j;",
        "g",
        "Le/a/o5/j;",
        "getAppListener",
        "()Le/a/o5/j;",
        "setAppListener",
        "(Le/a/o5/j;)V",
        "appListener",
        "Le/a/q2/i0;",
        "i",
        "Le/a/q2/i0;",
        "getMessageAnalytics",
        "()Le/a/q2/i0;",
        "setMessageAnalytics",
        "(Le/a/q2/i0;)V",
        "messageAnalytics",
        "Le/a/c/e/c;",
        "c",
        "Le/a/c/e/c;",
        "getAnalyticsManager",
        "()Le/a/c/e/c;",
        "setAnalyticsManager",
        "(Le/a/c/e/c;)V",
        "analyticsManager",
        "Le/a/c/c0/o;",
        "f",
        "Le/a/c/c0/o;",
        "getInsightConfig",
        "()Le/a/c/c0/o;",
        "setInsightConfig",
        "(Le/a/c/c0/o;)V",
        "insightConfig",
        "Ln3/k/a/x;",
        "e",
        "Ln3/k/a/x;",
        "getNotificationManager",
        "()Ln3/k/a/x;",
        "setNotificationManager",
        "(Ln3/k/a/x;)V",
        "notificationManager",
        "Le/a/c/i/l/f/a;",
        "d",
        "Le/a/c/i/l/f/a;",
        "getSmartNotificationManager",
        "()Le/a/c/i/l/f/a;",
        "setSmartNotificationManager",
        "(Le/a/c/i/l/f/a;)V",
        "smartNotificationManager",
        "Le/a/r2/f;",
        "Le/a/a/g/m;",
        "h",
        "Le/a/r2/f;",
        "getStorage",
        "()Le/a/r2/f;",
        "setStorage",
        "(Le/a/r2/f;)V",
        "storage",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public c:Le/a/c/e/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/c/i/l/f/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Ln3/k/a/x;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/c/c0/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/o5/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/q2/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/u0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p2}, Le/a/a/u0/d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz v1, :cond_1f

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    goto/16 :goto_8

    .line 2
    :cond_2
    invoke-static/range {p2 .. p2}, Le/a/a/u0/h;->b(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 3
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.truecaller.insights.notifications.MARK_AS_READ"

    const v6, 0x1c84b682

    const-string v7, "com.truecaller.insights.notifications.DISMISS"

    const v8, 0x179f59

    const-string v9, "com.truecaller.insights.notifications.SILENT_MARK_AS_READ"

    const v10, -0x24a3dfd6

    const/4 v11, 0x0

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v10, :cond_7

    if-eq v12, v8, :cond_6

    if-eq v12, v6, :cond_5

    goto :goto_3

    .line 4
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5
    :goto_2
    invoke-static/range {p2 .. p2}, Le/a/a/u0/h;->a(Landroid/content/Intent;)Le/a/c/r/d/c;

    move-result-object v2

    invoke-virtual {v2}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v2

    goto :goto_4

    :cond_8
    :goto_3
    move-object v2, v11

    :goto_4
    if-eqz v2, :cond_a

    .line 6
    iget-object v12, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->c:Le/a/c/e/c;

    if-eqz v12, :cond_9

    invoke-interface {v12, v2}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto :goto_5

    :cond_9
    const-string v1, "analyticsManager"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 7
    :cond_a
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v13, "storage"

    if-eq v12, v10, :cond_14

    const-string v9, "messageAnalytics"

    const-wide/16 v14, -0x1

    const-string v10, "extra_message_id"

    if-eq v12, v8, :cond_10

    if-eq v12, v6, :cond_c

    goto/16 :goto_6

    .line 8
    :cond_c
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 9
    invoke-virtual {v1, v10, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "extra_conversation_id"

    .line 10
    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v5, v14

    if-eqz v2, :cond_1a

    cmp-long v2, v7, v14

    if-nez v2, :cond_d

    goto/16 :goto_6

    .line 11
    :cond_d
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->h:Le/a/r2/f;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/a/g/m;

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v2, v4, [J

    aput-wide v7, v2, v3

    new-array v7, v4, [J

    aput-wide v5, v7, v3

    const-string v13, "notification"

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-interface/range {v12 .. v17}, Le/a/a/g/m;->U(Ljava/lang/String;ZZ[J[J)V

    .line 12
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->i:Le/a/q2/i0;

    if-eqz v2, :cond_e

    const-string v3, "markAsRead"

    invoke-interface {v2, v3, v5, v6, v4}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    goto/16 :goto_6

    :cond_e
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 13
    :cond_f
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 14
    :cond_10
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 15
    invoke-virtual {v1, v10, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v5, v2, v14

    if-nez v5, :cond_11

    goto :goto_6

    .line 16
    :cond_11
    iget-object v5, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->h:Le/a/r2/f;

    if-eqz v5, :cond_13

    invoke-interface {v5}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/g/m;

    invoke-interface {v5, v2, v3}, Le/a/a/g/m;->L(J)V

    .line 17
    iget-object v5, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->i:Le/a/q2/i0;

    if-eqz v5, :cond_12

    const-string v6, "dismiss"

    invoke-interface {v5, v6, v2, v3, v4}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    goto :goto_6

    :cond_12
    invoke-static {v9}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 18
    :cond_13
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    .line 19
    :cond_14
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "extra_message_text"

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    move v3, v4

    :cond_16
    if-nez v3, :cond_1a

    .line 22
    iget-object v3, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->f:Le/a/c/c0/o;

    if-eqz v3, :cond_19

    invoke-interface {v3, v2}, Le/a/c/c0/o;->e0(Ljava/lang/String;)V

    .line 23
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->g:Le/a/o5/j;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Le/a/o5/j;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 24
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->h:Le/a/r2/f;

    if-eqz v2, :cond_17

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2}, Le/a/a/g/m;->g()V

    goto :goto_6

    :cond_17
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_18
    const-string v1, "appListener"

    .line 25
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_19
    const-string v1, "insightConfig"

    .line 26
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_1a
    :goto_6
    const/4 v2, -0x1

    const-string v3, "extra_notification_id"

    .line 27
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1b

    goto :goto_7

    .line 28
    :cond_1b
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->d:Le/a/c/i/l/f/a;

    if-eqz v2, :cond_1e

    invoke-interface {v2, v1}, Le/a/c/i/l/f/a;->b(I)V

    .line 29
    iget-object v2, v0, Lcom/truecaller/messaging/insights/SmartNotifBroadcastReceiver;->e:Ln3/k/a/x;

    if-eqz v2, :cond_1d

    invoke-virtual {v2, v1}, Ln3/k/a/x;->b(I)V

    if-eqz p1, :cond_1c

    .line 30
    invoke-static/range {p1 .. p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    :cond_1c
    :goto_7
    return-void

    :cond_1d
    const-string v1, "notificationManager"

    .line 31
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_1e
    const-string v1, "smartNotificationManager"

    .line 32
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v11

    :cond_1f
    :goto_8
    return-void
.end method
