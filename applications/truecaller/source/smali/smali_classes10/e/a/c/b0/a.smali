.class public final Le/a/c/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;

.field public b:Le/a/c/g/t;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/g/t;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/b/j;",
            "Le/a/c/g/t;",
            "Lo3/a<",
            "Le/a/c/g/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesClassifier"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizerManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b0/a;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/b0/a;->b:Le/a/c/g/t;

    iput-object p3, p0, Le/a/c/b0/a;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/g/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Le/a/c/g/a;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/b0/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Le/a/c/b0/a$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/b0/a$a;

    iget v4, v3, Le/a/c/b0/a$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/b0/a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/b0/a$a;

    invoke-direct {v3, v0, v2}, Le/a/c/b0/a$a;-><init>(Le/a/c/b0/a;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/b0/a$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/b0/a$a;->e:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Le/a/c/b0/a$a;->h:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v3, v3, Le/a/c/b0/a$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/b0/a;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/b0/a;->a:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->D()Z

    move-result v2

    if-nez v2, :cond_3

    return-object v8

    :cond_3
    if-eqz p3, :cond_4

    move-object/from16 v2, p3

    goto :goto_1

    .line 5
    :cond_4
    iget-object v2, v0, Le/a/c/b0/a;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/g/f;

    const/4 v5, 0x2

    invoke-static {v2, v1, v8, v5, v8}, Le/a/m0/a1$k;->n(Le/a/c/g/f;Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;ILjava/lang/Object;)Le/a/c/g/a;

    move-result-object v2

    .line 6
    :goto_1
    iget-object v5, v0, Le/a/c/b0/a;->a:Le/a/c/b/j;

    invoke-interface {v5}, Le/a/c/b/j;->k()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7
    instance-of v2, v2, Le/a/c/g/a$a;

    if-eqz v2, :cond_8

    .line 8
    iget-object v2, v0, Le/a/c/b0/a;->b:Le/a/c/g/t;

    iput-object v0, v3, Le/a/c/b0/a$a;->g:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Le/a/c/b0/a$a;->h:Ljava/lang/Object;

    iput v6, v3, Le/a/c/b0/a$a;->e:I

    invoke-interface {v2, v1, v3}, Le/a/c/g/t;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v3, v0

    move-object v1, v5

    :goto_2
    check-cast v2, Le/a/c/g/s;

    if-eqz v2, :cond_6

    .line 9
    iget-object v2, v2, Le/a/c/g/s;->a:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_9

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v6

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    const-string v4, "NON IMPORTANT"

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_9

    .line 11
    new-instance v1, Le/a/c/b0/c;

    sget-object v3, Lcom/truecaller/insights/models/pdo/ClassifierType;->MODEL:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-direct {v1, v2, v3}, Le/a/c/b0/c;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    return-object v1

    :cond_8
    move-object/from16 v5, p2

    move-object v3, v0

    move-object v1, v5

    :cond_9
    if-eqz v1, :cond_1e

    .line 12
    iget-object v2, v3, Le/a/c/b0/a;->a:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->d()Z

    move-result v2

    const-string v3, "fail"

    const-string v4, "preclosure"

    const-string v5, "pending"

    const-string v6, "approved"

    const-string v9, "futincome"

    const-string v10, "cheque_status"

    const-string v11, "benef"

    const-string v12, "convert_emi"

    const-string v13, "balenq"

    const-string v14, "trx_decline"

    const-string v15, "success"

    const-string v7, "loan_status"

    const-string v8, "futexpense"

    const-string v0, "income"

    move-object/from16 p1, v14

    const-string v14, "bill_status"

    move-object/from16 p2, v13

    const-string v13, "expense"

    move-object/from16 p3, v12

    const-string v12, "notif"

    move-object/from16 v16, v11

    const-string v11, "payment_received"

    move-object/from16 v17, v10

    const-string v10, "process"

    move-object/from16 v18, v12

    const/4 v12, 0x3

    if-eqz v2, :cond_15

    const-string v2, "pdo"

    .line 13
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 14
    invoke-static {v1, v4, v2, v12}, Le/a/m0/a1$k;->s1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain;

    move-result-object v1

    .line 15
    instance-of v2, v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 17
    :cond_b
    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->Transfer:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 18
    :cond_c
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    if-eqz v0, :cond_10

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x6bf65df

    if-eq v2, v4, :cond_e

    const v4, -0x2389cd6

    if-eq v2, v4, :cond_d

    goto/16 :goto_6

    .line 20
    :cond_d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 21
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_6

    .line 22
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->TransactionDeclined:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 23
    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->TransactionProcessing:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 24
    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->TransactionPending:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 25
    :sswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->PaymentReceived:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 26
    :sswitch_4
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->TransactionSuccessful:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 27
    :cond_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 28
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_5

    .line 29
    :sswitch_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanApproved:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    :sswitch_6
    move-object/from16 v2, v19

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanClosed:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    :sswitch_7
    const-string v1, "due"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanDue:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    :sswitch_8
    const-string v1, "overdue"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanOverdue:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 33
    :cond_f
    :goto_5
    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanUpdate:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto/16 :goto_7

    .line 34
    :cond_10
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v0, :cond_11

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 35
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 36
    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->Travel:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    .line 37
    :cond_11
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$c;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->Event:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    .line 38
    :cond_12
    instance-of v0, v1, Lcom/truecaller/insights/models/InsightsDomain$d;

    if-eqz v0, :cond_13

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$d;

    .line 39
    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_6

    :sswitch_9
    move-object/from16 v1, v17

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->ChequeStatus:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    :sswitch_a
    move-object/from16 v1, v16

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->BeneficiaryCredited:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    :sswitch_b
    move-object/from16 v1, p3

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LoanUpdate:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    :sswitch_c
    move-object/from16 v1, p2

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->LowBalance:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    :sswitch_d
    move-object/from16 v1, p1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->TransactionDeclined:Lcom/truecaller/insights/models/updates/UpdateCategory;

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_14

    .line 45
    invoke-virtual {v0}, Lcom/truecaller/insights/models/updates/UpdateCategory;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    goto/16 :goto_f

    :cond_14
    const/4 v0, 0x0

    return-object v0

    :cond_15
    move-object v2, v4

    move-object/from16 v4, v16

    move-object/from16 v12, v17

    move-object/from16 v16, v8

    move-object/from16 v17, v13

    move-object/from16 v8, p1

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 p2, v9

    move-object/from16 v9, p3

    move-object/from16 p3, v21

    .line 46
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v19

    move-object/from16 v20, v2

    const-string v2, "Event"

    sparse-switch v19, :sswitch_data_3

    goto/16 :goto_d

    :sswitch_e
    const-string v2, "Notif"

    .line 47
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    .line 48
    invoke-static {v1, v2}, Le/a/m0/a1$k;->y1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$d;

    move-result-object v1

    .line 49
    sget-object v2, Le/a/c/r/m/b$w;->b:Le/a/c/r/m/b$w;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    goto :goto_9

    .line 50
    :sswitch_f
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    .line 51
    :sswitch_10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_8

    .line 52
    :sswitch_11
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Le/a/c/r/m/b$l;->b:Le/a/c/r/m/b$l;

    goto :goto_a

    .line 53
    :sswitch_12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Le/a/c/r/m/b$b;->b:Le/a/c/r/m/b$b;

    goto :goto_a

    .line 54
    :sswitch_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_8
    move-object v0, v2

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1c

    .line 55
    iget-object v0, v0, Le/a/c/r/m/b;->a:Ljava/lang/String;

    goto/16 :goto_c

    .line 56
    :sswitch_14
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v4, v2

    goto/16 :goto_e

    :sswitch_15
    const-string v0, "Bill"

    .line 57
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0}, Le/a/m0/a1$k;->j1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_b

    .line 59
    :cond_17
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    const-string v0, "Loan"

    goto :goto_c

    :sswitch_16
    const-string v0, "Bank"

    .line 60
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 61
    invoke-static {v1, v0}, Le/a/m0/a1$k;->f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_b
    const-string v0, "Transaction"

    goto :goto_c

    :cond_1b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    goto :goto_e

    :sswitch_17
    const-string v4, "Travel"

    .line 63
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Le/a/m0/a1$k;->E1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$f;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_e

    :cond_1c
    :goto_d
    const/4 v4, 0x0

    :goto_e
    move-object v0, v4

    :goto_f
    if-eqz v0, :cond_1d

    .line 65
    new-instance v1, Le/a/c/b0/c;

    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->PARSER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-direct {v1, v0, v2}, Le/a/c/b0/c;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    return-object v1

    :cond_1d
    const/4 v0, 0x0

    return-object v0

    :cond_1e
    move-object v0, v8

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_4
        -0x6a9a3006 -> :sswitch_3
        -0x28af7669 -> :sswitch_2
        -0x1272e191 -> :sswitch_1
        0x2fd71e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x410bd760 -> :sswitch_8
        0x185f4 -> :sswitch_7
        0x16182a38 -> :sswitch_6
        0x46a566b7 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x57188e8f -> :sswitch_d
        -0x533b8a45 -> :sswitch_c
        -0x40973bcb -> :sswitch_b
        0x594926c -> :sswitch_a
        0x1ad763d0 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x6a3494c6 -> :sswitch_17
        0x1f7a5c -> :sswitch_16
        0x1f9827 -> :sswitch_15
        0x403827a -> :sswitch_14
        0x47f5f10 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x57188e8f -> :sswitch_13
        -0x533b8a45 -> :sswitch_12
        -0x40973bcb -> :sswitch_11
        0x594926c -> :sswitch_10
        0x1ad763d0 -> :sswitch_f
    .end sparse-switch
.end method
