.class public final Le/a/c/y/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/c/y/k;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/c/y/k;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCardSeedManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/c/y/n/f;->b:Le/a/c/y/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$f;)Le/a/c/y/l;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "domain"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    const-string v6, "train"

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v7, " \u2794 "

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "(this as java.lang.String).toUpperCase()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4, v3}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v3}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v4

    .line 5
    :goto_1
    new-instance v2, Le/a/c/y/l;

    .line 6
    invoke-virtual/range {p0 .. p1}, Le/a/c/y/n/f;->e(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Flight:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    :goto_2
    move-object v9, v7

    goto :goto_5

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v3

    :goto_4
    if-eqz v7, :cond_5

    .line 8
    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Train:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual/range {p0 .. p1}, Le/a/c/y/n/f;->d(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bus:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_2

    .line 10
    :cond_6
    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Travel:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_2

    .line 11
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v7

    const/4 v11, -0x1

    if-eqz v7, :cond_7

    invoke-virtual {v0, v7}, Le/a/c/y/n/f;->b(Lw3/b/a/b;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-gt v7, v11, :cond_7

    .line 12
    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->Travelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto/16 :goto_6

    .line 13
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_7

    .line 14
    :sswitch_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_6

    :sswitch_1
    const-string v11, "alert"

    .line 15
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x5185d186

    if-eq v11, v12, :cond_a

    const v12, 0x5b0b983

    if-eq v11, v12, :cond_9

    const v12, 0x1e1abdca

    if-eq v11, v12, :cond_8

    goto :goto_7

    :cond_8
    const-string v11, "reschedule"

    .line 16
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelRescheduled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_6

    :cond_9
    const-string v11, "delay"

    .line 17
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelDelayed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_6

    :cond_a
    const-string v11, "cancel"

    .line 18
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelCancelled:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_6

    :sswitch_2
    const-string v11, "bus"

    .line 19
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    goto :goto_6

    :sswitch_3
    const-string v11, "flight"

    .line 20
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/truecaller/insights/smartcards/SmartCardStatus;->TravelConfirmed:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    :goto_6
    move-object v11, v7

    goto :goto_8

    :cond_b
    :goto_7
    move-object v11, v4

    :goto_8
    const/4 v7, 0x2

    if-eqz v10, :cond_d

    .line 21
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    move v12, v3

    goto :goto_9

    :cond_c
    move v12, v8

    :goto_9
    if-eqz v12, :cond_d

    const/16 v12, 0x2794

    invoke-static {v10, v12, v8, v7}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x6

    .line 22
    invoke-static {v10, v12, v8, v8, v7}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    add-int/lit8 v12, v7, 0x1

    .line 23
    new-instance v13, Le/a/c/r/j/b0;

    .line 24
    sget v14, Lcom/truecaller/insights/R$attr;->tcx_textTertiary:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 25
    invoke-direct {v13, v7, v12, v14}, Le/a/c/r/j/b0;-><init>(IILjava/lang/Integer;)V

    goto :goto_a

    :cond_d
    move-object v13, v4

    .line 26
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v0, v7}, Le/a/c/y/n/f;->b(Lw3/b/a/b;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v7

    invoke-virtual {v7}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object v7

    const-string v12, "deptDateTime.toLocalDate()"

    invoke-static {v7, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 28
    :cond_e
    iget-object v7, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/insights/R$string;->travel_date_tomorrow:I

    new-array v14, v8, [Ljava/lang/Object;

    invoke-interface {v7, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 29
    :cond_f
    iget-object v7, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/insights/R$string;->travel_date_today:I

    new-array v14, v8, [Ljava/lang/Object;

    invoke-interface {v7, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_b
    const-string v12, "when (daysFromToday) {\n \u2026nReadableDate()\n        }"

    .line 30
    invoke-static {v7, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v14

    invoke-virtual {v14}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v14

    invoke-static {v12, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_c

    .line 32
    :cond_10
    sget-object v12, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v12}, Lcom/truecaller/insights/utils/DateFormat;->getPattern()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v14

    invoke-virtual {v12, v14}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v12

    const-string v14, ", "

    .line 33
    invoke-static {v7, v14, v12}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_c
    move-object v14, v7

    goto :goto_d

    :cond_11
    move-object v14, v4

    :goto_d
    const/4 v7, 0x4

    new-array v7, v7, [Le/a/c/y/j;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Le/a/c/y/n/f;->c(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/y/j;

    move-result-object v12

    aput-object v12, v7, v8

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->e()Ljava/lang/String;

    move-result-object v12

    .line 36
    invoke-static {v12}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_12

    move-object v4, v12

    :cond_12
    if-eqz v4, :cond_13

    .line 37
    new-instance v3, Le/a/c/y/j;

    iget-object v12, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v15, Lcom/truecaller/insights/R$string;->travel_info_pnr:I

    move-object/from16 v16, v14

    new-array v14, v8, [Ljava/lang/Object;

    invoke-interface {v12, v15, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "resourceProvider.getStri\u2026R.string.travel_info_pnr)"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v12, v4}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_e

    :cond_13
    move-object/from16 v16, v14

    const/4 v4, 0x0

    move-object/from16 v23, v4

    move v4, v3

    move-object/from16 v3, v23

    :goto_e
    aput-object v3, v7, v4

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p1}, Le/a/c/y/n/f;->d(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 39
    new-instance v3, Le/a/c/y/j;

    iget-object v4, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/insights/R$string;->travel_info_boarding_point:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getStri\u2026avel_info_boarding_point)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v6, v12}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_14
    const/4 v3, 0x1

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_15

    .line 41
    new-instance v4, Le/a/c/y/j;

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_passenger:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ng.travel_info_passenger)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->f()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v6, v12, v3}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_11

    .line 42
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 43
    :cond_16
    new-instance v3, Le/a/c/y/j;

    iget-object v4, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_class:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v4, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "resourceProvider.getStri\u2026string.travel_info_class)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v6

    const-string v12, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v6, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v6}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v14, "Locale.getDefault()"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v6, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v12, 0x64f

    if-eq v6, v12, :cond_1a

    const/16 v12, 0x661

    if-eq v6, v12, :cond_19

    const/16 v12, 0x66e

    if-eq v6, v12, :cond_18

    const/16 v12, 0xa59

    if-eq v6, v12, :cond_17

    goto :goto_f

    :cond_17
    const-string v6, "SL"

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_sleeper:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ring.travel_info_sleeper)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_18
    const-string v6, "3A"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_third_ac:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ing.travel_info_third_ac)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    const-string v6, "2S"

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_second_sitting:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026avel_info_second_sitting)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :cond_1a
    const-string v6, "2A"

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_info_second_ac:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ng.travel_info_second_ac)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    .line 49
    :cond_1b
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v6, v12}, Le/a/c/p/a;->o3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 50
    :goto_10
    invoke-direct {v3, v4, v5}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x2

    aput-object v3, v7, v4

    const/4 v3, 0x3

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->g()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_1e

    .line 53
    new-instance v5, Le/a/c/y/j;

    iget-object v6, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v12, Lcom/truecaller/insights/R$string;->travel_info_seat:I

    new-array v14, v8, [Ljava/lang/Object;

    invoke-interface {v6, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "resourceProvider.getStri\u2026.string.travel_info_seat)"

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v4}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1e
    const/4 v5, 0x0

    :goto_13
    aput-object v5, v7, v3

    .line 54
    invoke-static {v7}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual/range {p0 .. p1}, Le/a/c/y/n/f;->e(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_14

    :cond_1f
    move v4, v8

    :goto_14
    if-eqz v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "webchckin"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->c()Lw3/b/a/b;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v0, v4}, Le/a/c/y/n/f;->b(Lw3/b/a/b;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_23

    .line 58
    new-instance v4, Le/a/c/y/i$g;

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_action_web_check_in:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026avel_action_web_check_in)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 59
    :cond_20
    invoke-virtual/range {p0 .. p1}, Le/a/c/y/n/f;->d(Lcom/truecaller/insights/models/InsightsDomain$f;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_15

    :cond_21
    move v4, v8

    :goto_15
    if-eqz v4, :cond_22

    .line 60
    new-instance v4, Le/a/c/y/i$d;

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_action_contact:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026ng.travel_action_contact)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/c/y/i$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 61
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "track"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 62
    new-instance v4, Le/a/c/y/i$g;

    iget-object v5, v0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v6, Lcom/truecaller/insights/R$string;->travel_action_track_journey:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026vel_action_track_journey)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/c/y/i$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_23
    :goto_16
    invoke-static {v3}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 64
    invoke-static {v1, v4, v5}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 65
    iget-object v4, v1, Lcom/truecaller/insights/models/InsightsDomain$f;->C:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 66
    iget-object v5, v0, Le/a/c/y/n/f;->b:Le/a/c/y/k;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Le/a/c/y/k;->a(Ljava/lang/String;)I

    move-result v12

    const/16 v22, 0x1980

    move-object v7, v2

    move-object v8, v9

    move-object v9, v11

    move-object v11, v4

    move-object/from16 v14, v16

    move-object/from16 v16, v3

    .line 67
    invoke-direct/range {v7 .. v22}, Le/a/c/y/l;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Lcom/truecaller/insights/smartcards/SmartCardStatus;Ljava/lang/String;Ljava/lang/String;ILe/a/c/r/j/b0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Le/a/c/y/i;ZLjava/lang/String;I)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Lw3/b/a/b;)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lw3/b/a/b;->L()Lw3/b/a/p;

    move-result-object p1

    .line 2
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object v0

    const-string v1, "LocalDate.now()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object p1

    const-string v0, "Days.daysBetween(currentDate, date)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget p1, p1, Lw3/b/a/e0/i;->a:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/y/j;
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v0, "train"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->m()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 4
    new-instance p2, Le/a/c/y/j;

    iget-object v0, p0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/insights/R$string;->travel_info_train_no:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ing.travel_info_train_no)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    const-string v0, "alert"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p0, p1, p2}, Le/a/c/y/n/f;->c(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Le/a/c/y/j;

    move-result-object v2

    goto :goto_5

    :sswitch_2
    const-string v0, "bus"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->l()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 10
    new-instance p2, Le/a/c/y/j;

    iget-object v0, p0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/insights/R$string;->travel_info_bus:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026R.string.travel_info_bus)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_3
    const-string v0, "flight"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->l()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_4

    .line 13
    new-instance p2, Le/a/c/y/j;

    iget-object v0, p0, Le/a/c/y/n/f;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/insights/R$string;->travel_info_flight:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026tring.travel_info_flight)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Le/a/c/y/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v2, p2

    :cond_4
    :goto_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Lcom/truecaller/insights/models/InsightsDomain$f;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bus"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final e(Lcom/truecaller/insights/models/InsightsDomain$f;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flight"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
