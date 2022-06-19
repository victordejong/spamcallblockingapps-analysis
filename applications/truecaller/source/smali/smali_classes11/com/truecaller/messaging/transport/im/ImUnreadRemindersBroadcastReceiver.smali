.class public final Lcom/truecaller/messaging/transport/im/ImUnreadRemindersBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/ImUnreadRemindersBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "analytics_peer"

    .line 1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, "intent.getStringExtra(EXTRA_ANALYTICS_PEER) ?: \"\""

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "analytics_unread_period"

    .line 2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v3, v4

    :cond_2
    const-string v4, "intent.getStringExtra(EX\u2026TICS_UNREAD_PERIOD) ?: \"\""

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4b6bc4da

    if-eq v5, v6, :cond_3

    const v6, -0x235284ee

    if-ne v5, v6, :cond_7

    const-string v5, "com.truecaller.maybe_later_personal"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_3
    const-string v5, "com.truecaller.maybe_later_groups"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    const-string v10, "dismiss"

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type com.truecaller.TrueApp"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/TrueApp;

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    const-string v4, "(context.applicationCont\u2026 as TrueApp).objectsGraph"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    const-string v15, "UnreadImNotification"

    const-string v4, "type"

    .line 7
    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "action"

    const-string v17, "name"

    const-string v18, "value"

    const-string v16, "peer"

    move-object v4, v9

    move-object/from16 v5, v17

    move-object v6, v10

    move-object/from16 v7, v18

    move-object v8, v14

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object v13, v2

    move-object/from16 p2, v14

    move-object/from16 v14, v18

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    .line 9
    invoke-static/range {v4 .. v16}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v13

    const-string v10, "unreadPeriod"

    move-object v5, v10

    move-object/from16 v6, v17

    move-object v7, v3

    move-object/from16 v8, v18

    move-object/from16 v9, p2

    move-object v11, v3

    move-object/from16 v12, v19

    .line 10
    invoke-static/range {v5 .. v13}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v3

    move-object/from16 v4, p2

    .line 11
    invoke-virtual {v3, v4}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v3}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0xbe30

    if-eq v1, v3, :cond_5

    const v3, 0x5e0f67f

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "group"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    new-instance v1, Ln3/k/a/x;

    invoke-direct {v1, v0}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0985

    .line 16
    invoke-virtual {v1, v2}, Ln3/k/a/x;->b(I)V

    goto :goto_2

    :cond_5
    const-string v1, "121"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v1, Ln3/k/a/x;

    invoke-direct {v1, v0}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0986

    .line 19
    invoke-virtual {v1, v2}, Ln3/k/a/x;->b(I)V

    .line 20
    :cond_6
    :goto_2
    invoke-static/range {p1 .. p1}, Le/a/p5/s0/g;->s(Landroid/content/Context;)V

    return-void

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unknown action "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in onReceive"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    return-void
.end method
