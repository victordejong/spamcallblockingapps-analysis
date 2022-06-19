.class public final Le/a/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/d0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/q2/i0;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/a;Le/a/q2/i0;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/q2/i0;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/e0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/e0;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/e0;->c:Le/a/q2/i0;

    iput-object p4, p0, Le/a/a/e0;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "args"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.truecaller.messaging.action_from_notification"

    .line 1
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reply_message"

    const-string v5, "com.truecaller.messaging.message_ids"

    const-string v6, "view_message"

    if-eqz v3, :cond_3

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x500c9393

    if-eq v7, v8, :cond_2

    const v8, 0x5323cbe

    if-eq v7, v8, :cond_1

    const v8, 0x4c4c2fb2    # 5.3526216E7f

    if-eq v7, v8, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_1
    const-string v7, "block_messages"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4
    :goto_0
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v7, v0, Le/a/a/e0;->b:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/r2/f;

    invoke-interface {v7}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/a/g/m;

    invoke-interface {v7, v3}, Le/a/a/g/m;->g0([J)V

    :cond_3
    :goto_1
    const/4 v3, -0x1

    const-string v7, "tc_notification_id"

    .line 6
    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "tc_notification_tag"

    .line 7
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "view_scheduled_message"

    const-string v10, "view_failed_message"

    const/4 v11, 0x0

    if-eq v7, v3, :cond_8

    const v3, 0x7f0a0c36

    if-ne v7, v3, :cond_4

    if-eqz v8, :cond_4

    .line 8
    iget-object v3, v0, Le/a/a/e0;->d:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/y0/q;

    invoke-static {v8}, Le/a/p5/g0;->L(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v7}, Le/a/a/y0/q;->c(Ljava/util/Collection;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 10
    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v3, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v3, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v11

    :goto_2
    if-eqz v3, :cond_7

    .line 11
    iget-object v3, v0, Le/a/a/e0;->a:Landroid/content/Context;

    .line 12
    new-instance v12, Ln3/k/a/x;

    invoke-direct {v12, v3}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v3, v12, Ln3/k/a/x;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_3

    .line 14
    :cond_7
    iget-object v3, v0, Le/a/a/e0;->a:Landroid/content/Context;

    .line 15
    new-instance v8, Ln3/k/a/x;

    invoke-direct {v8, v3}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v8, v7}, Ln3/k/a/x;->b(I)V

    .line 17
    :goto_3
    iget-object v3, v0, Le/a/a/e0;->a:Landroid/content/Context;

    invoke-static {v3}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    .line 18
    :cond_8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v7, "openConversation"

    const-string v8, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    const-string v23, "action"

    const-string v12, "type"

    const-string v25, "value"

    const-string v26, "name"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v3, "im_unread_remainder"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "analytics_peer"

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "args.getString(IM_UNREAD_REMAINDER_PEER) ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "analytics_unread_period"

    .line 22
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v3, "args.getString(IM_UNREAD\u2026MAINDER_PERIOD) ?: return"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v3, v0, Le/a/a/e0;->c:Le/a/q2/i0;

    const-string v4, "UnreadImNotification"

    .line 24
    invoke-static {v4, v12}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v18, "show"

    const-string v6, "peer"

    move-object/from16 v12, v23

    move-object/from16 v13, v26

    move-object/from16 v14, v18

    move-object/from16 v15, v25

    move-object/from16 v16, v5

    move-object/from16 v17, v23

    move-object/from16 v19, v6

    move-object/from16 v20, v26

    move-object/from16 v21, v2

    move-object/from16 v22, v25

    move-object/from16 v23, v6

    move-object/from16 v24, v2

    .line 25
    invoke-static/range {v12 .. v24}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v21

    const-string v18, "unreadPeriod"

    move-object/from16 v13, v18

    move-object/from16 v14, v26

    move-object v15, v1

    move-object/from16 v16, v25

    move-object/from16 v17, v5

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    .line 26
    invoke-static/range {v13 .. v21}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v5}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {v3, v1}, Le/a/q2/i0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto/16 :goto_6

    .line 29
    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_5

    :sswitch_2
    const-string v3, "nudge_to_send"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "is_delivered"

    .line 31
    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "deliveredNotRead"

    goto :goto_4

    :cond_9
    const-string v1, "sentNotDelivered"

    :goto_4
    move-object/from16 v18, v1

    .line 32
    iget-object v1, v0, Le/a/a/e0;->c:Le/a/q2/i0;

    const-string v2, "NudgeImStatusNotification"

    .line 33
    invoke-static {v2, v12}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v17, "messageStatus"

    const-string v24, "tap"

    move-object/from16 v12, v17

    move-object/from16 v13, v26

    move-object/from16 v14, v18

    move-object/from16 v15, v25

    move-object/from16 v16, v3

    move-object/from16 v19, v23

    move-object/from16 v20, v26

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    .line 34
    invoke-static/range {v12 .. v24}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 35
    invoke-static {v2, v4, v3, v8, v1}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    goto :goto_6

    .line 36
    :sswitch_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 37
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Le/q/f/a/d/a;->u0([J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 38
    iget-object v3, v0, Le/a/a/e0;->c:Le/a/q2/i0;

    invoke-interface {v3, v7, v1, v2}, Le/a/q2/i0;->f(Ljava/lang/String;J)V

    goto :goto_6

    .line 39
    :sswitch_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :sswitch_5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 40
    :goto_5
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Le/q/f/a/d/a;->u0([J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 41
    iget-object v3, v0, Le/a/a/e0;->c:Le/a/q2/i0;

    invoke-interface {v3, v7, v1, v2, v11}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    :cond_a
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x500c9393 -> :sswitch_5
        -0x3e09f0a5 -> :sswitch_4
        -0x25d65d21 -> :sswitch_3
        0x3a1c77a8 -> :sswitch_2
        0x4c4c2fb2 -> :sswitch_1
        0x4d2f3b50 -> :sswitch_0
    .end sparse-switch
.end method
