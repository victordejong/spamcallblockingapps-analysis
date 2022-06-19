.class public final Le/a/c/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/a/c/b/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x8

    new-array v1, v0, [Ls1/k;

    .line 1
    new-instance v2, Ls1/k;

    const-string v3, "Auto Debit"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    new-instance v3, Ls1/k;

    const-string v5, "autdbt"

    invoke-direct {v3, v5, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 3
    new-instance v3, Ls1/k;

    const-string v5, "Net Banking"

    invoke-direct {v3, v5, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v5, Ls1/k;

    const-string v6, "netb"

    invoke-direct {v5, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v1, v3

    .line 5
    new-instance v5, Ls1/k;

    const-string v6, "ATM Withdrawal"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    new-instance v4, Ls1/k;

    const-string v6, "withdraw"

    invoke-direct {v4, v6, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 7
    new-instance v4, Ls1/k;

    const-string v6, "IMPS"

    const-string v7, "transfer"

    invoke-direct {v4, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v6, Ls1/k;

    const-string v8, "imps"

    invoke-direct {v6, v8, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v6, v1, v4

    .line 9
    new-instance v6, Ls1/k;

    const-string v8, "NEFT"

    invoke-direct {v6, v8, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    new-instance v8, Ls1/k;

    const-string v9, "neft"

    invoke-direct {v8, v9, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v8, v1, v6

    .line 11
    new-instance v8, Ls1/k;

    const-string v9, "UPI"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    new-instance v9, Ls1/k;

    const-string v10, "upi"

    invoke-direct {v9, v10, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x5

    aput-object v9, v1, v8

    .line 13
    new-instance v9, Ls1/k;

    const-string v10, "RTGS"

    invoke-direct {v9, v10, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    new-instance v10, Ls1/k;

    const-string v11, "rtgs"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x6

    aput-object v10, v1, v9

    .line 15
    new-instance v10, Ls1/k;

    const-string v11, "Bill"

    const-string v12, "payment"

    invoke-direct {v10, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    new-instance v11, Ls1/k;

    const-string v12, "bill"

    invoke-direct {v11, v12, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x7

    aput-object v11, v1, v10

    .line 17
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Le/a/c/f/a;->b:Ljava/util/Map;

    new-array v1, v4, [Ls1/k;

    .line 18
    new-instance v11, Ls1/k;

    const-string v12, "expense"

    const-string v13, "Paid"

    invoke-direct {v11, v12, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v2

    .line 19
    new-instance v11, Ls1/k;

    const-string v12, "Transferred"

    invoke-direct {v11, v7, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v1, v3

    .line 20
    new-instance v7, Ls1/k;

    const-string v11, "income"

    const-string v12, "Received"

    invoke-direct {v7, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v5

    .line 21
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Le/a/c/f/a;->c:Ljava/util/Map;

    const/16 v1, 0xb

    new-array v1, v1, [Ls1/k;

    .line 22
    new-instance v7, Ls1/k;

    const-string v11, "acc"

    const-string v12, "Account"

    invoke-direct {v7, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, v2

    .line 23
    new-instance v2, Ls1/k;

    const-string v7, "card"

    const-string v11, "Card"

    invoke-direct {v2, v7, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    .line 24
    new-instance v2, Ls1/k;

    const-string v3, "creditcard"

    const-string v7, "Credit Card"

    invoke-direct {v2, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    .line 25
    new-instance v2, Ls1/k;

    const-string v3, "debitcard"

    const-string v5, "Debit Card"

    invoke-direct {v2, v3, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    .line 26
    new-instance v2, Ls1/k;

    const-string v3, "cheque"

    const-string v4, "Cheque"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v6

    .line 27
    new-instance v2, Ls1/k;

    const-string v3, "wallet"

    const-string v4, "Wallet"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v8

    .line 28
    new-instance v2, Ls1/k;

    const-string v3, "uan"

    invoke-direct {v2, v3, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v9

    .line 29
    new-instance v2, Ls1/k;

    const-string v3, "loan"

    const-string v4, "Loan Account"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v10

    .line 30
    new-instance v2, Ls1/k;

    const-string v3, "policy"

    const-string v4, "Policy"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0x9

    .line 31
    new-instance v2, Ls1/k;

    const-string v3, "consumer"

    const-string v4, "Consumer"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const/16 v0, 0xa

    .line 32
    new-instance v2, Ls1/k;

    const-string v3, "mobile"

    const-string v4, "Mobile"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 33
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/c/f/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Le/a/c/b/e;)V
    .locals 1

    const-string v0, "environmentHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/a;->a:Le/a/c/b/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$a;Ljava/util/List;)Le/a/c/r/b$a;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/binders/utils/BankUiProperties;",
            ">;)",
            "Le/a/c/r/b$a;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bank"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "properties"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$isFutureTrx"

    .line 1
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v3

    const-string v5, "futexpense"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v3

    const-string v5, "futincome"

    invoke-static {v3, v5, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_29

    :cond_2
    const-string v15, ""

    const-wide/16 v5, -0x1

    const-string v3, "senderId"

    .line 4
    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiTrxDetail"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "accNum"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiDate"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiTime"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiDay"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "trxCurrency"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "trxAmt"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "uiAccType"

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "uiAccDetail"

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "consolidatedTrxDetail"

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v19, v5

    move/from16 v16, v9

    move/from16 v21, v10

    move-object v5, v15

    move-object v6, v5

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v17

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/truecaller/insights/binders/utils/BankUiProperties;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    move-object/from16 p2, v4

    const-string v4, "currentDate"

    move-object/from16 v23, v15

    const-string v15, "withdraw"

    const-string v24, "Credited to card"

    move-object/from16 v25, v14

    const-string v14, "expense"

    move-object/from16 v26, v13

    const-string v13, "card"

    move-object/from16 v27, v12

    const-string v12, "creditcard"

    move-object/from16 v28, v11

    const-string v11, "income"

    move-object/from16 v29, v10

    const-string v10, "refund"

    move-object/from16 v30, v9

    const-string v9, "credit"

    move/from16 v31, v8

    const-string v8, "<set-?>"

    move-object/from16 v32, v6

    const/16 v6, 0x20

    packed-switch v22, :pswitch_data_0

    goto/16 :goto_24

    .line 6
    :pswitch_0
    iget-boolean v4, v1, Lcom/truecaller/insights/models/InsightsDomain$a;->y:Z

    move/from16 v21, v4

    goto/16 :goto_24

    .line 7
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v6

    .line 8
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 9
    invoke-virtual {v9}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v10

    invoke-virtual {v6}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v11

    invoke-static {v10, v11}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v10

    const-string v11, "Days.daysBetween(current\u2026te(), date.toLocalDate())"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v10, v10, Lw3/b/a/e0/i;->a:I

    if-nez v10, :cond_3

    const-string v4, "Today"

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    const-string v4, "Yesterday"

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v6}, Lw3/b/a/e0/a;->u()I

    move-result v10

    invoke-static {v9, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lw3/b/a/e0/a;->u()I

    move-result v4

    if-ne v10, v4, :cond_5

    invoke-virtual {v6}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v4

    const-string v6, "date.toLocalDate()"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 12
    :cond_5
    sget-object v4, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v4}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DateFormat.dd_MMM_yyyy.formatter().print(date)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_2
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    goto/16 :goto_25

    .line 14
    :pswitch_2
    sget-object v4, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v4}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v6

    invoke-virtual {v4, v6}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "DateFormat.hh_mm_aa.form\u2026).print(bank.msgDateTime)"

    invoke-static {v11, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v27

    goto/16 :goto_26

    .line 16
    :pswitch_3
    iget-wide v8, v1, Lcom/truecaller/insights/models/InsightsDomain$a;->w:J

    move-wide/from16 v19, v8

    goto/16 :goto_24

    .line 17
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->getSender()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 19
    :pswitch_5
    sget-object v4, Le/a/c/f/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v4, v23

    .line 20
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->a()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v9}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "$this$isAlphaOnly"

    .line 23
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 24
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 25
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_5
    if-eqz v10, :cond_a

    .line 26
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Wallet"

    .line 27
    invoke-static {v10, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    sget-object v11, Le/a/c/f/k/e;->a:Ljava/util/Map;

    .line 30
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_9

    move-object v9, v11

    .line 31
    :cond_9
    invoke-static {v10, v9, v6, v4}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 32
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "xx"

    .line 34
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "Locale.ENGLISH"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    move-object/from16 v4, v23

    .line 36
    :goto_6
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v4

    goto/16 :goto_24

    .line 37
    :pswitch_6
    sget-object v4, Le/a/c/f/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v4, v23

    .line 38
    :goto_7
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v4

    goto/16 :goto_24

    .line 39
    :pswitch_7
    sget-object v4, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 41
    iget-object v4, v0, Le/a/c/f/a;->a:Le/a/c/b/e;

    invoke-interface {v4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/c0/j;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 42
    invoke-static {v14, v15, v4}, Le/a/c/c0/j;->a(DLjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    const/16 v24, 0x0

    :goto_8
    if-eqz v24, :cond_10

    .line 45
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v6, 0x1

    :goto_a
    if-nez v6, :cond_11

    new-instance v6, Ls1/k;

    sget v9, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundGreen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 46
    :cond_11
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->d(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_12

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_14

    new-instance v6, Ls1/k;

    sget v9, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundGreen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 47
    :cond_14
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->c(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v6, 0x1

    :goto_e
    if-nez v6, :cond_17

    new-instance v6, Ls1/k;

    sget v9, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 48
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Ls1/k;

    sget v9, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundGreen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    .line 49
    :cond_18
    new-instance v6, Ls1/k;

    sget v9, Lcom/truecaller/insights/R$attr;->tcx_alertBackgroundOrange:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v4, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :goto_f
    iget-object v4, v6, Ls1/k;->a:Ljava/lang/Object;

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v6, v6, Ls1/k;->b:Ljava/lang/Object;

    .line 54
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v14, v4

    move/from16 v16, v6

    move-object/from16 v13, v26

    goto :goto_11

    .line 55
    :pswitch_8
    sget-object v4, Le/a/c/c0/j;->b:Le/a/c/c0/j;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Le/a/c/f/a;->a:Le/a/c/b/e;

    invoke-interface {v6}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Le/a/c/c0/j;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    goto :goto_10

    :cond_19
    move-object/from16 v4, v23

    .line 56
    :goto_10
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v4

    move-object/from16 v14, v25

    :goto_11
    move-object/from16 v10, v29

    goto/16 :goto_13

    .line 57
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v6

    .line 58
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 59
    invoke-virtual {v9}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v10

    invoke-virtual {v6}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v11

    invoke-static {v10, v11}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v10

    const-string v11, "Days.daysBetween(current\u2026), msgDate.toLocalDate())"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget v10, v10, Lw3/b/a/e0/i;->a:I

    if-nez v10, :cond_1a

    const-string v4, "Today "

    .line 61
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v9}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v9

    invoke-virtual {v9, v6}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_1a
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1b

    const-string v4, "Yesterday "

    .line 62
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v9}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v9

    invoke-virtual {v9, v6}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 63
    :cond_1b
    invoke-virtual {v6}, Lw3/b/a/e0/a;->u()I

    move-result v10

    invoke-static {v9, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lw3/b/a/e0/a;->u()I

    move-result v4

    if-ne v10, v4, :cond_1c

    invoke-virtual {v6}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v4

    const-string v6, "msgDate.toLocalDate()"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 64
    :cond_1c
    sget-object v4, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v4}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v4

    invoke-virtual {v4, v6}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DateFormat.dd_MMM_yyyy.formatter().print(msgDate)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :goto_12
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v4

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    :goto_13
    move-object/from16 v9, v30

    goto :goto_14

    .line 66
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v29

    :goto_14
    move/from16 v8, v31

    goto :goto_16

    .line 68
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v6, "transfer"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_transfer_insights:I

    goto :goto_15

    .line 69
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_cash_insights:I

    goto :goto_15

    .line 70
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "wallet"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_wallet_insights:I

    goto :goto_15

    .line 71
    :cond_1f
    sget-object v4, Le/a/c/f/k/a;->b:Le/a/c/f/k/a;

    .line 72
    sget-object v4, Le/a/c/f/k/a;->a:Ljava/util/List;

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_card_insights:I

    goto :goto_15

    .line 74
    :cond_20
    sget v4, Lcom/truecaller/insights/R$drawable;->ic_tcx_account_insights:I

    :goto_15
    move v8, v4

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v29

    move-object/from16 v9, v30

    :goto_16
    move-object/from16 v12, v27

    move-object/from16 v11, v28

    goto/16 :goto_27

    .line 75
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "Refund"

    goto :goto_17

    :cond_21
    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_23

    :cond_22
    :goto_18
    move-object v6, v4

    goto/16 :goto_23

    .line 76
    :cond_23
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    goto :goto_19

    :cond_25
    const/16 v24, 0x0

    :goto_19
    if-eqz v24, :cond_26

    move-object/from16 v6, v24

    goto/16 :goto_23

    .line 78
    :cond_26
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->d(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    goto :goto_18

    .line 79
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v6, "deduction"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "Money Deducted"

    goto :goto_1a

    :cond_28
    const/4 v4, 0x0

    :goto_1a
    if-eqz v4, :cond_29

    goto :goto_18

    .line 80
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v6, "upi"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v6, "user"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    :goto_1b
    if-eqz v4, :cond_2b

    goto/16 :goto_18

    .line 82
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v4, 0x0

    :goto_1c
    if-eqz v4, :cond_2d

    .line 83
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->b(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 84
    :cond_2d
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->c(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    goto/16 :goto_18

    .line 85
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const-string v10, "cheque"

    const-string v12, "trx"

    if-eqz v6, :cond_33

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v13, -0x4e0b37a8

    if-eq v9, v13, :cond_30

    const v13, -0x46965e57

    if-eq v9, v13, :cond_2f

    goto :goto_1d

    .line 88
    :cond_2f
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v6, "from"

    goto :goto_1e

    .line 89
    :cond_30
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v11, -0x380af4f6

    if-eq v9, v11, :cond_31

    goto :goto_1d

    .line 90
    :cond_31
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v6, "at"

    goto :goto_1e

    :cond_32
    :goto_1d
    const-string v6, "to"

    .line 91
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto/16 :goto_20

    .line 92
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    const-string v6, "debit"

    invoke-static {v4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_35

    .line 94
    sget-object v4, Le/a/c/f/a;->b:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    if-eqz v4, :cond_38

    .line 95
    iget-object v6, v4, Ls1/k;->b:Ljava/lang/Object;

    if-eqz v6, :cond_34

    const/16 v6, 0x20

    .line 96
    invoke-static {v6}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 97
    iget-object v9, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 98
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_34
    move-object/from16 v6, v23

    .line 99
    :goto_1f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 101
    check-cast v4, Ljava/lang/String;

    invoke-static {v9, v4, v6}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    :cond_35
    const-string v4, "Paid"

    goto/16 :goto_18

    .line 102
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_37

    .line 104
    sget-object v4, Le/a/c/f/a;->b:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    if-eqz v4, :cond_38

    const-string v6, "Received via "

    .line 105
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 106
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 107
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    :cond_37
    const-string v4, "Received"

    goto/16 :goto_18

    :cond_38
    move-object/from16 v6, v23

    move-object v10, v6

    .line 108
    :goto_20
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v4, 0x20

    move-object/from16 v6, v23

    goto :goto_21

    :cond_39
    const/16 v4, 0x20

    invoke-static {v4, v6}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    :goto_21
    invoke-static {v10}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3a

    move-object/from16 v4, v23

    goto :goto_22

    :cond_3a
    invoke-static {v4, v10}, Le/d/c/a/a;->I1(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    :goto_22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Le/a/c/f/a;->b(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_18

    .line 111
    :goto_23
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v12, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v9, v30

    move/from16 v8, v31

    goto :goto_28

    :goto_24
    move-object/from16 v12, v27

    :goto_25
    move-object/from16 v11, v28

    :goto_26
    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v10, v29

    move-object/from16 v9, v30

    move/from16 v8, v31

    :goto_27
    move-object/from16 v6, v32

    :goto_28
    move-object/from16 v4, p2

    move-object/from16 v15, v23

    goto/16 :goto_1

    :cond_3b
    move-object/from16 v32, v6

    move/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v11

    move-object/from16 v27, v12

    move-object/from16 v26, v13

    move-object/from16 v25, v14

    move-object/from16 v23, v15

    .line 112
    new-instance v1, Le/a/c/r/b$a;

    move-object v2, v1

    move-object v3, v5

    move-object/from16 v4, v32

    move/from16 v5, v31

    move-object/from16 v6, v30

    move-object/from16 v7, v29

    move-object/from16 v8, v28

    move-object/from16 v9, v27

    move-object/from16 v10, v26

    move-object/from16 v11, v25

    move/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-wide/from16 v16, v19

    move/from16 v18, v21

    invoke-direct/range {v2 .. v18}, Le/a/c/r/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_29
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4e0b37a8

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "expense"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x380af4f6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "withdraw"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ATM withdrawal"

    goto :goto_2

    :cond_2
    :goto_0
    const-string p1, "Paid"

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    sget-object v0, Le/a/c/f/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public final c(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bill"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Bill Payment"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Lcom/truecaller/insights/models/InsightsDomain$a;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "credit"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallet"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "income"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "refund"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "Credited to wallet"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
