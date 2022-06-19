.class public final Le/a/c/w/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/x;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/a0/p;

.field public final c:Le/a/c/c/f/n;

.field public final d:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/a0/p;Le/a/c/c/f/n;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/y;->b:Le/a/c/a0/p;

    iput-object p2, p0, Le/a/c/w/y;->c:Le/a/c/c/f/n;

    iput-object p3, p0, Le/a/c/w/y;->d:Le/a/c/b/j;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/w/y;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(JLs1/w/d;)Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/r/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/c/w/y$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/w/y$a;

    iget v3, v2, Le/a/c/w/y$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/w/y$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/w/y$a;

    invoke-direct {v2, v0, v1}, Le/a/c/w/y$a;-><init>(Le/a/c/w/y;Ls1/w/d;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Le/a/c/w/y$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v8, Le/a/c/w/y$a;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v10, :cond_1

    iget-object v2, v8, Le/a/c/w/y$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/w/y;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v3, v8, Le/a/c/w/y$a;->i:J

    iget-object v5, v8, Le/a/c/w/y$a;->h:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/p;

    iget-object v6, v8, Le/a/c/w/y$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/w/y;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, v6

    move-wide v6, v3

    move-object v3, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/w/y;->b:Le/a/c/a0/p;

    iput-object v0, v8, Le/a/c/w/y$a;->g:Ljava/lang/Object;

    iput-object v1, v8, Le/a/c/w/y$a;->h:Ljava/lang/Object;

    move-wide/from16 v3, p1

    iput-wide v3, v8, Le/a/c/w/y$a;->i:J

    iput v11, v8, Le/a/c/w/y$a;->e:I

    invoke-virtual {v0, v8}, Le/a/c/w/y;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    return-object v2

    :cond_4
    move-object v12, v0

    move-wide v6, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iput-object v12, v8, Le/a/c/w/y$a;->g:Ljava/lang/Object;

    iput-object v9, v8, Le/a/c/w/y$a;->h:Ljava/lang/Object;

    iput v10, v8, Le/a/c/w/y$a;->e:I

    invoke-interface/range {v3 .. v8}, Le/a/c/a0/p;->b(JJLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    return-object v2

    :cond_5
    move-object v2, v12

    .line 5
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "PrepaidExpiry"

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    const-string v8, "bill"

    .line 8
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v7}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v11

    if-eqz v5, :cond_7

    invoke-static {v7}, Le/a/c/p/a;->g0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    goto :goto_4

    :cond_7
    move v5, v11

    :goto_4
    if-eqz v5, :cond_9

    .line 10
    invoke-static {v7}, Le/a/c/p/a;->h0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 11
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v5

    if-eqz v5, :cond_8

    move v5, v11

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_9

    move v6, v11

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    .line 13
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_a
    invoke-static {v3}, Le/a/c/p/a;->r2(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v3, "$this$sortBillBasedOnDueDate"

    .line 16
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 20
    move-object v8, v7

    check-cast v8, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 21
    invoke-virtual {v8}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v8

    if-eqz v8, :cond_b

    move v8, v11

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_c

    .line 22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 23
    :cond_c
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 24
    :cond_d
    new-instance v1, Le/a/c/w/o0/a;

    invoke-direct {v1}, Le/a/c/w/o0/a;-><init>()V

    invoke-static {v3, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-static {v1, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 28
    check-cast v4, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 29
    iget-object v7, v2, Le/a/c/w/y;->a:Le/m/e/k;

    const-string v8, "$this$toMeta"

    .line 30
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v8, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 32
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillNum()Ljava/lang/String;

    move-result-object v14

    .line 34
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v15

    .line 35
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 36
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v11, 0x4

    invoke-virtual {v6, v10, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    .line 37
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_a

    :cond_e
    move-object/from16 v16, v9

    .line 38
    :goto_a
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object v17

    .line 39
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getLocation()Ljava/lang/String;

    move-result-object v18

    .line 40
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v19

    .line 41
    invoke-static {v4}, Le/a/m0/a1$k;->E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x7bcfca1e

    if-eq v11, v12, :cond_11

    const v12, -0x1f6ae2cc

    if-eq v11, v12, :cond_10

    const v12, 0x552751c9

    if-eq v11, v12, :cond_f

    goto :goto_b

    :cond_f
    const-string v11, "CreditCard"

    .line 42
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "credit_card"

    goto :goto_c

    :cond_10
    const-string v11, "PrepaidSuccess"

    .line 43
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "prepaid_success"

    goto :goto_c

    .line 44
    :cond_11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "prepaid_expiry"

    goto :goto_c

    :cond_12
    :goto_b
    const-string v6, "Bill"

    :goto_c
    move-object/from16 v20, v6

    move-object v12, v8

    .line 45
    invoke-direct/range {v12 .. v20}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7, v8}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gson.toJson(it.toMeta())"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "$this$toReminderHolder"

    .line 47
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "metaString"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_13

    const/4 v7, 0x1

    goto :goto_d

    :cond_13
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_14

    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillNum()Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :cond_14
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    :goto_e
    move-object/from16 v22, v7

    .line 49
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getSender()Ljava/lang/String;

    move-result-object v23

    .line 50
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object v7

    if-nez v7, :cond_15

    const/4 v8, 0x1

    goto :goto_f

    :cond_15
    const/4 v8, 0x0

    :goto_f
    if-nez v8, :cond_16

    goto :goto_10

    :cond_16
    move-object v7, v9

    :goto_10
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lw3/b/a/p;->j()Ljava/util/Date;

    move-result-object v7

    goto :goto_11

    :cond_17
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    :goto_11
    move-object/from16 v24, v7

    .line 51
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v7

    const-string v8, "msgDateTime.toDate()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x670

    const/16 v34, 0x0

    .line 52
    new-instance v8, Lcom/truecaller/insights/models/InsightsReminder;

    const-string v29, "BILL"

    move-object/from16 v21, v8

    move-object/from16 v25, v7

    move-object/from16 v30, v6

    invoke-direct/range {v21 .. v34}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;ZILs1/z/c/f;)V

    .line 53
    invoke-virtual {v4}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getPaymentStatus()Ljava/lang/String;

    move-result-object v4

    const-string v6, "status"

    .line 54
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v6, Le/a/c/k/a$d;->a:Le/a/c/k/a$d;

    const-string v7, "success"

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_12

    .line 56
    :cond_18
    sget-object v6, Le/a/c/k/a$c;->a:Le/a/c/k/a$c;

    const-string v7, "pending"

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_12

    .line 57
    :cond_19
    sget-object v6, Le/a/c/k/a$b;->a:Le/a/c/k/a$b;

    const-string v7, "failed"

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_12

    .line 58
    :cond_1a
    sget-object v7, Le/a/c/k/a$a;->a:Le/a/c/k/a$a;

    const-string v11, "dismissed"

    invoke-static {v4, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    move-object v6, v7

    goto :goto_12

    .line 59
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown InsightsPayStatus type: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 60
    :goto_12
    new-instance v4, Le/a/c/r/a;

    invoke-direct {v4, v8, v6}, Le/a/c/r/a;-><init>(Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/k/a;)V

    .line 61
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_1c
    return-object v3
.end method

.method public final b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/w/y$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/w/y$b;

    iget v1, v0, Le/a/c/w/y$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/y$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/y$b;

    invoke-direct {v0, p0, p1}, Le/a/c/w/y$b;-><init>(Le/a/c/w/y;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/w/y$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/y$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/w/y;->c:Le/a/c/c/f/n;

    iput v3, v0, Le/a/c/w/y$b;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/states/InsightState;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public c(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/w/y$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/w/y$c;

    iget v1, v0, Le/a/c/w/y$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/w/y$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/w/y$c;

    invoke-direct {v0, p0, p2}, Le/a/c/w/y$c;-><init>(Le/a/c/w/y;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/w/y$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/w/y$c;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    check-cast p1, Le/a/c/c/f/n;

    iget-object v2, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Date;

    iget-object v2, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/w/y;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Le/a/c/w/y$c;->i:Ljava/lang/Object;

    check-cast p1, Le/a/c/c/f/n;

    iget-object v2, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    iget-object v6, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/w/y;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v8

    goto :goto_1

    :cond_5
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/w/y;->c:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/y$c;->i:Ljava/lang/Object;

    iput v6, v0, Le/a/c/w/y$c;->e:I

    invoke-interface {p2, v0}, Le/a/c/c/f/n;->n(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p0

    :goto_1
    check-cast v2, Lcom/truecaller/insights/models/states/InsightState;

    iput-object v6, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/w/y$c;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/c/w/y$c;->e:I

    invoke-interface {p2, v2, p1, v0}, Le/a/c/c/f/n;->m(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, v6

    .line 5
    :goto_2
    iget-object p2, v2, Le/a/c/w/y;->d:Le/a/c/b/j;

    invoke-interface {p2}, Le/a/c/b/j;->S()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6
    iget-object p2, v2, Le/a/c/w/y;->c:Le/a/c/c/f/n;

    iput-object p1, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/w/y$c;->e:I

    invoke-interface {p2, v0}, Le/a/c/c/f/n;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v8

    :goto_3
    check-cast p2, Lcom/truecaller/insights/models/states/InsightState;

    iput-object v7, v0, Le/a/c/w/y$c;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/c/w/y$c;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/w/y$c;->e:I

    invoke-interface {p1, p2, v2, v0}, Le/a/c/c/f/n;->m(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 7
    :cond_9
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
