.class public final Le/a/c/f/e;
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

    iput-object p1, p0, Le/a/c/f/e;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/c/f/e;->b:Le/a/c/a/i/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$c;Ljava/util/List;)Le/a/c/r/b$d;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain$c;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/binders/utils/EventUiProperties;",
            ">;)",
            "Le/a/c/r/b$d;"
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
    iget-object v4, v0, Le/a/c/f/e;->a:Le/a/c/b/j;

    invoke-interface {v4}, Le/a/c/b/j;->h()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, ""

    const-string v5, "senderId"

    .line 2
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventStatus"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "title"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :goto_0
    const/16 v20, 0x0

    move/from16 v36, v5

    move-wide/from16 v22, v7

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move-object/from16 v28, v18

    move-object/from16 v5, v19

    move-object/from16 v37, v20

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/insights/binders/utils/EventUiProperties;

    .line 4
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, "dose_due"

    const v9, -0x596a70e5

    const-string v10, "scheduled"

    const-string v11, "complete"

    const-string v12, "dose_complete"

    const-string v13, "cancelled"

    const-string v14, "value"

    const v15, 0x1c682951

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v9, :cond_1

    const v9, -0x23bacec7

    if-eq v8, v9, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    :goto_2
    new-instance v7, Le/a/c/r/j/a$e;

    const-string v8, "Download Certificate"

    const-string v9, "https://www.cowin.gov.in"

    invoke-direct {v7, v8, v9}, Le/a/c/r/j/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v37, v7

    goto :goto_1

    :cond_2
    :goto_3
    move-object/from16 v19, v5

    move-wide/from16 v7, v22

    move-object/from16 v16, v25

    move-object/from16 v17, v26

    move-object/from16 v9, v27

    move-object/from16 v18, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move/from16 v5, v36

    goto/16 :goto_0

    .line 8
    :pswitch_1
    iget-boolean v7, v1, Lcom/truecaller/insights/models/InsightsDomain$c;->q:Z

    move/from16 v36, v7

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v9, :cond_4

    const v9, -0x23bacec7

    if-eq v8, v9, :cond_3

    goto :goto_5

    .line 10
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 11
    :goto_4
    sget v7, Lcom/truecaller/insights/R$drawable;->ic_big_green_check_mark:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    goto/16 :goto_1

    :cond_5
    :goto_5
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 12
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x9943f53

    if-eq v8, v9, :cond_7

    if-eq v8, v15, :cond_6

    goto :goto_7

    .line 13
    :cond_6
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Le/a/c/f/e;->b:Le/a/c/a/i/e;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget v7, Lcom/truecaller/insights/ui/R$drawable;->ic_no_tick:I

    .line 16
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    .line 17
    :cond_7
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Le/a/c/f/e;->b:Le/a/c/a/i/e;

    .line 18
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget v7, Lcom/truecaller/insights/ui/R$drawable;->ic_yes_tick:I

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_6
    move-object/from16 v34, v7

    goto/16 :goto_1

    :cond_8
    :goto_7
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 21
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v9, :cond_b

    const v8, -0x23bacec7

    if-eq v7, v8, :cond_a

    if-eq v7, v15, :cond_9

    goto :goto_9

    .line 22
    :cond_9
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Le/a/c/r/j/m;

    .line 23
    iget-object v7, v0, Le/a/c/f/e;->b:Le/a/c/a/i/e;

    .line 24
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget v7, Lcom/truecaller/insights/ui/R$drawable;->ic_no_tick:I

    .line 26
    sget-object v8, Le/a/c/f/k/c;->d:Le/a/c/f/k/c;

    sget-object v8, Le/a/c/f/k/c;->a:Ls1/k;

    .line 27
    iget-object v9, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 28
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 29
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 30
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 31
    invoke-direct {v6, v7, v9, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto/16 :goto_1

    .line 32
    :cond_a
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_b
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_8
    new-instance v6, Le/a/c/r/j/m;

    .line 33
    iget-object v7, v0, Le/a/c/f/e;->b:Le/a/c/a/i/e;

    .line 34
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget v7, Lcom/truecaller/insights/ui/R$drawable;->ic_yes_tick:I

    .line 36
    sget-object v8, Le/a/c/f/k/c;->d:Le/a/c/f/k/c;

    sget-object v8, Le/a/c/f/k/c;->c:Ls1/k;

    .line 37
    iget-object v9, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 38
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 39
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 40
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 41
    invoke-direct {v6, v7, v9, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto/16 :goto_1

    .line 42
    :cond_c
    :goto_9
    new-instance v6, Le/a/c/r/j/m;

    .line 43
    sget v7, Lcom/truecaller/insights/R$drawable;->ic_vaccine_small:I

    .line 44
    sget-object v8, Le/a/c/f/k/c;->d:Le/a/c/f/k/c;

    sget-object v8, Le/a/c/f/k/c;->b:Ls1/k;

    .line 45
    iget-object v9, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 46
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 47
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 48
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 49
    invoke-direct {v6, v7, v9, v8}, Le/a/c/r/j/m;-><init>(III)V

    goto/16 :goto_1

    .line 50
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_e

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_f

    const/16 v8, 0xf

    invoke-static {v7, v8}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1

    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 51
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->g()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    const/4 v7, 0x1

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 52
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->a()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 53
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_10

    .line 54
    :sswitch_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_f

    .line 55
    :sswitch_1
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p1}, Le/a/c/f/e;->c(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    goto :goto_11

    .line 56
    :sswitch_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 57
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/e;->c(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    const-string v8, " \u2022 "

    .line 58
    invoke-static {v7, v8}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->b()Lw3/b/a/b;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 60
    sget-object v9, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v9}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v9

    new-instance v10, Lw3/b/a/b;

    invoke-direct {v10, v8}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_14
    const/4 v8, 0x0

    .line 61
    :goto_e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    goto :goto_11

    .line 62
    :sswitch_3
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_f

    :sswitch_4
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 63
    :goto_f
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/e;->b(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    goto :goto_11

    :cond_15
    :goto_10
    move-object v7, v4

    .line 64
    :goto_11
    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v29, v7

    goto/16 :goto_1

    .line 65
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto :goto_15

    .line 66
    :sswitch_5
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 67
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/e;->c(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    const-string v8, "Dose 2 is due on "

    .line 68
    invoke-static {v8, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    goto :goto_16

    :cond_16
    const-string v7, "Dose 2 is due"

    goto :goto_16

    .line 69
    :sswitch_6
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Vaccination cancelled"

    goto :goto_16

    .line 70
    :sswitch_7
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Vaccination booked"

    goto :goto_16

    .line 71
    :sswitch_8
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Fully Vaccinated"

    goto :goto_16

    .line 72
    :sswitch_9
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Vaccinated with "

    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    const/4 v9, 0x1

    goto :goto_12

    :cond_17
    const/4 v9, 0x0

    :goto_12
    if-eqz v9, :cond_18

    goto :goto_13

    :cond_18
    const/4 v8, 0x0

    :goto_13
    if-eqz v8, :cond_19

    goto :goto_14

    :cond_19
    const-string v8, "Dose"

    .line 74
    :goto_14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    :cond_1a
    :goto_15
    move-object v7, v4

    .line 75
    :goto_16
    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v7

    goto/16 :goto_1

    .line 76
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x9943f53

    if-eq v8, v9, :cond_1c

    if-eq v8, v15, :cond_1b

    goto :goto_18

    .line 77
    :cond_1b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    :cond_1c
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 78
    :goto_17
    invoke-virtual/range {p0 .. p1}, Le/a/c/f/e;->b(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    :cond_1d
    :goto_18
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 79
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->c()Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v7

    goto/16 :goto_1

    .line 81
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->e()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v25, v7

    goto/16 :goto_1

    .line 83
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->getSender()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->getMsgId()J

    move-result-wide v22

    goto/16 :goto_1

    .line 86
    :cond_1e
    invoke-static/range {v28 .. v28}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 87
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "title cannot be empty for event"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 89
    :cond_1f
    new-instance v1, Le/a/c/r/b$d;

    const-wide/16 v3, -0x1

    cmp-long v3, v22, v3

    if-nez v3, :cond_21

    .line 90
    sget-object v3, Lcom/truecaller/insights/binders/utils/EventUiProperties;->MESSAGE_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_19

    .line 91
    :cond_20
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 92
    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "messageId is -1 for event for SenderId : "

    invoke-static {v3, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1c

    .line 94
    :cond_21
    :goto_19
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_23

    sget-object v3, Lcom/truecaller/insights/binders/utils/EventUiProperties;->SENDER_ID:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_1a

    .line 95
    :cond_22
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "senderId blank for event"

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1c

    :cond_23
    :goto_1a
    if-eqz v6, :cond_25

    .line 97
    iget v3, v6, Le/a/c/r/j/m;->a:I

    if-nez v3, :cond_25

    .line 98
    sget-object v3, Lcom/truecaller/insights/binders/utils/EventUiProperties;->PRIMARY_ICON:Lcom/truecaller/insights/binders/utils/EventUiProperties;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_1b

    .line 99
    :cond_24
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    new-instance v2, Lcom/truecaller/log/UnmutedException$j;

    const-string v3, "primary icon empty for event for SenderId : "

    invoke-static {v3, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/truecaller/log/UnmutedException$j;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v1, v2, v3}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1d

    :cond_25
    :goto_1b
    move-object/from16 v21, v1

    move-object/from16 v24, v5

    move-object/from16 v33, v6

    .line 101
    invoke-direct/range {v21 .. v37}, Le/a/c/r/b$d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/m;Ljava/lang/Integer;Ljava/lang/Integer;ZLe/a/c/r/j/a;)V

    goto :goto_1d

    :cond_26
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
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

    :sswitch_data_0
    .sparse-switch
        -0x596a70e5 -> :sswitch_4
        -0x23bacec7 -> :sswitch_3
        -0x9943f53 -> :sswitch_2
        0x1c682951 -> :sswitch_1
        0x4dc282d2 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x596a70e5 -> :sswitch_9
        -0x23bacec7 -> :sswitch_8
        -0x9943f53 -> :sswitch_7
        0x1c682951 -> :sswitch_6
        0x4dc282d2 -> :sswitch_5
    .end sparse-switch
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const/16 v0, 0xf

    invoke-static {p1, v0}, Ls1/f0/w;->n0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final c(Lcom/truecaller/insights/models/InsightsDomain$c;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$c;->b()Lw3/b/a/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/b/a/e0/a;->q()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    rem-int/lit8 v1, v1, 0xa

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "th"

    goto :goto_1

    :cond_1
    const-string v1, "rd"

    goto :goto_1

    :cond_2
    const-string v1, "nd"

    goto :goto_1

    :cond_3
    const-string v1, "st"

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/b/a/b;->A()Lw3/b/a/b$a;

    move-result-object p1

    const-string v1, "dateTime.monthOfYear()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw3/b/a/h0/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
