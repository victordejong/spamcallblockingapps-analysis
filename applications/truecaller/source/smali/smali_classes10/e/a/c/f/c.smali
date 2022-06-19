.class public final Le/a/c/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;

.field public final b:Le/a/c/a/i/e;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Le/a/c/a/i/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiResFetcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/c;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/f/c;->b:Le/a/c/a/i/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$b;Ljava/util/List;)Le/a/c/r/b$c;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$b;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;",
            ">;)",
            "Le/a/c/r/b$c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "domain"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "properties"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v4, v0, Le/a/c/f/c;->a:Le/a/c/b/j;

    invoke-interface {v4}, Le/a/c/b/j;->Q()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v6, 0x4

    const-string v7, "senderId"

    .line 2
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v15, v5

    move/from16 v17, v12

    move-object/from16 v18, v13

    move-wide v13, v7

    move-object v12, v11

    move-object v7, v15

    move v8, v6

    move-object v11, v10

    move-object v6, v7

    move-object v10, v9

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    .line 4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const-string v9, "value"

    packed-switch v16, :pswitch_data_0

    :goto_1
    move-object/from16 v19, v3

    goto/16 :goto_a

    .line 5
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, v1}, Lcom/truecaller/insights/binders/utils/OrderStatus;->uiSubTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    move-object/from16 v19, v3

    move-object v12, v8

    goto/16 :goto_a

    .line 6
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v1}, Lcom/truecaller/insights/binders/utils/OrderStatus;->uiTitle(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v19, v3

    move-object v11, v8

    goto/16 :goto_a

    .line 7
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->h()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 8
    new-instance v9, Le/a/c/r/j/a$e;

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->h()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v19, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_6

    const-string v3, "Acknowledge Delivery"

    goto :goto_2

    :cond_2
    const-string v3, "Pickup Order"

    goto :goto_2

    :cond_3
    const-string v3, "Book Delivery"

    goto :goto_2

    :cond_4
    const-string v3, "Track Order"

    goto :goto_2

    :cond_5
    const-string v3, "Manage Order"

    .line 10
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-direct {v9, v3, v4}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v9

    goto/16 :goto_a

    .line 12
    :cond_6
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_7
    move-object/from16 v19, v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_9

    .line 14
    new-instance v3, Le/a/c/r/j/a$b;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->g()Ljava/lang/String;

    move-result-object v4

    const-string v8, "Contact Agent"

    invoke-direct {v3, v8, v4}, Le/a/c/r/j/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v18, v3

    goto/16 :goto_a

    :pswitch_3
    move-object/from16 v19, v3

    .line 15
    sget-object v3, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    invoke-static/range {p1 .. p1}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_a

    :pswitch_4
    move-object/from16 v19, v3

    .line 16
    iget-boolean v3, v1, Lcom/truecaller/insights/models/InsightsDomain$b;->t:Z

    move/from16 v17, v3

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v19, v3

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->d()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    move-object v6, v3

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v19, v3

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Lcom/truecaller/insights/binders/utils/OrderStatus;->uiOrderStatus(Lcom/truecaller/insights/models/InsightsDomain$b;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_a

    :pswitch_7
    move-object/from16 v19, v3

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->e()Lcom/truecaller/insights/binders/utils/OrderStatus;

    move-result-object v3

    const/4 v4, 0x6

    if-nez v3, :cond_d

    goto/16 :goto_8

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_8
    goto/16 :goto_8

    .line 21
    :pswitch_9
    new-instance v3, Le/a/c/r/j/m;

    .line 22
    iget-object v4, v0, Le/a/c/f/c;->b:Le/a/c/a/i/e;

    .line 23
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget v4, Lcom/truecaller/insights/ui/R$drawable;->ic_yes_tick:I

    .line 25
    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->c:Ls1/k;

    .line 26
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 27
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 28
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 29
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 30
    invoke-direct {v3, v4, v10, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto/16 :goto_9

    .line 31
    :pswitch_a
    sget-object v3, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->f()Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_7

    .line 32
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v8, 0x5

    if-eq v3, v8, :cond_10

    if-eq v3, v4, :cond_f

    .line 33
    :goto_7
    new-instance v3, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_tcx_delivery:I

    const/4 v10, 0x0

    invoke-direct {v3, v8, v10, v10, v4}, Le/a/c/r/j/m;-><init>(IIII)V

    goto/16 :goto_9

    .line 34
    :cond_f
    new-instance v3, Le/a/c/r/j/m;

    .line 35
    sget v4, Lcom/truecaller/insights/R$drawable;->ic_insights_delivery_truck:I

    .line 36
    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b:Ls1/k;

    .line 37
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 38
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 39
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 40
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 41
    invoke-direct {v3, v4, v10, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto :goto_9

    .line 42
    :cond_10
    new-instance v3, Le/a/c/r/j/m;

    .line 43
    sget v4, Lcom/truecaller/insights/R$drawable;->ic_insights_delivery_truck:I

    .line 44
    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->a:Ls1/k;

    .line 45
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 46
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 47
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 48
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 49
    invoke-direct {v3, v4, v10, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto :goto_9

    .line 50
    :pswitch_b
    new-instance v3, Le/a/c/r/j/m;

    .line 51
    iget-object v4, v0, Le/a/c/f/c;->b:Le/a/c/a/i/e;

    .line 52
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget v4, Lcom/truecaller/insights/ui/R$drawable;->ic_no_tick:I

    .line 54
    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->a:Ls1/k;

    .line 55
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 56
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 57
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 58
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 59
    invoke-direct {v3, v4, v10, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto :goto_9

    .line 60
    :pswitch_c
    new-instance v3, Le/a/c/r/j/m;

    .line 61
    sget v4, Lcom/truecaller/insights/R$drawable;->ic_insights_delivery_truck:I

    .line 62
    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    sget-object v8, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->b:Ls1/k;

    .line 63
    iget-object v10, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 64
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 65
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 66
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 67
    invoke-direct {v3, v4, v10, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto :goto_9

    .line 68
    :pswitch_d
    new-instance v3, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_tcx_delivery:I

    const/4 v10, 0x0

    invoke-direct {v3, v8, v10, v10, v4}, Le/a/c/r/j/m;-><init>(IIII)V

    goto :goto_9

    :goto_8
    const/4 v3, 0x0

    .line 69
    new-instance v8, Le/a/c/r/j/m;

    sget v10, Lcom/truecaller/insights/R$drawable;->ic_tcx_delivery:I

    invoke-direct {v8, v10, v3, v3, v4}, Le/a/c/r/j/m;-><init>(IIII)V

    move-object v3, v8

    .line 70
    :goto_9
    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_a

    :pswitch_e
    move-object/from16 v19, v3

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getSender()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v3

    goto :goto_a

    :pswitch_f
    move-object/from16 v19, v3

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$b;->getMsgId()J

    move-result-wide v3

    move-wide v13, v3

    :goto_a
    const/4 v8, 0x4

    move-object/from16 v3, v19

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    if-eqz v5, :cond_13

    .line 74
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    move v3, v1

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v3, 0x1

    :goto_c
    if-eqz v3, :cond_16

    if-eqz v6, :cond_14

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    if-eqz v1, :cond_16

    .line 75
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "Both orderStatus and itemName cannot be empty"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 77
    :cond_16
    new-instance v1, Le/a/c/r/b$c;

    if-eqz v10, :cond_18

    .line 78
    iget v3, v10, Le/a/c/r/j/m;->a:I

    if-nez v3, :cond_18

    .line 79
    sget-object v3, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->ICON:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_d

    .line 80
    :cond_17
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "icon empty for delivery for SenderId : "

    invoke-static {v3, v15}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_18
    :goto_d
    const-wide/16 v3, -0x1

    cmp-long v3, v13, v3

    if-nez v3, :cond_1a

    .line 82
    sget-object v3, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_e

    .line 83
    :cond_19
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 84
    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "messageId is -1 for delivery for SenderId : "

    invoke-static {v3, v15}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_12

    .line 86
    :cond_1a
    :goto_e
    invoke-static {v15}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1c

    sget-object v3, Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/DeliveryUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_f

    .line 87
    :cond_1b
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "senderId blank for delivery"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    :goto_f
    const/4 v2, 0x0

    .line 89
    invoke-static {v6}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v9, v6

    goto :goto_10

    :cond_1d
    move-object v9, v2

    .line 90
    :goto_10
    invoke-static {v5}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v8, v5

    goto :goto_11

    :cond_1e
    move-object v8, v2

    .line 91
    :goto_11
    invoke-static {v7}, Le/a/m0/a1$k;->D0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v2, v7

    :cond_1f
    move-object v7, v1

    move-object v3, v10

    move-object v10, v2

    move-object/from16 v16, v3

    .line 92
    invoke-direct/range {v7 .. v18}, Le/a/c/r/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Le/a/c/r/j/m;ZLe/a/c/r/j/a;)V

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    :goto_12
    move-object v1, v3

    :goto_13
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
