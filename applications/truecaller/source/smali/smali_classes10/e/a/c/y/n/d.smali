.class public final Le/a/c/y/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final a:Le/a/c/y/n/b;

.field public final b:Le/a/c/y/n/a;

.field public final c:Le/a/c/y/n/f;

.field public final d:Le/a/c/y/n/c;

.field public final e:Le/a/c/y/n/e;

.field public final f:Le/a/c/y/n/g;


# direct methods
.method public constructor <init>(Le/a/c/y/n/b;Le/a/c/y/n/a;Le/a/c/y/n/f;Le/a/c/y/n/c;Le/a/c/y/n/e;Le/a/c/y/n/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billSmartCardBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankSmartCardBinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "travelSmartCardBinder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliverySmartCardBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpSmartCardBinder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesSmartCardBinder"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/y/n/d;->a:Le/a/c/y/n/b;

    iput-object p2, p0, Le/a/c/y/n/d;->b:Le/a/c/y/n/a;

    iput-object p3, p0, Le/a/c/y/n/d;->c:Le/a/c/y/n/f;

    iput-object p4, p0, Le/a/c/y/n/d;->d:Le/a/c/y/n/c;

    iput-object p5, p0, Le/a/c/y/n/d;->e:Le/a/c/y/n/e;

    iput-object p6, p0, Le/a/c/y/n/d;->f:Le/a/c/y/n/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain;)Le/a/c/y/l;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "domain"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v3, v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const-string v4, ""

    const-string v5, "acc"

    const-string v6, "creditcard"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_20

    iget-object v3, v0, Le/a/c/y/n/d;->a:Le/a/c/y/n/b;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/a/c/y/l;

    .line 4
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_credit_card:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    move-object v13, v10

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->d(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_payment_due:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->e(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v10

    invoke-static {v10}, Le/a/c/p/a;->y1(Lw3/b/a/p;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_plan_expired_on:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v13

    invoke-static {v13}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 11
    :cond_2
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_plan_expiring_on:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v13

    invoke-static {v13}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_plan_expiring:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->f(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 14
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->bill_title_recharged:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 15
    :goto_2
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->d(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_7

    .line 16
    :cond_6
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->e(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->f(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 17
    :cond_7
    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v5, "loan"

    .line 19
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_loan_account:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ll_ins_type_loan_account)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    const-string v5, "uan"

    .line 20
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    :sswitch_2
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 21
    :goto_3
    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_account:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ng.bill_ins_type_account)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 22
    :sswitch_3
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_credit_card:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ill_ins_type_credit_card)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_4
    const-string v5, "consumer"

    .line 23
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_consumer_no:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ill_ins_type_consumer_no)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_5
    const-string v5, "policy"

    .line 24
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_policy_no:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026.bill_ins_type_policy_no)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_6
    const-string v5, "mobile"

    .line 25
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v4, Lcom/truecaller/insights/R$string;->bill_ins_type_mobile:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v10, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026ing.bill_ins_type_mobile)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :cond_8
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    move v5, v8

    goto :goto_5

    :cond_9
    move v5, v9

    :goto_5
    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    goto :goto_6

    :cond_a
    move v8, v9

    :goto_6
    if-eqz v8, :cond_d

    const/16 v5, 0x20

    .line 27
    invoke-static {v4, v5}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 28
    :cond_b
    :goto_7
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 29
    invoke-static {v4}, Le/a/c/p/a;->y1(Lw3/b/a/p;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 30
    iget-object v4, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->bill_subtitle_was_due_on:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    invoke-static {v8}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 31
    :cond_c
    iget-object v4, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->bill_subtitle_due_on:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    invoke-static {v8}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v17, v4

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    const-string v6, "resourceProvider.getStri\u2026card_action_already_paid)"

    const-string v8, "resourceProvider.getStri\u2026art_card_action_pay_bill)"

    if-eqz v5, :cond_f

    .line 34
    invoke-static {v1}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v5

    .line 35
    iget-object v10, v3, Le/a/c/y/n/b;->b:Le/a/c/j/e;

    .line 36
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v19

    .line 37
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 38
    invoke-static {v1}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v11

    double-to-float v11, v11

    .line 39
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v25, 0x10

    const/16 v26, 0x0

    move-object/from16 v18, v10

    move/from16 v21, v11

    move-object/from16 v24, v5

    .line 40
    invoke-static/range {v18 .. v26}, Le/a/m0/a1$k;->P(Le/a/c/j/e;Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/j/f;

    move-result-object v10

    check-cast v10, Le/a/c/j/f$a;

    if-eqz v10, :cond_e

    .line 41
    new-instance v11, Le/a/c/y/i$h;

    iget-object v12, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v14, Lcom/truecaller/insights/R$string;->smart_card_action_pay_bill:I

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v12, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12, v10, v5}, Le/a/c/y/i$h;-><init>(Ljava/lang/String;Le/a/c/j/f$a;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_e
    new-instance v5, Le/a/c/y/i$a;

    iget-object v8, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->smart_card_action_already_paid:I

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v10

    invoke-direct {v5, v8, v10, v11}, Le/a/c/y/i$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 43
    :cond_f
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->d(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 44
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v5

    const-string v10, "payat"

    invoke-static {v5, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    move v5, v9

    :goto_9
    if-eqz v5, :cond_11

    .line 45
    new-instance v5, Le/a/c/y/i$g;

    iget-object v10, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v11, Lcom/truecaller/insights/R$string;->smart_card_action_pay_bill:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v10, v8}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_11
    new-instance v5, Le/a/c/y/i$a;

    iget-object v8, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->smart_card_action_already_paid:I

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v10

    invoke-direct {v5, v8, v10, v11}, Le/a/c/y/i$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 47
    :cond_12
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->e(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 48
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrlType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "recharge"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_a

    :cond_13
    move v5, v9

    :goto_a
    if-eqz v5, :cond_14

    .line 49
    new-instance v5, Le/a/c/y/i$g;

    iget-object v6, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/insights/R$string;->smart_card_action_recharge:I

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v6, v8, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "resourceProvider.getStri\u2026art_card_action_recharge)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_14
    new-instance v5, Le/a/c/y/i$c;

    iget-object v6, v3, Le/a/c/y/n/b;->a:Le/a/p5/c0;

    sget v8, Lcom/truecaller/insights/R$string;->smart_card_action_already_recharged:I

    new-array v10, v9, [Ljava/lang/Object;

    invoke-interface {v6, v8, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "resourceProvider.getStri\u2026action_already_recharged)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v10

    invoke-direct {v5, v6, v10, v11}, Le/a/c/y/i$c;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_15
    :goto_b
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getActionState()Le/a/c/r/j/b;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 52
    iget v5, v5, Le/a/c/r/j/b;->d:I

    if-ne v5, v7, :cond_16

    .line 53
    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillPaid:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    :goto_c
    move-object v12, v5

    goto/16 :goto_f

    .line 54
    :cond_16
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getActionState()Le/a/c/r/j/b;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 55
    iget v5, v5, Le/a/c/r/j/b;->d:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_17

    .line 56
    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_c

    .line 57
    :cond_17
    invoke-virtual {v3, v1}, Le/a/c/y/n/b;->f(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillRecharged:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_c

    .line 58
    :cond_18
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v5

    const-string v6, "overdue"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_c

    .line 59
    :cond_19
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v5

    const-string v6, "$this$isFutureDay"

    .line 60
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v6

    invoke-static {v6, v5}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v5

    const-string v6, "Days.daysBetween(LocalDate.now(), this)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget v5, v5, Lw3/b/a/e0/i;->a:I

    if-lez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_d

    :cond_1a
    move v5, v9

    :goto_d
    if-eqz v5, :cond_1b

    goto :goto_e

    .line 63
    :cond_1b
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v5

    const-string v7, "$this$isToday"

    .line 64
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v7

    invoke-static {v7, v5}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget v5, v5, Lw3/b/a/e0/i;->a:I

    if-nez v5, :cond_1c

    const/4 v9, 0x1

    :cond_1c
    if-eqz v9, :cond_1d

    .line 67
    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillDueToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_c

    :cond_1d
    const/4 v5, 0x0

    goto :goto_c

    .line 68
    :cond_1e
    :goto_e
    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardStatus;->BillDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_c

    .line 69
    :goto_f
    sget-object v11, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bill:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v16, 0x0

    .line 70
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->isIM()Z

    move-result v23

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 71
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "Unknown"

    sparse-switch v6, :sswitch_data_1

    goto :goto_10

    :sswitch_7
    const-string v6, "CreditCard"

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "creditcard_bill"

    goto :goto_11

    .line 74
    :sswitch_8
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v24, v7

    goto :goto_12

    :sswitch_9
    const-string v6, "PrepaidSuccess"

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "prepaid_success"

    goto :goto_11

    :sswitch_a
    const-string v6, "PrepaidExpiry"

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "prepaid_expiry"

    goto :goto_11

    :cond_1f
    :goto_10
    const-string v5, "Bill"

    :goto_11
    move-object/from16 v24, v5

    :goto_12
    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 77
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 78
    iget-object v3, v3, Le/a/c/y/n/b;->d:Le/a/c/y/k;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v15

    const/16 v25, 0xda0

    move-object v10, v2

    move-object/from16 v20, v4

    .line 79
    invoke-direct/range {v10 .. v25}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    goto/16 :goto_45

    .line 80
    :cond_20
    instance-of v3, v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    const-string v8, "(this as java.lang.String).toLowerCase(locale)"

    if-eqz v3, :cond_44

    iget-object v3, v0, Le/a/c/y/n/d;->b:Le/a/c/y/n/a;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    .line 81
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$isFutureTrx"

    .line 82
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v7, "futexpense"

    const/4 v10, 0x1

    invoke-static {v2, v7, v10}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    .line 84
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v7, "futincome"

    invoke-static {v2, v7, v10}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_13

    :cond_21
    move v2, v9

    goto :goto_14

    :cond_22
    :goto_13
    const/4 v2, 0x1

    :goto_14
    if-eqz v2, :cond_23

    goto/16 :goto_46

    .line 85
    :cond_23
    new-instance v18, Le/a/c/y/l;

    .line 86
    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 87
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v10, "income"

    invoke-static {v2, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "refund"

    const-string v12, "credit"

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v9, 0x1

    :cond_24
    const-string v2, "cheque"

    const-string v13, "wallet"

    const-string v14, "card"

    const-string v15, "debit"

    if-eqz v9, :cond_25

    .line 88
    iget-object v9, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->bank_title_refund:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_18

    .line 89
    :cond_25
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    :cond_26
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_27

    const/4 v9, 0x1

    goto :goto_15

    :cond_27
    const/4 v9, 0x0

    :goto_15
    if-eqz v9, :cond_28

    .line 90
    iget-object v9, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->bank_title_credited_to_card:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_18

    .line 91
    :cond_28
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_29

    const/4 v9, 0x1

    goto :goto_16

    :cond_29
    const/4 v9, 0x0

    :goto_16
    if-eqz v9, :cond_2a

    .line 92
    iget-object v9, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->bank_title_credited_to_wallet:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_18

    .line 93
    :cond_2a
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v9

    const-string v10, "transfer"

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "bill"

    if-eqz v9, :cond_2b

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_17

    :cond_2b
    const/4 v9, 0x0

    :goto_17
    if-eqz v9, :cond_2c

    .line 94
    iget-object v9, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v10, Lcom/truecaller/insights/R$string;->bank_title_bill_payment:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_18
    move-object/from16 v16, v4

    goto/16 :goto_1c

    .line 95
    :cond_2c
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v9

    const-string v11, "upi"

    invoke-static {v9, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->c()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v4

    const-string v4, "user"

    invoke-static {v9, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    goto :goto_19

    :cond_2d
    move-object/from16 v16, v4

    :cond_2e
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_2f

    .line 96
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->d()Ljava/lang/String;

    move-result-object v9

    goto :goto_1c

    .line 97
    :cond_2f
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_30

    const/4 v4, 0x1

    goto :goto_1a

    :cond_30
    const/4 v4, 0x0

    :goto_1a
    const-string v9, "trx"

    if-eqz v4, :cond_33

    .line 98
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v10, "expense"

    invoke-static {v4, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    goto :goto_1b

    :cond_31
    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_32

    .line 99
    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v9, Lcom/truecaller/insights/R$string;->bank_title_cheque:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v4, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1c

    .line 100
    :cond_32
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1c
    move-object/from16 v19, v2

    move-object/from16 p1, v7

    move-object v0, v9

    move-object/from16 v17, v15

    goto/16 :goto_1e

    .line 101
    :cond_33
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v0, "rtgs"

    move-object/from16 p1, v7

    const-string v7, "netb"

    move-object/from16 v17, v15

    const-string v15, "neft"

    move-object/from16 v19, v2

    const-string v2, "imps"

    if-eqz v4, :cond_34

    .line 102
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_2

    goto/16 :goto_1d

    .line 103
    :sswitch_b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/insights/R$string;->bank_title_rtgs_transfer:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_c
    const/4 v0, 0x0

    .line 104
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_net_banking:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_d
    const/4 v0, 0x0

    .line 105
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_neft_transfer:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_e
    const/4 v0, 0x0

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_imps_transfer:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_f
    const/4 v0, 0x0

    .line 107
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_bill_payment:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_10
    const/4 v0, 0x0

    .line 108
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_upi_transfer:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_11
    const/4 v0, 0x0

    .line 109
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Paid:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_12
    const/4 v0, 0x0

    const-string v2, "withdraw"

    .line 110
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_atm_withdrawal:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_13
    const/4 v0, 0x0

    const-string v2, "autdbt"

    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_auto_debit:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 112
    :cond_34
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 113
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_3

    goto/16 :goto_1d

    .line 114
    :sswitch_14
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/insights/R$string;->bank_title_Received_via_rtgs:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_15
    const/4 v0, 0x0

    .line 115
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Received_via_net_banking:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_16
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Received_via_neft:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_17
    const/4 v0, 0x0

    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Received_via_imps:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_18
    const/4 v0, 0x0

    .line 118
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Received_via_upi:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :sswitch_19
    const/4 v0, 0x0

    .line 119
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/insights/R$string;->bank_title_Received:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_35
    :goto_1d
    const/4 v0, 0x0

    .line 120
    :goto_1e
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    goto :goto_1f

    :cond_36
    const/4 v2, 0x0

    :goto_1f
    if-nez v2, :cond_3b

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x1

    goto :goto_20

    :cond_37
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_38

    goto/16 :goto_21

    .line 121
    :cond_38
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "accNum"

    .line 122
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xx"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Locale.ENGLISH"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_4

    goto/16 :goto_21

    .line 125
    :sswitch_1a
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->bank_subtitle_card:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_22

    :sswitch_1b
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->bank_subtitle_account:I

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_22

    :sswitch_1c
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "debitcard"

    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v7, Lcom/truecaller/insights/R$string;->bank_subtitle_debit_card:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :sswitch_1d
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->bank_subtitle_credit_card:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-interface {v4, v6, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    .line 129
    :sswitch_1e
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 130
    sget-object v5, Le/a/c/f/k/e;->a:Ljava/util/Map;

    .line 131
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 132
    iget-object v5, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->bank_subtitle_known_wallet_name:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-interface {v5, v6, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    move-object v9, v4

    goto :goto_23

    :cond_39
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 133
    :cond_3a
    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->bank_subtitle_wallet:I

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :sswitch_1f
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, v19

    .line 134
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v3, Le/a/c/y/n/a;->a:Le/a/p5/c0;

    sget v7, Lcom/truecaller/insights/R$string;->bank_subtitle_cheque:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-interface {v4, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_3b
    :goto_21
    const/4 v2, 0x0

    :goto_22
    move-object v9, v2

    .line 135
    :goto_23
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_24

    :cond_3c
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    goto :goto_25

    .line 136
    :cond_3d
    sget-object v2, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    .line 137
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 138
    iget-object v2, v3, Le/a/c/y/n/a;->b:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/c/c0/j;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 139
    invoke-static {v4, v5, v2}, Le/a/c/c0/j;->a(DLjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :goto_25
    if-eqz v2, :cond_41

    .line 140
    sget-object v4, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Le/a/c/y/n/a;->b:Le/a/c/b/e;

    invoke-interface {v5}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Le/a/c/c0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    goto :goto_26

    :cond_3e
    move-object/from16 v4, v16

    .line 141
    :goto_26
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x509a5507

    if-eq v6, v7, :cond_40

    const v7, 0x5b094ec

    if-eq v6, v7, :cond_3f

    goto :goto_27

    :cond_3f
    move-object/from16 v6, v17

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string v5, "- "

    invoke-static {v5, v4, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_40
    move-object/from16 v6, v17

    .line 143
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string v5, "+ "

    invoke-static {v5, v4, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_41
    :goto_27
    move-object/from16 v6, v17

    :cond_42
    const/4 v2, 0x0

    :goto_28
    move-object v10, v2

    const/4 v8, 0x0

    .line 144
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget v2, Lcom/truecaller/insights/R$color;->amountRed:I

    goto :goto_29

    .line 145
    :cond_43
    sget v2, Lcom/truecaller/insights/R$color;->amountGreen:I

    .line 146
    :goto_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 147
    iget-object v6, v1, Lcom/truecaller/insights/models/InsightsDomain$a;->z:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 148
    iget-object v2, v3, Le/a/c/y/n/a;->c:Le/a/c/y/k;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x1e22

    const/4 v4, 0x0

    const-string v16, "Bank"

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object v5, v0

    .line 149
    invoke-direct/range {v2 .. v17}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    move-object/from16 v1, v18

    goto/16 :goto_47

    .line 150
    :cond_44
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$e;

    const-string v3, " "

    const/4 v4, 0x6

    if-eqz v0, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Le/a/c/y/n/d;->e:Le/a/c/y/n/e;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 151
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    .line 153
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_45

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v7

    if-nez v2, :cond_45

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 155
    :cond_45
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_46
    const/4 v2, 0x0

    :goto_2a
    move-object v9, v2

    if-eqz v9, :cond_7a

    .line 156
    new-instance v2, Le/a/c/y/l;

    .line 157
    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->OTP:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 158
    invoke-static {v1}, Le/a/m0/a1$k;->x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 159
    sget-object v3, Lcom/truecaller/insights/smartcards/SmartCardStatus;->OtpDelivery:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2b

    :cond_47
    const/4 v3, 0x0

    :goto_2b
    move-object v8, v3

    .line 160
    sget-object v18, Le/a/c/y/i$f;->b:Le/a/c/y/i$f;

    .line 161
    new-instance v3, Le/a/c/y/i$e;

    iget-object v4, v5, Le/a/c/y/n/e;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->otp_copy_otp:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v4, v6, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "resourceProvider.getString(R.string.otp_copy_otp)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Le/a/c/y/i$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 163
    iget-object v10, v1, Lcom/truecaller/insights/models/InsightsDomain$e;->k:Ljava/lang/String;

    const/16 v19, 0x0

    .line 164
    iget-object v3, v5, Le/a/c/y/n/e;->b:Le/a/c/y/k;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v11

    const/16 v21, 0x15e0

    const-string v20, "OTP"

    move-object v6, v2

    .line 165
    invoke-direct/range {v6 .. v21}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    goto/16 :goto_45

    :cond_48
    move-object/from16 v0, p0

    .line 166
    instance-of v5, v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v5, :cond_49

    iget-object v2, v0, Le/a/c/y/n/d;->c:Le/a/c/y/n/f;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    invoke-virtual {v2, v1}, Le/a/c/y/n/f;->a(Lcom/truecaller/insights/models/InsightsDomain$f;)Le/a/c/y/l;

    move-result-object v1

    goto/16 :goto_48

    .line 167
    :cond_49
    instance-of v5, v1, Lcom/truecaller/insights/models/InsightsDomain$b;

    if-eqz v5, :cond_78

    iget-object v5, v0, Le/a/c/y/n/d;->d:Le/a/c/y/n/c;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$b;

    .line 168
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v2, Le/a/c/y/l;

    .line 170
    sget-object v10, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Delivery:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 171
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v6

    const/4 v9, 0x3

    if-nez v6, :cond_4a

    goto/16 :goto_2f

    :cond_4a
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2f

    .line 172
    :pswitch_1
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v4

    if-nez v4, :cond_4b

    goto/16 :goto_2f

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v6, 0x7

    if-eq v4, v6, :cond_4e

    const/16 v6, 0x8

    if-eq v4, v6, :cond_4d

    const/16 v6, 0x9

    if-eq v4, v6, :cond_4c

    goto/16 :goto_2f

    .line 173
    :cond_4c
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPickupComplete:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_2e

    .line 174
    :cond_4d
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReturnPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_2e

    .line 175
    :cond_4e
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryExchange:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_2e

    .line 176
    :pswitch_2
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_2e

    .line 177
    :pswitch_3
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryNotDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_2e

    .line 178
    :pswitch_4
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v6

    if-nez v6, :cond_4f

    goto/16 :goto_2f

    :cond_4f
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v11, 0x5

    if-eq v6, v11, :cond_54

    if-eq v6, v4, :cond_50

    goto/16 :goto_2f

    .line 179
    :cond_50
    iget-object v4, v1, Lcom/truecaller/insights/models/InsightsDomain$b;->r:Le/a/c/r/j/b;

    if-eqz v4, :cond_51

    .line 180
    iget v4, v4, Le/a/c/r/j/b;->d:I

    .line 181
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2c

    :cond_51
    const/4 v4, 0x0

    :goto_2c
    if-nez v4, :cond_52

    goto :goto_2d

    .line 182
    :cond_52
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v11, :cond_53

    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPickupComplete:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 183
    :cond_53
    :goto_2d
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryReadyForPickup:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 184
    :cond_54
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryNotDelivered:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 185
    :pswitch_5
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v4

    if-nez v4, :cond_55

    goto :goto_2f

    :cond_55
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v6, 0x1

    if-eq v4, v6, :cond_59

    if-eq v4, v7, :cond_58

    if-eq v4, v9, :cond_57

    const/4 v6, 0x4

    if-eq v4, v6, :cond_56

    goto :goto_2f

    .line 186
    :cond_56
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryDelayInArrival:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 187
    :cond_57
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingEarly:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 188
    :cond_58
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingTomorrow:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 189
    :cond_59
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingToday:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 190
    :cond_5a
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryArrivingSoon:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 191
    :pswitch_6
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 192
    :pswitch_7
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryShipped:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 193
    :pswitch_8
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryPacked:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_2e

    .line 194
    :pswitch_9
    sget-object v4, Lcom/truecaller/insights/smartcards/SmartCardStatus;->DeliveryConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    :goto_2e
    move-object v11, v4

    goto :goto_30

    :goto_2f
    const/4 v4, 0x0

    goto :goto_2e

    .line 195
    :goto_30
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5b

    const/4 v4, 0x1

    goto :goto_31

    :cond_5b
    const/4 v4, 0x0

    :goto_31
    if-eqz v4, :cond_5c

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object v4

    :goto_32
    move-object v12, v4

    goto :goto_33

    .line 196
    :cond_5c
    iget-object v4, v5, Le/a/c/y/n/c;->b:Le/a/c/b/j;

    invoke-interface {v4}, Le/a/c/b/j;->p()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 197
    iget-object v4, v1, Lcom/truecaller/insights/models/InsightsDomain$b;->u:Ljava/lang/String;

    goto :goto_32

    :cond_5d
    const/4 v4, 0x0

    goto :goto_32

    .line 198
    :goto_33
    iget-object v4, v5, Le/a/c/y/n/c;->a:Le/a/p5/c0;

    .line 199
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->c()Lw3/b/a/b;

    move-result-object v6

    if-eqz v6, :cond_61

    invoke-virtual {v6}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v6

    .line 200
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderConfirmed:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-eq v13, v14, :cond_60

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderPacked:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-eq v13, v14, :cond_60

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/OrderStatus;->OrderShipped:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-eq v13, v14, :cond_60

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/OrderStatus;->Transit:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-eq v13, v14, :cond_60

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/OrderStatus;->Return:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne v13, v14, :cond_5e

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v13

    sget-object v15, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Exchange:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v13, v15, :cond_5e

    goto :goto_34

    .line 201
    :cond_5e
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    sget-object v15, Lcom/truecaller/insights/binders/utils/OrderStatus;->ActionRequired:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne v13, v15, :cond_5f

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v13

    sget-object v15, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v13, v15, :cond_5f

    .line 202
    sget v13, Lcom/truecaller/insights/R$string;->delivery_subtitle_pickup_by:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-interface {v4, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 203
    :cond_5f
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v13

    if-ne v13, v14, :cond_61

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v13

    sget-object v14, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Pickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v13, v14, :cond_61

    .line 204
    sget v13, Lcom/truecaller/insights/R$string;->delivery_subtitle_pickup_date:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-interface {v4, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 205
    :cond_60
    :goto_34
    sget v13, Lcom/truecaller/insights/R$string;->delivery_subtitle_delivery_date:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v6}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-interface {v4, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    :cond_61
    const/4 v4, 0x0

    :goto_35
    move-object/from16 v16, v4

    .line 206
    iget-object v4, v5, Le/a/c/y/n/c;->a:Le/a/p5/c0;

    .line 207
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_62

    const/4 v6, 0x1

    goto :goto_36

    :cond_62
    const/4 v6, 0x0

    :goto_36
    if-eqz v6, :cond_63

    move-object v6, v1

    goto :goto_37

    :cond_63
    const/4 v6, 0x0

    :goto_37
    if-eqz v6, :cond_6a

    .line 208
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->h()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    move-result-object v6

    if-nez v6, :cond_64

    goto/16 :goto_39

    :cond_64
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_69

    const/4 v13, 0x1

    if-eq v6, v13, :cond_68

    if-eq v6, v7, :cond_67

    if-eq v6, v9, :cond_66

    const/4 v7, 0x4

    if-eq v6, v7, :cond_65

    goto/16 :goto_39

    .line 209
    :cond_65
    new-instance v6, Le/a/c/y/i$g;

    sget v7, Lcom/truecaller/insights/R$string;->delivery_action_acknowledge_delivery:I

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v4, v7, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resourceProvider.getStri\u2026ion_acknowledge_delivery)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_66
    const/4 v6, 0x0

    .line 210
    new-instance v7, Le/a/c/y/i$g;

    sget v9, Lcom/truecaller/insights/R$string;->delivery_action_pickup_order:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v9, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "resourceProvider.getStri\u2026very_action_pickup_order)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_67
    const/4 v6, 0x0

    .line 211
    new-instance v7, Le/a/c/y/i$g;

    sget v9, Lcom/truecaller/insights/R$string;->delivery_action_book_delivery:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v9, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "resourceProvider.getStri\u2026ery_action_book_delivery)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_68
    const/4 v6, 0x0

    .line 212
    new-instance v7, Le/a/c/y/i$g;

    sget v9, Lcom/truecaller/insights/R$string;->delivery_action_track_order:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v9, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "resourceProvider.getStri\u2026ivery_action_track_order)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_69
    const/4 v6, 0x0

    .line 213
    new-instance v7, Le/a/c/y/i$g;

    sget v9, Lcom/truecaller/insights/R$string;->delivery_action_manage_order:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v9, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "resourceProvider.getStri\u2026very_action_manage_order)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    move-object v6, v7

    goto :goto_3a

    :cond_6a
    :goto_39
    const/4 v6, 0x0

    .line 214
    :goto_3a
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6b

    const/4 v7, 0x1

    goto :goto_3b

    :cond_6b
    const/4 v7, 0x0

    :goto_3b
    if-eqz v7, :cond_6c

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v7

    sget-object v9, Lcom/truecaller/insights/binders/utils/OrderStatus;->Transit:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne v7, v9, :cond_6c

    .line 215
    new-instance v7, Le/a/c/y/i$d;

    sget v9, Lcom/truecaller/insights/R$string;->delivery_action_contact_agent:I

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v4, v9, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "resourceProvider.getStri\u2026ery_action_contact_agent)"

    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->g()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v9, v13}, Le/a/c/y/i$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_6c
    const/4 v7, 0x0

    .line 216
    :goto_3c
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v9

    sget-object v13, Lcom/truecaller/insights/binders/utils/OrderStatus;->ActionRequired:Lcom/truecaller/insights/binders/utils/OrderStatus;

    if-ne v9, v13, :cond_6d

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v9

    sget-object v14, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->SelfPickup:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    if-ne v9, v14, :cond_6d

    .line 217
    new-instance v9, Le/a/c/y/i$b;

    sget v14, Lcom/truecaller/insights/R$string;->delivery_action_mark_as_done:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v4, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "resourceProvider.getStri\u2026very_action_mark_as_done)"

    invoke-static {v4, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getMsgId()J

    move-result-wide v14

    invoke-direct {v9, v4, v14, v15}, Le/a/c/y/i$b;-><init>(Ljava/lang/String;J)V

    goto :goto_3d

    :cond_6d
    const/4 v9, 0x0

    .line 218
    :goto_3d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_6e

    .line 219
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    if-eqz v7, :cond_6f

    .line 220
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    if-eqz v9, :cond_70

    .line 221
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_70
    invoke-static {v4}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 223
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->isIM()Z

    move-result v22

    const/4 v4, 0x2

    new-array v4, v4, [Le/a/c/y/j;

    .line 224
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 225
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_71

    const/4 v7, 0x1

    goto :goto_3e

    :cond_71
    const/4 v7, 0x0

    :goto_3e
    if-eqz v7, :cond_72

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_3f

    .line 226
    :cond_72
    new-instance v7, Le/a/c/y/j;

    iget-object v9, v5, Le/a/c/y/n/c;->a:Le/a/p5/c0;

    sget v14, Lcom/truecaller/insights/R$string;->delivery_info_location:I

    const/4 v15, 0x0

    new-array v0, v15, [Ljava/lang/Object;

    invoke-interface {v9, v14, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "resourceProvider.getStri\u2026g.delivery_info_location)"

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v6}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move v7, v15

    :goto_3f
    aput-object v6, v4, v7

    .line 227
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_73

    const/4 v6, 0x1

    goto :goto_40

    :cond_73
    move v6, v7

    :goto_40
    if-eqz v6, :cond_74

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto :goto_41

    .line 229
    :cond_74
    new-instance v6, Le/a/c/y/j;

    iget-object v9, v5, Le/a/c/y/n/c;->a:Le/a/p5/c0;

    sget v14, Lcom/truecaller/insights/R$string;->delivery_info_code:I

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v9, v14, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resourceProvider.getStri\u2026tring.delivery_info_code)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7, v0}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_41
    aput-object v6, v4, v0

    .line 230
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 231
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v0

    if-nez v0, :cond_75

    goto :goto_43

    .line 232
    :cond_75
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v0

    if-eq v0, v13, :cond_76

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/insights/binders/utils/OrderStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 233
    :cond_76
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    :goto_42
    const-string v4, "Delivery_"

    .line 234
    invoke-static {v4, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v6, "Locale.getDefault()"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_44

    :cond_77
    :goto_43
    const-string v0, "Delivery"

    :goto_44
    move-object/from16 v23, v0

    const/16 v21, 0x0

    .line 235
    sget-object v0, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    .line 236
    iget-object v0, v1, Lcom/truecaller/insights/models/InsightsDomain$b;->u:Ljava/lang/String;

    const-string v4, "$this$removeLineBreaks"

    .line 237
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\n"

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 238
    invoke-static {v0, v4, v3, v7, v6}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v13

    .line 239
    iget-object v0, v5, Le/a/c/y/n/c;->c:Le/a/c/y/k;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v14

    const/16 v24, 0x9a0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    .line 240
    invoke-direct/range {v9 .. v24}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    :goto_45
    move-object/from16 v0, p0

    move-object v1, v2

    goto :goto_48

    .line 241
    :cond_78
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$c;

    if-eqz v0, :cond_79

    goto :goto_46

    .line 242
    :cond_79
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$d;

    if-eqz v0, :cond_7b

    :cond_7a
    :goto_46
    const/4 v1, 0x0

    :goto_47
    move-object/from16 v0, p0

    goto :goto_48

    .line 243
    :cond_7b
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$g;

    if-eqz v0, :cond_7c

    move-object/from16 v0, p0

    iget-object v2, v0, Le/a/c/y/n/d;->f:Le/a/c/y/n/g;

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$g;

    invoke-virtual {v2, v1}, Le/a/c/y/n/g;->a(Lcom/truecaller/insights/models/InsightsDomain$g;)Le/a/c/y/l;

    move-result-object v1

    :goto_48
    return-object v1

    :cond_7c
    move-object/from16 v0, p0

    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fb56f5e -> :sswitch_6
        -0x3a925ace -> :sswitch_5
        -0x21d77c0a -> :sswitch_4
        -0x219bfe77 -> :sswitch_3
        0x17881 -> :sswitch_2
        0x1c362 -> :sswitch_1
        0x32c4f0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7bcfca1e -> :sswitch_a
        -0x1f6ae2cc -> :sswitch_9
        0x523e442a -> :sswitch_8
        0x552751c9 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x53d2ef0a -> :sswitch_13
        -0x380af4f6 -> :sswitch_12
        0x1c1ba -> :sswitch_11
        0x1c52e -> :sswitch_10
        0x2e2407 -> :sswitch_f
        0x316227 -> :sswitch_e
        0x3388c5 -> :sswitch_d
        0x338a65 -> :sswitch_c
        0x3592ae -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1c1ba -> :sswitch_19
        0x1c52e -> :sswitch_18
        0x316227 -> :sswitch_17
        0x3388c5 -> :sswitch_16
        0x338a65 -> :sswitch_15
        0x3592ae -> :sswitch_14
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x51270ddf -> :sswitch_1f
        -0x2f65ac07 -> :sswitch_1e
        -0x219bfe77 -> :sswitch_1d
        -0x1f8d4604 -> :sswitch_1c
        0x17881 -> :sswitch_1b
        0x2e7b10 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
