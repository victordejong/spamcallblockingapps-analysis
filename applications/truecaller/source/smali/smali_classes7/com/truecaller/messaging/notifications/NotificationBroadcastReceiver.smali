.class public Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Le/a/a/a1/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;Z",
            "Lcom/truecaller/messaging/notifications/NotificationIdentifier;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    new-array v3, p1, [Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    new-array p0, p0, [J

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Message;

    add-int/lit8 v5, v3, 0x1

    .line 7
    iget-wide v6, v4, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 8
    aput-wide v6, p0, v3

    move v3, v5

    goto :goto_1

    :cond_1
    const-string v2, "EXTRA_MESSAGE_IDS"

    .line 9
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 10
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 12
    iget-wide v3, v3, Lcom/truecaller/messaging/data/types/Message;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {p0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Lw3/c/a/a/a/a;->h([Ljava/lang/Long;)[J

    move-result-object p0

    const-string v2, "EXTRA_CONVERSATION_IDS"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_3

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/data/types/Message;

    .line 16
    iget-wide p0, p0, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string p2, "EXTRA_MESSAGE_ID"

    .line 17
    invoke-virtual {v0, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    const-string p0, "EXTRA_AUTHORIZED_ONLY"

    .line 18
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "EXTRA_NOTIFICATION_ID"

    .line 19
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "EXTRA_NOTIFICATION_CHANNEL_ID"

    .line 20
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;)Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;Z",
            "Lcom/truecaller/messaging/notifications/NotificationIdentifier;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    iget p2, p4, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->c:I

    const/high16 p3, 0xc000000

    .line 3
    invoke-static {p0, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_21

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Le/a/w1;

    invoke-interface {v2}, Le/a/w1;->s()Le/a/j2;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    const-string v4, "EXTRA_AUTHORIZED_ONLY"

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v3}, Le/a/o5/f0;->a()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Le/a/o5/f0;->Q0()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_2

    .line 6
    const-class v1, Lcom/truecaller/ui/WizardActivity;

    sget-object v2, Lcom/truecaller/wizard/framework/WizardStartContext;->NOTIFICATION:Lcom/truecaller/wizard/framework/WizardStartContext;

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Le/a/r/t/c;->Ga(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    return-void

    .line 7
    :cond_2
    invoke-interface {v2}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v3

    .line 8
    invoke-interface {v2}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v4

    .line 9
    invoke-interface {v2}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v7

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EXTRA_NOTIFICATION_ID"

    .line 11
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    .line 12
    invoke-interface {v2}, Le/a/j2;->G5()Ln3/k/a/x;

    move-result-object v10

    .line 13
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const-string v11, "com.truecaller.messaging.notifications.ERROR_DISMISSED"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "dismiss"

    const-string v13, "EXTRA_CONVERSATION_IDS"

    const-string v14, "EXTRA_MESSAGE_IDS"

    if-nez v11, :cond_1f

    const-string v11, "com.truecaller.messaging.notifications.DISMISSED"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 14
    invoke-interface {v2}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v11

    .line 15
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v16, -0x1

    const-string v5, "com.truecaller.messaging.notifications.MARK_READ"

    const-string v15, "com.truecaller.messaging.notifications.DELETE"

    const-string v6, "com.truecaller.messaging.notifications.MARK_MESSAGE_READ"

    move-object/from16 v17, v7

    sparse-switch v12, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x4

    goto :goto_2

    :sswitch_1
    const-string v12, "com.truecaller.messaging.notifications.RESEND"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x3

    goto :goto_2

    :sswitch_2
    const-string v12, "com.truecaller.messaging.notifications.QUICK_REPLY"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    :goto_1
    move/from16 v12, v16

    :goto_2
    const-string v7, "EXTRA_MESSAGE_ID"

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    if-eqz v12, :cond_14

    const/4 v5, 0x1

    if-eq v12, v5, :cond_13

    const/4 v5, 0x2

    if-eq v12, v5, :cond_e

    const/4 v6, 0x3

    if-eq v12, v6, :cond_b

    const/4 v2, 0x4

    if-eq v12, v2, :cond_9

    :cond_8
    :goto_3
    move-object/from16 v34, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object/from16 v33, v15

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_9
    const-wide/16 v11, -0x1

    .line 16
    invoke-virtual {v1, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 17
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v24

    cmp-long v1, v5, v11

    if-nez v1, :cond_a

    const-string v1, "No message id was sent."

    .line 18
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_4

    .line 19
    :cond_a
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Le/a/a/g/m;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v1, 0x0

    aput-wide v5, v2, v1

    const-string v21, "notification"

    move-object/from16 v25, v2

    invoke-interface/range {v20 .. v25}, Le/a/a/g/m;->U(Ljava/lang/String;ZZ[J[J)V

    :goto_4
    const-string v2, "markAsRead"

    .line 20
    invoke-interface {v3, v2, v5, v6, v1}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    move v2, v1

    move-object/from16 v34, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object/from16 v33, v15

    goto/16 :goto_8

    .line 21
    :cond_b
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 22
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 23
    invoke-static {v1}, Lw3/c/a/a/a/a;->f([J)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v9, :cond_c

    .line 24
    iget-object v1, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    .line 25
    iget v5, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 26
    iget-object v6, v10, Ln3/k/a/x;->b:Landroid/app/NotificationManager;

    invoke-virtual {v6, v1, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 27
    :cond_c
    invoke-static {v2}, Lw3/c/a/a/a/a;->d([J)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    .line 28
    :cond_d
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    const/4 v4, 0x0

    aget-wide v5, v2, v4

    invoke-interface {v1, v5, v6}, Le/a/a/g/m;->I(J)Le/a/r2/x;

    move-result-object v1

    new-instance v4, Le/a/a/y0/h;

    invoke-direct {v4, v11}, Le/a/a/y0/h;-><init>(Le/a/a/k/t;)V

    invoke-virtual {v1, v4}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 29
    array-length v1, v2

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget-wide v1, v2, v1

    const-string v4, "resend"

    invoke-interface {v3, v4, v1, v2}, Le/a/q2/i0;->f(Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 30
    :cond_e
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 31
    invoke-static {v4}, Lw3/c/a/a/a/a;->d([J)Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_3

    .line 32
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    const-string v7, "KEY_REPLY_TEXT"

    .line 33
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    :cond_10
    move-object v5, v6

    .line 34
    :goto_5
    invoke-static {v5}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 35
    new-instance v7, Le/a/a/a1/f;

    const/4 v11, 0x0

    aget-wide v12, v4, v11

    invoke-direct {v7, v12, v13}, Le/a/a/a1/f;-><init>(J)V

    .line 36
    const-class v4, Le/a/a/a1/f;

    invoke-static {v7, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 37
    const-class v4, Le/a/j2;

    invoke-static {v2, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 38
    new-instance v4, Le/a/a/a1/a;

    invoke-direct {v4, v7, v2, v6}, Le/a/a/a1/a;-><init>(Le/a/a/a1/f;Le/a/j2;Le/a/a/a1/a$a;)V

    .line 39
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v2

    const-string v11, "Cannot return null from a non-@Nullable component method"

    .line 40
    invoke-static {v2, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iget-object v12, v4, Le/a/a/a1/a;->d:Ljavax/inject/Provider;

    invoke-static {v12}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v24

    iget-object v12, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v12

    .line 42
    invoke-static {v12, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v13, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v13

    .line 44
    invoke-static {v13, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v6, v4, Le/a/a/a1/a;->a:Le/a/a/a1/f;

    move-object/from16 v31, v10

    iget-object v10, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v10

    .line 46
    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v32, v9

    .line 47
    iget-object v9, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 48
    invoke-static {v9, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v33, v15

    .line 49
    iget-object v15, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v15

    .line 50
    invoke-static {v15, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v6, Le/a/a/x0/a;

    move-object/from16 v34, v8

    const-string v8, "quickReply"

    invoke-direct {v6, v10, v9, v15, v8}, Le/a/a/x0/a;-><init>(Le/a/e4/p;Le/a/p5/c0;Le/a/q2/a;Ljava/lang/String;)V

    .line 53
    iget-object v8, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v8

    .line 54
    invoke-static {v8, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v9, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v9

    .line 56
    invoke-static {v9, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v4, v4, Le/a/a/a1/a;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v4

    .line 58
    invoke-static {v4, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    new-instance v10, Le/a/a/a1/e;

    move-object v11, v14

    iget-wide v14, v7, Le/a/a/a1/f;->a:J

    invoke-interface {v12}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v25

    move-object/from16 v20, v10

    move-object/from16 v21, v2

    move-wide/from16 v22, v14

    move-object/from16 v26, v13

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v4

    invoke-direct/range {v20 .. v30}, Le/a/a/a1/e;-><init>(Ls1/w/f;JLo3/a;Le/a/r2/j;Le/a/a/k/t;Le/a/a/x0/a;Le/a/q2/i0;Le/a/a/c1/d;Le/a/r2/f;)V

    .line 60
    iput-object v10, v0, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->a:Le/a/a/a1/e;

    .line 61
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 62
    invoke-static {v1}, Lw3/c/a/a/a/a;->d([J)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_8

    .line 63
    :cond_11
    iget-object v2, v0, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->a:Le/a/a/a1/e;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "text"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "messageIds"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {v4}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_6

    .line 66
    :cond_12
    iput-object v4, v2, Le/a/a/a1/e;->a:Ljava/lang/String;

    .line 67
    iput-object v1, v2, Le/a/a/a1/e;->b:[J

    .line 68
    sget-object v6, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v7, v2, Le/a/a/a1/e;->d:Ls1/w/f;

    new-instance v9, Le/a/a/a1/b;

    const/4 v4, 0x0

    invoke-direct {v9, v2, v4}, Le/a/a/a1/b;-><init>(Le/a/a/a1/e;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 69
    :goto_6
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-wide v4, v1, v2

    const-string v1, "reply"

    const/4 v2, 0x0

    invoke-interface {v3, v1, v4, v5, v2}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    goto/16 :goto_8

    :cond_13
    move-object/from16 v34, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object/from16 v33, v15

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    .line 70
    invoke-virtual {v1, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "delete"

    .line 71
    invoke-interface {v3, v1, v5, v6, v2}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    .line 72
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-interface {v1, v5, v6}, Le/a/a/g/m;->Q(J)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->g()V

    goto :goto_8

    :cond_14
    move-object/from16 v34, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object v11, v14

    move-object/from16 v33, v15

    .line 73
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 74
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 75
    invoke-static {v8}, Lw3/c/a/a/a/a;->f([J)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lw3/c/a/a/a/a;->f([J)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v2, v5, :cond_15

    .line 77
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    const-string v4, "notification"

    const/4 v5, 0x0

    invoke-interface {v2, v8, v4, v5}, Le/a/a/g/m;->M([JLjava/lang/String;Z)Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->g()V

    goto :goto_7

    .line 78
    :cond_15
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/g/m;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v5, "notification"

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Le/a/a/g/m;->U(Ljava/lang/String;ZZ[J[J)V

    .line 79
    :goto_7
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-wide v4, v1, v2

    const-string v1, "markAllAsRead"

    const/4 v2, 0x0

    invoke-interface {v3, v1, v4, v5, v2}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    .line 80
    :cond_16
    :goto_8
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_9
    move/from16 v5, v16

    goto :goto_a

    :sswitch_5
    move-object/from16 v2, v19

    move-object/from16 v1, v34

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_9

    :cond_17
    const/4 v5, 0x3

    goto :goto_a

    :sswitch_6
    move-object/from16 v2, v33

    move-object/from16 v1, v34

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_9

    :cond_18
    const/4 v5, 0x2

    goto :goto_a

    :sswitch_7
    move-object/from16 v2, v18

    move-object/from16 v1, v34

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_9

    :cond_19
    const/4 v5, 0x1

    goto :goto_a

    :sswitch_8
    move-object/from16 v1, v34

    const-string v2, "com.truecaller.messaging.notifications.CHECK_BALANCE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v5, 0x0

    :goto_a
    packed-switch v5, :pswitch_data_0

    goto :goto_b

    :pswitch_0
    if-eqz v32, :cond_1c

    move-object/from16 v9, v32

    .line 81
    iget-object v1, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    .line 82
    iget v2, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    const v3, 0x7f0a0c36

    if-ne v2, v3, :cond_1b

    if-eqz v1, :cond_1b

    .line 83
    invoke-interface/range {v17 .. v17}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/y0/q;

    invoke-static {v1}, Le/a/p5/g0;->L(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Le/a/a/y0/q;->c(Ljava/util/Collection;)V

    goto :goto_b

    :cond_1b
    move-object/from16 v4, v31

    .line 84
    iget-object v3, v4, Ln3/k/a/x;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_1c
    :goto_b
    return-void

    :cond_1d
    move-object v11, v14

    .line 85
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 86
    invoke-static {v1}, Lw3/c/a/a/a/a;->d([J)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 87
    invoke-interface {v4}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, v1}, Le/a/a/g/m;->g0([J)V

    .line 88
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-wide v4, v1, v2

    const/4 v1, 0x0

    invoke-interface {v3, v12, v4, v5, v1}, Le/a/q2/i0;->c(Ljava/lang/String;JZ)V

    :cond_1e
    return-void

    :cond_1f
    move-object v4, v10

    move-object v11, v14

    .line 89
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 90
    invoke-static {v2}, Lw3/c/a/a/a/a;->f([J)Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz v9, :cond_20

    .line 91
    iget-object v2, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->b:Ljava/lang/String;

    .line 92
    iget v5, v9, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->a:I

    .line 93
    iget-object v4, v4, Ln3/k/a/x;->b:Landroid/app/NotificationManager;

    invoke-virtual {v4, v2, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 94
    :cond_20
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 95
    invoke-static {v1}, Lw3/c/a/a/a/a;->d([J)Z

    move-result v2

    if-nez v2, :cond_21

    .line 96
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget-wide v4, v1, v2

    invoke-interface {v3, v12, v4, v5}, Le/a/q2/i0;->f(Ljava/lang/String;J)V

    :cond_21
    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xfa9fd70 -> :sswitch_4
        0x12ee6fe3 -> :sswitch_3
        0x1ba98aa0 -> :sswitch_2
        0x2ad57673 -> :sswitch_1
        0x678cede8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x40c5bed3 -> :sswitch_8
        -0xfa9fd70 -> :sswitch_7
        0x12ee6fe3 -> :sswitch_6
        0x678cede8 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
