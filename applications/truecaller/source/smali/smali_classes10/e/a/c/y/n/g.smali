.class public final Le/a/c/y/n/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/y/k;


# direct methods
.method public constructor <init>(Le/a/c/y/k;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "smartCardSeedManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/y/n/g;->a:Le/a/c/y/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$g;)Le/a/c/y/l;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "domain"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/insights/models/InsightsDomain$g;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Le/a/c/p/a;->m3(Lcom/truecaller/insights/models/updates/UpdateCategory;)Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Companion:Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

    .line 4
    iget-object v2, v0, Lcom/truecaller/insights/models/InsightsDomain$g;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Lcom/truecaller/insights/smartcards/SmartCardCategory$a;->a(Ljava/lang/String;)Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_5

    .line 6
    new-instance v18, Le/a/c/y/l;

    .line 7
    iget-object v2, v0, Lcom/truecaller/insights/models/InsightsDomain$g;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/16 v4, 0xf

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateBeneficiaryCredited:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanClosed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 11
    :pswitch_2
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanOverdue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 12
    :pswitch_3
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanDue:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 13
    :pswitch_4
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateLoanApproved:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 14
    :pswitch_5
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdatePaymentReceived:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 15
    :pswitch_6
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionProcessing:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 16
    :pswitch_7
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionPending:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 17
    :pswitch_8
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionSuccess:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 18
    :pswitch_9
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionFailed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 19
    :cond_1
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionSuccess:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 20
    :cond_2
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateTransactionTransfer:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_1

    .line 21
    :cond_3
    sget-object v1, Lcom/truecaller/insights/smartcards/SmartCardStatus;->UpdateChequeStatus:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    :cond_4
    :goto_1
    move-object v4, v1

    const/4 v5, 0x0

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$g;->isIM()Z

    move-result v15

    .line 23
    invoke-virtual {v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;->getKey()Ljava/lang/String;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 24
    iget-object v6, v0, Lcom/truecaller/insights/models/InsightsDomain$g;->k:Ljava/lang/String;

    move-object/from16 v1, p0

    .line 25
    iget-object v2, v1, Le/a/c/y/n/g;->a:Le/a/c/y/k;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0xfe4

    move-object/from16 v2, v18

    .line 26
    invoke-direct/range {v2 .. v17}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    return-object v18

    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
