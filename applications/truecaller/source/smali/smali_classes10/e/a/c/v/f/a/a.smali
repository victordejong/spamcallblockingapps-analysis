.class public final Le/a/c/v/f/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/v/f/a/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/p5/c0;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/v/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/c0;Lo3/a;Le/a/c/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/p5/c0;",
            "Lo3/a<",
            "Le/a/c/v/d;",
            ">;",
            "Le/a/c/e/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/v/f/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    iput-object p3, p0, Le/a/c/v/f/a/a;->c:Lo3/a;

    iput-object p4, p0, Le/a/c/v/f/a/a;->d:Le/a/c/e/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/f;Ls1/k;)Le/a/c/v/h/g;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Le/a/c/v/h/f;",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
            ">;)",
            "Le/a/c/v/h/g;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v15, ""

    const-string v0, "reminder"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCard"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 2
    iget-object v0, v1, Le/a/c/v/f/a/a;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/v/d;

    .line 3
    new-instance v14, Lw3/b/a/b;

    invoke-direct {v14}, Lw3/b/a/b;-><init>()V

    .line 4
    new-instance v5, Le/a/c/v/h/b;

    .line 5
    iget-object v6, v1, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    sget v7, Lcom/truecaller/insights/R$string;->pay_bill_reminder_action_dismiss:I

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "resourceProvider.getStri\u2026_reminder_action_dismiss)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v10, Le/a/c/v/h/c$a;

    sget-object v11, Le/a/c/v/h/a$a;->a:Le/a/c/v/h/a$a;

    invoke-direct {v10, v11}, Le/a/c/v/h/c$a;-><init>(Le/a/c/v/h/a;)V

    .line 7
    invoke-direct {v5, v6, v10}, Le/a/c/v/h/b;-><init>(Ljava/lang/String;Le/a/c/v/h/c;)V

    .line 8
    invoke-virtual/range {v18 .. v18}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    const-string v12, "creditcard"

    invoke-static {v6, v12, v10}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_2

    if-eqz v4, :cond_1

    .line 9
    iget-object v6, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v6, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCreditCardPaymentUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    new-instance v6, Le/a/c/v/h/b;

    .line 11
    iget-object v10, v1, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    sget v12, Lcom/truecaller/insights/R$string;->pay_bill_reminder_action_pay:I

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v10, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "resourceProvider.getStri\u2026bill_reminder_action_pay)"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v12, Le/a/c/v/h/c$b;

    sget-object v13, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->ACTION_BUTTON:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    invoke-direct {v12, v13}, Le/a/c/v/h/c$b;-><init>(Lcom/truecaller/insights/reminders/models/DeeplinkActionType;)V

    .line 13
    invoke-direct {v6, v10, v12}, Le/a/c/v/h/b;-><init>(Ljava/lang/String;Le/a/c/v/h/c;)V

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 14
    :goto_2
    new-instance v10, Le/a/c/v/h/b;

    .line 15
    iget-object v12, v1, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v12, v7, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v9, Le/a/c/v/h/c$a;

    invoke-direct {v9, v11}, Le/a/c/v/h/c$a;-><init>(Le/a/c/v/h/a;)V

    .line 17
    invoke-direct {v10, v7, v9}, Le/a/c/v/h/b;-><init>(Ljava/lang/String;Le/a/c/v/h/c;)V

    .line 18
    new-instance v7, Le/a/c/v/h/b;

    .line 19
    iget-object v9, v1, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    .line 20
    invoke-virtual/range {v18 .. v18}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v11

    const-string v12, "prepaid_expiry"

    invoke-static {v11, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget v11, Lcom/truecaller/insights/R$string;->pay_bill_reminder_action_recharge:I

    goto :goto_3

    .line 21
    :cond_3
    sget v11, Lcom/truecaller/insights/R$string;->pay_bill_reminder_action_pay:I

    :goto_3
    new-array v8, v8, [Ljava/lang/Object;

    .line 22
    invoke-interface {v9, v11, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "resourceProvider.getStri\u2026_action_pay\n            )"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v9, Le/a/c/v/h/c$b;

    sget-object v11, Lcom/truecaller/insights/reminders/models/DeeplinkActionType;->ACTION_CARD:Lcom/truecaller/insights/reminders/models/DeeplinkActionType;

    invoke-direct {v9, v11}, Le/a/c/v/h/c$b;-><init>(Lcom/truecaller/insights/reminders/models/DeeplinkActionType;)V

    .line 24
    invoke-direct {v7, v8, v9}, Le/a/c/v/h/b;-><init>(Ljava/lang/String;Le/a/c/v/h/c;)V

    const-string v8, "time"

    .line 25
    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-wide v8, v14, Lw3/b/a/e0/e;->a:J

    const v11, 0x186a0

    int-to-long v11, v11

    .line 27
    rem-long/2addr v8, v11

    long-to-int v12, v8

    .line 28
    iget-object v8, v1, Le/a/c/v/f/a/a;->a:Landroid/content/Context;

    invoke-interface {v0, v8, v2, v5, v12}, Le/a/c/v/d;->a(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Landroid/app/PendingIntent;

    move-result-object v35

    if-eqz v6, :cond_4

    .line 29
    iget-object v5, v1, Le/a/c/v/f/a/a;->a:Landroid/content/Context;

    invoke-interface {v0, v5, v2, v6, v12}, Le/a/c/v/d;->b(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Le/a/c/r/k/e;

    move-result-object v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v32, v5

    .line 30
    iget-object v5, v1, Le/a/c/v/f/a/a;->a:Landroid/content/Context;

    invoke-interface {v0, v5, v2, v10, v12}, Le/a/c/v/d;->b(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Le/a/c/r/k/e;

    move-result-object v33

    .line 31
    iget-object v5, v1, Le/a/c/v/f/a/a;->a:Landroid/content/Context;

    invoke-interface {v0, v5, v2, v7, v12}, Le/a/c/v/d;->b(Landroid/content/Context;Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/b;I)Le/a/c/r/k/e;

    move-result-object v34

    .line 32
    iget-object v0, v3, Le/a/c/v/h/f;->h:Le/a/c/v/h/d;

    if-eqz v4, :cond_5

    .line 33
    iget-object v5, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 34
    check-cast v5, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    :try_start_0
    const-string v6, "reminder_notification"

    .line 35
    invoke-virtual/range {v18 .. v18}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCategory()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v1, v0, v7, v5}, Le/a/c/v/f/a/a;->c(Le/a/c/v/h/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, v0, Le/a/c/v/h/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v8, v0

    goto :goto_7

    :cond_7
    move-object v8, v15

    .line 37
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_8

    const-string v10, "create"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "sms"

    .line 39
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "feature"

    .line 40
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventCategory"

    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventInfo"

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v10, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v15, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "propertyMap"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v13, v1, Le/a/c/v/f/a/a;->d:Le/a/c/e/c;

    .line 42
    new-instance v11, Le/a/c/r/d/b;

    .line 43
    new-instance v5, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c0

    const/16 v22, 0x0

    move-object/from16 v23, v5

    move-object/from16 v5, v23

    move-object/from16 v37, v11

    move-object v11, v15

    move/from16 v36, v12

    move-object/from16 v38, v13

    move-wide/from16 v12, v16

    move-object/from16 v39, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move-object/from16 v17, v22

    :try_start_2
    invoke-direct/range {v5 .. v17}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 44
    invoke-static {v0}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v6, v23

    move-object/from16 v5, v37

    .line 45
    invoke-direct {v5, v6, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, v38

    .line 46
    invoke-interface {v0, v5}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move/from16 v36, v12

    move-object/from16 v39, v14

    move-object/from16 v19, v15

    .line 47
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v36, v12

    move-object/from16 v39, v14

    move-object/from16 v19, v15

    .line 48
    :goto_8
    sget-object v5, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v6, 0x0

    .line 49
    invoke-virtual {v5, v0, v6}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v6

    .line 50
    :goto_9
    new-instance v5, Le/a/c/v/h/g;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v20

    .line 52
    sget-object v21, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    if-eqz v4, :cond_9

    .line 53
    iget-object v2, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 54
    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v2

    goto :goto_a

    :cond_9
    move-object/from16 v22, v0

    :goto_a
    move-object/from16 v2, v39

    .line 55
    iget-wide v6, v2, Lw3/b/a/e0/e;->a:J

    .line 56
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    if-eqz v4, :cond_a

    .line 57
    iget-object v2, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 58
    check-cast v2, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getIcon()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    goto :goto_b

    :cond_a
    move-object/from16 v30, v0

    .line 59
    :goto_b
    iget-object v2, v3, Le/a/c/v/h/f;->b:Ljava/lang/String;

    .line 60
    iget-object v4, v3, Le/a/c/v/h/f;->c:Ljava/lang/String;

    .line 61
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    const-string v4, " \u2022 "

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 62
    iget-object v6, v3, Le/a/c/v/h/f;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    goto :goto_c

    :cond_b
    move-object/from16 v25, v19

    .line 64
    :goto_c
    iget-object v4, v3, Le/a/c/v/h/f;->d:Ljava/lang/String;

    const/16 v27, 0x0

    .line 65
    iget-object v6, v3, Le/a/c/v/h/f;->f:Ljava/lang/String;

    .line 66
    iget-object v7, v3, Le/a/c/v/h/f;->g:Ljava/lang/Integer;

    .line 67
    sget v8, Lcom/truecaller/insights/R$attr;->tcx_textPrimary:I

    if-nez v7, :cond_c

    goto :goto_d

    :cond_c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v8, :cond_d

    .line 68
    :goto_d
    iget-object v0, v3, Le/a/c/v/h/f;->g:Ljava/lang/Integer;

    :cond_d
    move-object/from16 v29, v0

    .line 69
    invoke-virtual/range {v18 .. v18}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v7, 0x6

    const v8, -0x121b836a

    if-eq v3, v8, :cond_e

    goto :goto_e

    :cond_e
    const-string v3, "credit_card"

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Le/a/c/r/j/m;

    sget v3, Lcom/truecaller/insights/R$drawable;->ic_tcx_card_insights:I

    const/4 v8, 0x0

    invoke-direct {v0, v3, v8, v8, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    move-object/from16 v31, v0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v0, 0x0

    .line 71
    new-instance v3, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_bill_infocard:I

    invoke-direct {v3, v8, v0, v0, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    move-object/from16 v31, v3

    :goto_f
    move-object/from16 v19, v5

    move-object/from16 v24, v2

    move-object/from16 v26, v4

    move-object/from16 v28, v6

    .line 72
    invoke-direct/range {v19 .. v36}, Le/a/c/v/h/g;-><init>(Ljava/lang/String;Le/a/c/v/h/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/a/c/r/j/m;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;I)V

    return-object v5

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/truecaller/insights/models/InsightsReminder;Ls1/k;)Le/a/c/v/h/f;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Lcom/truecaller/common/payments/senderinfo/SenderInfo;",
            ">;)",
            "Le/a/c/v/h/f;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "reminder"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_12

    .line 2
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v1, :cond_0

    .line 4
    iget-object v7, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast v7, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getUiName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v1, Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 8
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v8, 0x7cf97383

    const/4 v9, 0x0

    const-string v10, "(this as java.lang.String).toLowerCase(locale)"

    const-string v11, "Locale.getDefault()"

    const/4 v12, 0x1

    const-string v13, "prepaid_expiry"

    if-eq v1, v8, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-static {v6}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->I0(Lw3/b/a/p;)Ls1/k;

    move-result-object v1

    .line 11
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_4

    .line 13
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v9

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v12

    :goto_2
    if-eqz v5, :cond_5

    const-string v5, "Plan "

    invoke-static {v5, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v5, " Plan "

    .line 14
    invoke-static {v7, v5, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v4, v12}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Bill"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v1, "Bill due"

    :goto_4
    move-object/from16 v16, v1

    .line 16
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ""

    if-eqz v1, :cond_8

    new-instance v1, Ls1/k;

    invoke-direct {v1, v5, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 17
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->S0(Lw3/b/a/p;)Ls1/k;

    move-result-object v1

    .line 18
    :goto_5
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 19
    move-object/from16 v20, v3

    check-cast v20, Ljava/lang/String;

    .line 20
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 21
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/Integer;

    .line 22
    new-instance v1, Le/a/c/v/h/f;

    .line 23
    sget v15, Lcom/truecaller/insights/R$drawable;->ic_bill:I

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v6, "creditcard"

    invoke-static {v3, v6, v12}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_6

    :cond_9
    move v3, v9

    :goto_6
    if-eqz v3, :cond_a

    const-string v3, "Credit Card "

    .line 25
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Le/a/c/v/f/a/a;->d(Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 26
    :cond_a
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    move v3, v9

    goto :goto_8

    :cond_c
    :goto_7
    move v3, v12

    :goto_8
    if-nez v3, :cond_e

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 28
    :cond_e
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v12

    if-eqz v3, :cond_f

    .line 29
    iget-object v3, v0, Le/a/c/v/f/a/a;->b:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->AccountNumber:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Le/a/c/v/f/a/a;->d(Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v3, v4, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getStri\u2026ta.maskedAccountNumber())"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    move-object/from16 v17, v3

    goto :goto_a

    :cond_f
    move-object/from16 v17, v5

    .line 30
    :goto_a
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_b

    .line 31
    :cond_10
    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    const/16 v4, 0x20b9

    invoke-static {v4, v3}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v18, v3

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v18, v5

    :goto_c
    const/16 v19, 0x0

    .line 32
    new-instance v3, Le/a/c/v/h/d;

    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getVendorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Le/a/c/v/h/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x10

    move-object v14, v1

    move-object/from16 v22, v3

    .line 33
    invoke-direct/range {v14 .. v23}, Le/a/c/v/h/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/v/h/d;I)V

    return-object v1

    :cond_12
    return-object v4
.end method

.method public final c(Le/a/c/v/h/d;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "subCategory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepaid_expiry"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "bill_prepaid"

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_3

    .line 2
    iget-object p2, p1, Le/a/c/v/h/d;->b:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 3
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v0

    :goto_1
    if-nez p2, :cond_3

    .line 4
    iget-object p1, p1, Le/a/c/v/h/d;->b:Ljava/lang/String;

    const-string p2, "mobile"

    .line 5
    invoke-static {p1, p2, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "bill_postpaid"

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const-string p1, "bill_"

    .line 6
    invoke-static {p1, p3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "bill_unknown"

    :goto_2
    return-object p1
.end method

.method public final d(Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)Ljava/lang/String;
    .locals 2

    const-string v0, "xx"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {p1, v1}, Ls1/f0/w;->o0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
